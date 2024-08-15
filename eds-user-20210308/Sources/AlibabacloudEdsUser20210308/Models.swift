import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class GroupResources : Tea.TeaModel {
    public var region: String?

    public var resourceId: String?

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
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
    }
}

public class WaIdPermissions : Tea.TeaModel {
    public var code: String?

    public var isBasicChild: Bool?

    public var name: String?

    public var subPermissions: [WaIdPermissions]?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.isBasicChild != nil {
            map["IsBasicChild"] = self.isBasicChild!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.subPermissions != nil {
            var tmp : [Any] = []
            for k in self.subPermissions! {
                tmp.append(k.toMap())
            }
            map["SubPermissions"] = tmp
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("IsBasicChild") {
            self.isBasicChild = dict["IsBasicChild"] as! Bool
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("SubPermissions") {
            var tmp : [WaIdPermissions] = []
            for v in dict["SubPermissions"] as! [Any] {
                var model = WaIdPermissions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.subPermissions = tmp
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class CheckUsedPropertyRequest : Tea.TeaModel {
    public var propertyId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.propertyId != nil {
            map["PropertyId"] = self.propertyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PropertyId") {
            self.propertyId = dict["PropertyId"] as! Int64
        }
    }
}

public class CheckUsedPropertyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var useCount: Int64?

    public override init() {
        super.init()
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
        if self.useCount != nil {
            map["UseCount"] = self.useCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UseCount") {
            self.useCount = dict["UseCount"] as! Int64
        }
    }
}

public class CheckUsedPropertyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckUsedPropertyResponseBody?

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
            var model = CheckUsedPropertyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckUsedPropertyValueRequest : Tea.TeaModel {
    public var propertyId: Int64?

    public var propertyValueId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.propertyId != nil {
            map["PropertyId"] = self.propertyId!
        }
        if self.propertyValueId != nil {
            map["PropertyValueId"] = self.propertyValueId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PropertyId") {
            self.propertyId = dict["PropertyId"] as! Int64
        }
        if dict.keys.contains("PropertyValueId") {
            self.propertyValueId = dict["PropertyValueId"] as! Int64
        }
    }
}

public class CheckUsedPropertyValueResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var useCount: Int64?

    public override init() {
        super.init()
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
        if self.useCount != nil {
            map["UseCount"] = self.useCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UseCount") {
            self.useCount = dict["UseCount"] as! Int64
        }
    }
}

public class CheckUsedPropertyValueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckUsedPropertyValueResponseBody?

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
            var model = CheckUsedPropertyValueResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreatePropertyRequest : Tea.TeaModel {
    public var propertyKey: String?

    public var propertyValues: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.propertyKey != nil {
            map["PropertyKey"] = self.propertyKey!
        }
        if self.propertyValues != nil {
            map["PropertyValues"] = self.propertyValues!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PropertyKey") {
            self.propertyKey = dict["PropertyKey"] as! String
        }
        if dict.keys.contains("PropertyValues") {
            self.propertyValues = dict["PropertyValues"] as! [String]
        }
    }
}

public class CreatePropertyResponseBody : Tea.TeaModel {
    public class CreateResult : Tea.TeaModel {
        public class SavePropertyValueModel : Tea.TeaModel {
            public class FailedPropertyValues : Tea.TeaModel {
                public var errorCode: String?

                public var errorMessage: String?

                public var propertyId: Int64?

                public var propertyValue: String?

                public override init() {
                    super.init()
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
                    if self.errorMessage != nil {
                        map["ErrorMessage"] = self.errorMessage!
                    }
                    if self.propertyId != nil {
                        map["PropertyId"] = self.propertyId!
                    }
                    if self.propertyValue != nil {
                        map["PropertyValue"] = self.propertyValue!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ErrorCode") {
                        self.errorCode = dict["ErrorCode"] as! String
                    }
                    if dict.keys.contains("ErrorMessage") {
                        self.errorMessage = dict["ErrorMessage"] as! String
                    }
                    if dict.keys.contains("PropertyId") {
                        self.propertyId = dict["PropertyId"] as! Int64
                    }
                    if dict.keys.contains("PropertyValue") {
                        self.propertyValue = dict["PropertyValue"] as! String
                    }
                }
            }
            public class SavePropertyValues : Tea.TeaModel {
                public var propertyValue: String?

                public var propertyValueId: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.propertyValue != nil {
                        map["PropertyValue"] = self.propertyValue!
                    }
                    if self.propertyValueId != nil {
                        map["PropertyValueId"] = self.propertyValueId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("PropertyValue") {
                        self.propertyValue = dict["PropertyValue"] as! String
                    }
                    if dict.keys.contains("PropertyValueId") {
                        self.propertyValueId = dict["PropertyValueId"] as! Int64
                    }
                }
            }
            public var failedPropertyValues: [CreatePropertyResponseBody.CreateResult.SavePropertyValueModel.FailedPropertyValues]?

            public var savePropertyValues: [CreatePropertyResponseBody.CreateResult.SavePropertyValueModel.SavePropertyValues]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.failedPropertyValues != nil {
                    var tmp : [Any] = []
                    for k in self.failedPropertyValues! {
                        tmp.append(k.toMap())
                    }
                    map["FailedPropertyValues"] = tmp
                }
                if self.savePropertyValues != nil {
                    var tmp : [Any] = []
                    for k in self.savePropertyValues! {
                        tmp.append(k.toMap())
                    }
                    map["SavePropertyValues"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FailedPropertyValues") {
                    var tmp : [CreatePropertyResponseBody.CreateResult.SavePropertyValueModel.FailedPropertyValues] = []
                    for v in dict["FailedPropertyValues"] as! [Any] {
                        var model = CreatePropertyResponseBody.CreateResult.SavePropertyValueModel.FailedPropertyValues()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.failedPropertyValues = tmp
                }
                if dict.keys.contains("SavePropertyValues") {
                    var tmp : [CreatePropertyResponseBody.CreateResult.SavePropertyValueModel.SavePropertyValues] = []
                    for v in dict["SavePropertyValues"] as! [Any] {
                        var model = CreatePropertyResponseBody.CreateResult.SavePropertyValueModel.SavePropertyValues()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.savePropertyValues = tmp
                }
            }
        }
        public var propertyId: Int64?

        public var propertyKey: String?

        public var savePropertyValueModel: CreatePropertyResponseBody.CreateResult.SavePropertyValueModel?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.savePropertyValueModel?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.propertyId != nil {
                map["PropertyId"] = self.propertyId!
            }
            if self.propertyKey != nil {
                map["PropertyKey"] = self.propertyKey!
            }
            if self.savePropertyValueModel != nil {
                map["SavePropertyValueModel"] = self.savePropertyValueModel?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PropertyId") {
                self.propertyId = dict["PropertyId"] as! Int64
            }
            if dict.keys.contains("PropertyKey") {
                self.propertyKey = dict["PropertyKey"] as! String
            }
            if dict.keys.contains("SavePropertyValueModel") {
                var model = CreatePropertyResponseBody.CreateResult.SavePropertyValueModel()
                model.fromMap(dict["SavePropertyValueModel"] as! [String: Any])
                self.savePropertyValueModel = model
            }
        }
    }
    public var createResult: CreatePropertyResponseBody.CreateResult?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.createResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createResult != nil {
            map["CreateResult"] = self.createResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateResult") {
            var model = CreatePropertyResponseBody.CreateResult()
            model.fromMap(dict["CreateResult"] as! [String: Any])
            self.createResult = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreatePropertyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePropertyResponseBody?

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
            var model = CreatePropertyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateUsersRequest : Tea.TeaModel {
    public class Users : Tea.TeaModel {
        public var email: String?

        public var endUserId: String?

        public var orgId: String?

        public var ownerType: String?

        public var password: String?

        public var phone: String?

        public var realNickName: String?

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
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.endUserId != nil {
                map["EndUserId"] = self.endUserId!
            }
            if self.orgId != nil {
                map["OrgId"] = self.orgId!
            }
            if self.ownerType != nil {
                map["OwnerType"] = self.ownerType!
            }
            if self.password != nil {
                map["Password"] = self.password!
            }
            if self.phone != nil {
                map["Phone"] = self.phone!
            }
            if self.realNickName != nil {
                map["RealNickName"] = self.realNickName!
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Email") {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("EndUserId") {
                self.endUserId = dict["EndUserId"] as! String
            }
            if dict.keys.contains("OrgId") {
                self.orgId = dict["OrgId"] as! String
            }
            if dict.keys.contains("OwnerType") {
                self.ownerType = dict["OwnerType"] as! String
            }
            if dict.keys.contains("Password") {
                self.password = dict["Password"] as! String
            }
            if dict.keys.contains("Phone") {
                self.phone = dict["Phone"] as! String
            }
            if dict.keys.contains("RealNickName") {
                self.realNickName = dict["RealNickName"] as! String
            }
            if dict.keys.contains("Remark") {
                self.remark = dict["Remark"] as! String
            }
        }
    }
    public var autoLockTime: String?

    public var isLocalAdmin: Bool?

    public var password: String?

    public var passwordExpireDays: String?

    public var users: [CreateUsersRequest.Users]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoLockTime != nil {
            map["AutoLockTime"] = self.autoLockTime!
        }
        if self.isLocalAdmin != nil {
            map["IsLocalAdmin"] = self.isLocalAdmin!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.passwordExpireDays != nil {
            map["PasswordExpireDays"] = self.passwordExpireDays!
        }
        if self.users != nil {
            var tmp : [Any] = []
            for k in self.users! {
                tmp.append(k.toMap())
            }
            map["Users"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoLockTime") {
            self.autoLockTime = dict["AutoLockTime"] as! String
        }
        if dict.keys.contains("IsLocalAdmin") {
            self.isLocalAdmin = dict["IsLocalAdmin"] as! Bool
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("PasswordExpireDays") {
            self.passwordExpireDays = dict["PasswordExpireDays"] as! String
        }
        if dict.keys.contains("Users") {
            var tmp : [CreateUsersRequest.Users] = []
            for v in dict["Users"] as! [Any] {
                var model = CreateUsersRequest.Users()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.users = tmp
        }
    }
}

public class CreateUsersResponseBody : Tea.TeaModel {
    public class CreateResult : Tea.TeaModel {
        public class CreatedUsers : Tea.TeaModel {
            public var email: String?

            public var endUserId: String?

            public var phone: String?

            public var realNickName: String?

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
                if self.email != nil {
                    map["Email"] = self.email!
                }
                if self.endUserId != nil {
                    map["EndUserId"] = self.endUserId!
                }
                if self.phone != nil {
                    map["Phone"] = self.phone!
                }
                if self.realNickName != nil {
                    map["RealNickName"] = self.realNickName!
                }
                if self.remark != nil {
                    map["Remark"] = self.remark!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Email") {
                    self.email = dict["Email"] as! String
                }
                if dict.keys.contains("EndUserId") {
                    self.endUserId = dict["EndUserId"] as! String
                }
                if dict.keys.contains("Phone") {
                    self.phone = dict["Phone"] as! String
                }
                if dict.keys.contains("RealNickName") {
                    self.realNickName = dict["RealNickName"] as! String
                }
                if dict.keys.contains("Remark") {
                    self.remark = dict["Remark"] as! String
                }
            }
        }
        public class FailedUsers : Tea.TeaModel {
            public var email: String?

            public var endUserId: String?

            public var errorCode: String?

            public var errorMessage: String?

            public var phone: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.email != nil {
                    map["Email"] = self.email!
                }
                if self.endUserId != nil {
                    map["EndUserId"] = self.endUserId!
                }
                if self.errorCode != nil {
                    map["ErrorCode"] = self.errorCode!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                if self.phone != nil {
                    map["Phone"] = self.phone!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Email") {
                    self.email = dict["Email"] as! String
                }
                if dict.keys.contains("EndUserId") {
                    self.endUserId = dict["EndUserId"] as! String
                }
                if dict.keys.contains("ErrorCode") {
                    self.errorCode = dict["ErrorCode"] as! String
                }
                if dict.keys.contains("ErrorMessage") {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
                if dict.keys.contains("Phone") {
                    self.phone = dict["Phone"] as! String
                }
            }
        }
        public var createdUsers: [CreateUsersResponseBody.CreateResult.CreatedUsers]?

        public var failedUsers: [CreateUsersResponseBody.CreateResult.FailedUsers]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdUsers != nil {
                var tmp : [Any] = []
                for k in self.createdUsers! {
                    tmp.append(k.toMap())
                }
                map["CreatedUsers"] = tmp
            }
            if self.failedUsers != nil {
                var tmp : [Any] = []
                for k in self.failedUsers! {
                    tmp.append(k.toMap())
                }
                map["FailedUsers"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreatedUsers") {
                var tmp : [CreateUsersResponseBody.CreateResult.CreatedUsers] = []
                for v in dict["CreatedUsers"] as! [Any] {
                    var model = CreateUsersResponseBody.CreateResult.CreatedUsers()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.createdUsers = tmp
            }
            if dict.keys.contains("FailedUsers") {
                var tmp : [CreateUsersResponseBody.CreateResult.FailedUsers] = []
                for v in dict["FailedUsers"] as! [Any] {
                    var model = CreateUsersResponseBody.CreateResult.FailedUsers()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.failedUsers = tmp
            }
        }
    }
    public var createResult: CreateUsersResponseBody.CreateResult?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.createResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createResult != nil {
            map["CreateResult"] = self.createResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateResult") {
            var model = CreateUsersResponseBody.CreateResult()
            model.fromMap(dict["CreateResult"] as! [String: Any])
            self.createResult = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateUsersResponseBody?

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
            var model = CreateUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteUserPropertyValueRequest : Tea.TeaModel {
    public var propertyId: Int64?

    public var propertyValueId: Int64?

    public var userId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.propertyId != nil {
            map["PropertyId"] = self.propertyId!
        }
        if self.propertyValueId != nil {
            map["PropertyValueId"] = self.propertyValueId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PropertyId") {
            self.propertyId = dict["PropertyId"] as! Int64
        }
        if dict.keys.contains("PropertyValueId") {
            self.propertyValueId = dict["PropertyValueId"] as! Int64
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! Int64
        }
    }
}

public class DeleteUserPropertyValueResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteUserPropertyValueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUserPropertyValueResponseBody?

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
            var model = DeleteUserPropertyValueResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeMfaDevicesRequest : Tea.TeaModel {
    public var adDomain: String?

    public var endUserIds: [String]?

    public var maxResults: Int64?

    public var nextToken: String?

    public var serialNumbers: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.adDomain != nil {
            map["AdDomain"] = self.adDomain!
        }
        if self.endUserIds != nil {
            map["EndUserIds"] = self.endUserIds!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.serialNumbers != nil {
            map["SerialNumbers"] = self.serialNumbers!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdDomain") {
            self.adDomain = dict["AdDomain"] as! String
        }
        if dict.keys.contains("EndUserIds") {
            self.endUserIds = dict["EndUserIds"] as! [String]
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int64
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("SerialNumbers") {
            self.serialNumbers = dict["SerialNumbers"] as! [String]
        }
    }
}

public class DescribeMfaDevicesResponseBody : Tea.TeaModel {
    public class MfaDevices : Tea.TeaModel {
        public var consecutiveFails: Int32?

        public var deviceType: String?

        public var email: String?

        public var endUserId: String?

        public var gmtEnabled: String?

        public var gmtUnlock: String?

        public var id: Int64?

        public var serialNumber: String?

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
            if self.consecutiveFails != nil {
                map["ConsecutiveFails"] = self.consecutiveFails!
            }
            if self.deviceType != nil {
                map["DeviceType"] = self.deviceType!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.endUserId != nil {
                map["EndUserId"] = self.endUserId!
            }
            if self.gmtEnabled != nil {
                map["GmtEnabled"] = self.gmtEnabled!
            }
            if self.gmtUnlock != nil {
                map["GmtUnlock"] = self.gmtUnlock!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.serialNumber != nil {
                map["SerialNumber"] = self.serialNumber!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConsecutiveFails") {
                self.consecutiveFails = dict["ConsecutiveFails"] as! Int32
            }
            if dict.keys.contains("DeviceType") {
                self.deviceType = dict["DeviceType"] as! String
            }
            if dict.keys.contains("Email") {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("EndUserId") {
                self.endUserId = dict["EndUserId"] as! String
            }
            if dict.keys.contains("GmtEnabled") {
                self.gmtEnabled = dict["GmtEnabled"] as! String
            }
            if dict.keys.contains("GmtUnlock") {
                self.gmtUnlock = dict["GmtUnlock"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("SerialNumber") {
                self.serialNumber = dict["SerialNumber"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var mfaDevices: [DescribeMfaDevicesResponseBody.MfaDevices]?

    public var nextToken: String?

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
        if self.mfaDevices != nil {
            var tmp : [Any] = []
            for k in self.mfaDevices! {
                tmp.append(k.toMap())
            }
            map["MfaDevices"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MfaDevices") {
            var tmp : [DescribeMfaDevicesResponseBody.MfaDevices] = []
            for v in dict["MfaDevices"] as! [Any] {
                var model = DescribeMfaDevicesResponseBody.MfaDevices()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.mfaDevices = tmp
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeMfaDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMfaDevicesResponseBody?

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
            var model = DescribeMfaDevicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeOrgsRequest : Tea.TeaModel {
    public var maxResults: Int64?

    public var nextToken: String?

    public var orgName: String?

    public var parentOrgId: String?

    public override init() {
        super.init()
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
        if self.orgName != nil {
            map["OrgName"] = self.orgName!
        }
        if self.parentOrgId != nil {
            map["ParentOrgId"] = self.parentOrgId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int64
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OrgName") {
            self.orgName = dict["OrgName"] as! String
        }
        if dict.keys.contains("ParentOrgId") {
            self.parentOrgId = dict["ParentOrgId"] as! String
        }
    }
}

public class DescribeOrgsResponseBody : Tea.TeaModel {
    public class Orgs : Tea.TeaModel {
        public var orgId: String?

        public var orgName: String?

        public var parentOrgId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.orgId != nil {
                map["OrgId"] = self.orgId!
            }
            if self.orgName != nil {
                map["OrgName"] = self.orgName!
            }
            if self.parentOrgId != nil {
                map["ParentOrgId"] = self.parentOrgId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OrgId") {
                self.orgId = dict["OrgId"] as! String
            }
            if dict.keys.contains("OrgName") {
                self.orgName = dict["OrgName"] as! String
            }
            if dict.keys.contains("ParentOrgId") {
                self.parentOrgId = dict["ParentOrgId"] as! String
            }
        }
    }
    public var nextToken: String?

    public var orgs: [DescribeOrgsResponseBody.Orgs]?

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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.orgs != nil {
            var tmp : [Any] = []
            for k in self.orgs! {
                tmp.append(k.toMap())
            }
            map["Orgs"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Orgs") {
            var tmp : [DescribeOrgsResponseBody.Orgs] = []
            for v in dict["Orgs"] as! [Any] {
                var model = DescribeOrgsResponseBody.Orgs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.orgs = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeOrgsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOrgsResponseBody?

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
            var model = DescribeOrgsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeUsersRequest : Tea.TeaModel {
    public var endUserIds: [String]?

    public var excludeEndUserIds: [String]?

    public var filter: String?

    public var groupId: String?

    public var maxResults: Int64?

    public var nextToken: String?

    public var orgId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endUserIds != nil {
            map["EndUserIds"] = self.endUserIds!
        }
        if self.excludeEndUserIds != nil {
            map["ExcludeEndUserIds"] = self.excludeEndUserIds!
        }
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndUserIds") {
            self.endUserIds = dict["EndUserIds"] as! [String]
        }
        if dict.keys.contains("ExcludeEndUserIds") {
            self.excludeEndUserIds = dict["ExcludeEndUserIds"] as! [String]
        }
        if dict.keys.contains("Filter") {
            self.filter = dict["Filter"] as! String
        }
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int64
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OrgId") {
            self.orgId = dict["OrgId"] as! String
        }
    }
}

public class DescribeUsersResponseBody : Tea.TeaModel {
    public class Users : Tea.TeaModel {
        public class Groups : Tea.TeaModel {
            public var groupId: String?

            public var groupName: String?

            public override init() {
                super.init()
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
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("GroupId") {
                    self.groupId = dict["GroupId"] as! String
                }
                if dict.keys.contains("GroupName") {
                    self.groupName = dict["GroupName"] as! String
                }
            }
        }
        public class Orgs : Tea.TeaModel {
            public var orgId: String?

            public var orgName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.orgId != nil {
                    map["OrgId"] = self.orgId!
                }
                if self.orgName != nil {
                    map["OrgName"] = self.orgName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("OrgId") {
                    self.orgId = dict["OrgId"] as! String
                }
                if dict.keys.contains("OrgName") {
                    self.orgName = dict["OrgName"] as! String
                }
            }
        }
        public var address: String?

        public var avatar: String?

        public var email: String?

        public var endUserId: String?

        public var groups: [DescribeUsersResponseBody.Users.Groups]?

        public var id: Int64?

        public var isTenantManager: Bool?

        public var jobNumber: String?

        public var nickName: String?

        public var orgId: String?

        public var orgs: [DescribeUsersResponseBody.Users.Orgs]?

        public var ownerType: String?

        public var phone: String?

        public var realNickName: String?

        public var remark: String?

        public var status: Int64?

        public var wyId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.address != nil {
                map["Address"] = self.address!
            }
            if self.avatar != nil {
                map["Avatar"] = self.avatar!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.endUserId != nil {
                map["EndUserId"] = self.endUserId!
            }
            if self.groups != nil {
                var tmp : [Any] = []
                for k in self.groups! {
                    tmp.append(k.toMap())
                }
                map["Groups"] = tmp
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.isTenantManager != nil {
                map["IsTenantManager"] = self.isTenantManager!
            }
            if self.jobNumber != nil {
                map["JobNumber"] = self.jobNumber!
            }
            if self.nickName != nil {
                map["NickName"] = self.nickName!
            }
            if self.orgId != nil {
                map["OrgId"] = self.orgId!
            }
            if self.orgs != nil {
                var tmp : [Any] = []
                for k in self.orgs! {
                    tmp.append(k.toMap())
                }
                map["Orgs"] = tmp
            }
            if self.ownerType != nil {
                map["OwnerType"] = self.ownerType!
            }
            if self.phone != nil {
                map["Phone"] = self.phone!
            }
            if self.realNickName != nil {
                map["RealNickName"] = self.realNickName!
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.wyId != nil {
                map["WyId"] = self.wyId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Address") {
                self.address = dict["Address"] as! String
            }
            if dict.keys.contains("Avatar") {
                self.avatar = dict["Avatar"] as! String
            }
            if dict.keys.contains("Email") {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("EndUserId") {
                self.endUserId = dict["EndUserId"] as! String
            }
            if dict.keys.contains("Groups") {
                var tmp : [DescribeUsersResponseBody.Users.Groups] = []
                for v in dict["Groups"] as! [Any] {
                    var model = DescribeUsersResponseBody.Users.Groups()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.groups = tmp
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("IsTenantManager") {
                self.isTenantManager = dict["IsTenantManager"] as! Bool
            }
            if dict.keys.contains("JobNumber") {
                self.jobNumber = dict["JobNumber"] as! String
            }
            if dict.keys.contains("NickName") {
                self.nickName = dict["NickName"] as! String
            }
            if dict.keys.contains("OrgId") {
                self.orgId = dict["OrgId"] as! String
            }
            if dict.keys.contains("Orgs") {
                var tmp : [DescribeUsersResponseBody.Users.Orgs] = []
                for v in dict["Orgs"] as! [Any] {
                    var model = DescribeUsersResponseBody.Users.Orgs()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.orgs = tmp
            }
            if dict.keys.contains("OwnerType") {
                self.ownerType = dict["OwnerType"] as! String
            }
            if dict.keys.contains("Phone") {
                self.phone = dict["Phone"] as! String
            }
            if dict.keys.contains("RealNickName") {
                self.realNickName = dict["RealNickName"] as! String
            }
            if dict.keys.contains("Remark") {
                self.remark = dict["Remark"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int64
            }
            if dict.keys.contains("WyId") {
                self.wyId = dict["WyId"] as! String
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var users: [DescribeUsersResponseBody.Users]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.users != nil {
            var tmp : [Any] = []
            for k in self.users! {
                tmp.append(k.toMap())
            }
            map["Users"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Users") {
            var tmp : [DescribeUsersResponseBody.Users] = []
            for v in dict["Users"] as! [Any] {
                var model = DescribeUsersResponseBody.Users()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.users = tmp
        }
    }
}

public class DescribeUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUsersResponseBody?

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
            var model = DescribeUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FilterUsersRequest : Tea.TeaModel {
    public class OrderParam : Tea.TeaModel {
        public var orderField: String?

        public var orderType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.orderField != nil {
                map["OrderField"] = self.orderField!
            }
            if self.orderType != nil {
                map["OrderType"] = self.orderType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OrderField") {
                self.orderField = dict["OrderField"] as! String
            }
            if dict.keys.contains("OrderType") {
                self.orderType = dict["OrderType"] as! String
            }
        }
    }
    public class PropertyFilterParam : Tea.TeaModel {
        public var propertyId: Int64?

        public var propertyValueIds: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.propertyId != nil {
                map["PropertyId"] = self.propertyId!
            }
            if self.propertyValueIds != nil {
                map["PropertyValueIds"] = self.propertyValueIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PropertyId") {
                self.propertyId = dict["PropertyId"] as! Int64
            }
            if dict.keys.contains("PropertyValueIds") {
                self.propertyValueIds = dict["PropertyValueIds"] as! String
            }
        }
    }
    public class PropertyKeyValueFilterParam : Tea.TeaModel {
        public var propertyKey: String?

        public var propertyValues: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.propertyKey != nil {
                map["PropertyKey"] = self.propertyKey!
            }
            if self.propertyValues != nil {
                map["PropertyValues"] = self.propertyValues!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PropertyKey") {
                self.propertyKey = dict["PropertyKey"] as! String
            }
            if dict.keys.contains("PropertyValues") {
                self.propertyValues = dict["PropertyValues"] as! String
            }
        }
    }
    public var excludeEndUserIds: [String]?

    public var filter: String?

    public var includeDesktopCount: Bool?

    public var includeDesktopGroupCount: Bool?

    public var maxResults: Int64?

    public var nextToken: String?

    public var orderParam: FilterUsersRequest.OrderParam?

    public var orgId: String?

    public var ownerType: String?

    public var propertyFilterParam: [FilterUsersRequest.PropertyFilterParam]?

    public var propertyKeyValueFilterParam: [FilterUsersRequest.PropertyKeyValueFilterParam]?

    public var status: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.orderParam?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.excludeEndUserIds != nil {
            map["ExcludeEndUserIds"] = self.excludeEndUserIds!
        }
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        if self.includeDesktopCount != nil {
            map["IncludeDesktopCount"] = self.includeDesktopCount!
        }
        if self.includeDesktopGroupCount != nil {
            map["IncludeDesktopGroupCount"] = self.includeDesktopGroupCount!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.orderParam != nil {
            map["OrderParam"] = self.orderParam?.toMap()
        }
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.ownerType != nil {
            map["OwnerType"] = self.ownerType!
        }
        if self.propertyFilterParam != nil {
            var tmp : [Any] = []
            for k in self.propertyFilterParam! {
                tmp.append(k.toMap())
            }
            map["PropertyFilterParam"] = tmp
        }
        if self.propertyKeyValueFilterParam != nil {
            var tmp : [Any] = []
            for k in self.propertyKeyValueFilterParam! {
                tmp.append(k.toMap())
            }
            map["PropertyKeyValueFilterParam"] = tmp
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExcludeEndUserIds") {
            self.excludeEndUserIds = dict["ExcludeEndUserIds"] as! [String]
        }
        if dict.keys.contains("Filter") {
            self.filter = dict["Filter"] as! String
        }
        if dict.keys.contains("IncludeDesktopCount") {
            self.includeDesktopCount = dict["IncludeDesktopCount"] as! Bool
        }
        if dict.keys.contains("IncludeDesktopGroupCount") {
            self.includeDesktopGroupCount = dict["IncludeDesktopGroupCount"] as! Bool
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int64
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OrderParam") {
            var model = FilterUsersRequest.OrderParam()
            model.fromMap(dict["OrderParam"] as! [String: Any])
            self.orderParam = model
        }
        if dict.keys.contains("OrgId") {
            self.orgId = dict["OrgId"] as! String
        }
        if dict.keys.contains("OwnerType") {
            self.ownerType = dict["OwnerType"] as! String
        }
        if dict.keys.contains("PropertyFilterParam") {
            var tmp : [FilterUsersRequest.PropertyFilterParam] = []
            for v in dict["PropertyFilterParam"] as! [Any] {
                var model = FilterUsersRequest.PropertyFilterParam()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.propertyFilterParam = tmp
        }
        if dict.keys.contains("PropertyKeyValueFilterParam") {
            var tmp : [FilterUsersRequest.PropertyKeyValueFilterParam] = []
            for v in dict["PropertyKeyValueFilterParam"] as! [Any] {
                var model = FilterUsersRequest.PropertyKeyValueFilterParam()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.propertyKeyValueFilterParam = tmp
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
        }
    }
}

public class FilterUsersShrinkRequest : Tea.TeaModel {
    public class PropertyFilterParam : Tea.TeaModel {
        public var propertyId: Int64?

        public var propertyValueIds: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.propertyId != nil {
                map["PropertyId"] = self.propertyId!
            }
            if self.propertyValueIds != nil {
                map["PropertyValueIds"] = self.propertyValueIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PropertyId") {
                self.propertyId = dict["PropertyId"] as! Int64
            }
            if dict.keys.contains("PropertyValueIds") {
                self.propertyValueIds = dict["PropertyValueIds"] as! String
            }
        }
    }
    public class PropertyKeyValueFilterParam : Tea.TeaModel {
        public var propertyKey: String?

        public var propertyValues: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.propertyKey != nil {
                map["PropertyKey"] = self.propertyKey!
            }
            if self.propertyValues != nil {
                map["PropertyValues"] = self.propertyValues!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PropertyKey") {
                self.propertyKey = dict["PropertyKey"] as! String
            }
            if dict.keys.contains("PropertyValues") {
                self.propertyValues = dict["PropertyValues"] as! String
            }
        }
    }
    public var excludeEndUserIds: [String]?

    public var filter: String?

    public var includeDesktopCount: Bool?

    public var includeDesktopGroupCount: Bool?

    public var maxResults: Int64?

    public var nextToken: String?

    public var orderParamShrink: String?

    public var orgId: String?

    public var ownerType: String?

    public var propertyFilterParam: [FilterUsersShrinkRequest.PropertyFilterParam]?

    public var propertyKeyValueFilterParam: [FilterUsersShrinkRequest.PropertyKeyValueFilterParam]?

    public var status: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.excludeEndUserIds != nil {
            map["ExcludeEndUserIds"] = self.excludeEndUserIds!
        }
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        if self.includeDesktopCount != nil {
            map["IncludeDesktopCount"] = self.includeDesktopCount!
        }
        if self.includeDesktopGroupCount != nil {
            map["IncludeDesktopGroupCount"] = self.includeDesktopGroupCount!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.orderParamShrink != nil {
            map["OrderParam"] = self.orderParamShrink!
        }
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.ownerType != nil {
            map["OwnerType"] = self.ownerType!
        }
        if self.propertyFilterParam != nil {
            var tmp : [Any] = []
            for k in self.propertyFilterParam! {
                tmp.append(k.toMap())
            }
            map["PropertyFilterParam"] = tmp
        }
        if self.propertyKeyValueFilterParam != nil {
            var tmp : [Any] = []
            for k in self.propertyKeyValueFilterParam! {
                tmp.append(k.toMap())
            }
            map["PropertyKeyValueFilterParam"] = tmp
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExcludeEndUserIds") {
            self.excludeEndUserIds = dict["ExcludeEndUserIds"] as! [String]
        }
        if dict.keys.contains("Filter") {
            self.filter = dict["Filter"] as! String
        }
        if dict.keys.contains("IncludeDesktopCount") {
            self.includeDesktopCount = dict["IncludeDesktopCount"] as! Bool
        }
        if dict.keys.contains("IncludeDesktopGroupCount") {
            self.includeDesktopGroupCount = dict["IncludeDesktopGroupCount"] as! Bool
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int64
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OrderParam") {
            self.orderParamShrink = dict["OrderParam"] as! String
        }
        if dict.keys.contains("OrgId") {
            self.orgId = dict["OrgId"] as! String
        }
        if dict.keys.contains("OwnerType") {
            self.ownerType = dict["OwnerType"] as! String
        }
        if dict.keys.contains("PropertyFilterParam") {
            var tmp : [FilterUsersShrinkRequest.PropertyFilterParam] = []
            for v in dict["PropertyFilterParam"] as! [Any] {
                var model = FilterUsersShrinkRequest.PropertyFilterParam()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.propertyFilterParam = tmp
        }
        if dict.keys.contains("PropertyKeyValueFilterParam") {
            var tmp : [FilterUsersShrinkRequest.PropertyKeyValueFilterParam] = []
            for v in dict["PropertyKeyValueFilterParam"] as! [Any] {
                var model = FilterUsersShrinkRequest.PropertyKeyValueFilterParam()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.propertyKeyValueFilterParam = tmp
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
        }
    }
}

public class FilterUsersResponseBody : Tea.TeaModel {
    public class Users : Tea.TeaModel {
        public class ExternalInfo : Tea.TeaModel {
            public var externalName: String?

            public var jobNumber: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.externalName != nil {
                    map["ExternalName"] = self.externalName!
                }
                if self.jobNumber != nil {
                    map["JobNumber"] = self.jobNumber!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ExternalName") {
                    self.externalName = dict["ExternalName"] as! String
                }
                if dict.keys.contains("JobNumber") {
                    self.jobNumber = dict["JobNumber"] as! String
                }
            }
        }
        public class UserSetPropertiesModels : Tea.TeaModel {
            public class PropertyValues : Tea.TeaModel {
                public var propertyValue: String?

                public var propertyValueId: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.propertyValue != nil {
                        map["PropertyValue"] = self.propertyValue!
                    }
                    if self.propertyValueId != nil {
                        map["PropertyValueId"] = self.propertyValueId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("PropertyValue") {
                        self.propertyValue = dict["PropertyValue"] as! String
                    }
                    if dict.keys.contains("PropertyValueId") {
                        self.propertyValueId = dict["PropertyValueId"] as! Int64
                    }
                }
            }
            public var propertyId: Int64?

            public var propertyKey: String?

            public var propertyType: Int32?

            public var propertyValues: [FilterUsersResponseBody.Users.UserSetPropertiesModels.PropertyValues]?

            public var userId: Int64?

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
                if self.propertyId != nil {
                    map["PropertyId"] = self.propertyId!
                }
                if self.propertyKey != nil {
                    map["PropertyKey"] = self.propertyKey!
                }
                if self.propertyType != nil {
                    map["PropertyType"] = self.propertyType!
                }
                if self.propertyValues != nil {
                    var tmp : [Any] = []
                    for k in self.propertyValues! {
                        tmp.append(k.toMap())
                    }
                    map["PropertyValues"] = tmp
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                if self.userName != nil {
                    map["UserName"] = self.userName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PropertyId") {
                    self.propertyId = dict["PropertyId"] as! Int64
                }
                if dict.keys.contains("PropertyKey") {
                    self.propertyKey = dict["PropertyKey"] as! String
                }
                if dict.keys.contains("PropertyType") {
                    self.propertyType = dict["PropertyType"] as! Int32
                }
                if dict.keys.contains("PropertyValues") {
                    var tmp : [FilterUsersResponseBody.Users.UserSetPropertiesModels.PropertyValues] = []
                    for v in dict["PropertyValues"] as! [Any] {
                        var model = FilterUsersResponseBody.Users.UserSetPropertiesModels.PropertyValues()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.propertyValues = tmp
                }
                if dict.keys.contains("UserId") {
                    self.userId = dict["UserId"] as! Int64
                }
                if dict.keys.contains("UserName") {
                    self.userName = dict["UserName"] as! String
                }
            }
        }
        public var autoLockTime: String?

        public var desktopCount: Int64?

        public var desktopGroupCount: Int64?

        public var email: String?

        public var enableAdminAccess: Bool?

        public var endUserId: String?

        public var externalInfo: FilterUsersResponseBody.Users.ExternalInfo?

        public var id: Int64?

        public var isTenantManager: Bool?

        public var ownerType: String?

        public var passwordExpireDays: Int32?

        public var passwordExpireRestDays: Int32?

        public var phone: String?

        public var realNickName: String?

        public var remark: String?

        public var status: Int64?

        public var userSetPropertiesModels: [FilterUsersResponseBody.Users.UserSetPropertiesModels]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.externalInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoLockTime != nil {
                map["AutoLockTime"] = self.autoLockTime!
            }
            if self.desktopCount != nil {
                map["DesktopCount"] = self.desktopCount!
            }
            if self.desktopGroupCount != nil {
                map["DesktopGroupCount"] = self.desktopGroupCount!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.enableAdminAccess != nil {
                map["EnableAdminAccess"] = self.enableAdminAccess!
            }
            if self.endUserId != nil {
                map["EndUserId"] = self.endUserId!
            }
            if self.externalInfo != nil {
                map["ExternalInfo"] = self.externalInfo?.toMap()
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.isTenantManager != nil {
                map["IsTenantManager"] = self.isTenantManager!
            }
            if self.ownerType != nil {
                map["OwnerType"] = self.ownerType!
            }
            if self.passwordExpireDays != nil {
                map["PasswordExpireDays"] = self.passwordExpireDays!
            }
            if self.passwordExpireRestDays != nil {
                map["PasswordExpireRestDays"] = self.passwordExpireRestDays!
            }
            if self.phone != nil {
                map["Phone"] = self.phone!
            }
            if self.realNickName != nil {
                map["RealNickName"] = self.realNickName!
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.userSetPropertiesModels != nil {
                var tmp : [Any] = []
                for k in self.userSetPropertiesModels! {
                    tmp.append(k.toMap())
                }
                map["UserSetPropertiesModels"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AutoLockTime") {
                self.autoLockTime = dict["AutoLockTime"] as! String
            }
            if dict.keys.contains("DesktopCount") {
                self.desktopCount = dict["DesktopCount"] as! Int64
            }
            if dict.keys.contains("DesktopGroupCount") {
                self.desktopGroupCount = dict["DesktopGroupCount"] as! Int64
            }
            if dict.keys.contains("Email") {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("EnableAdminAccess") {
                self.enableAdminAccess = dict["EnableAdminAccess"] as! Bool
            }
            if dict.keys.contains("EndUserId") {
                self.endUserId = dict["EndUserId"] as! String
            }
            if dict.keys.contains("ExternalInfo") {
                var model = FilterUsersResponseBody.Users.ExternalInfo()
                model.fromMap(dict["ExternalInfo"] as! [String: Any])
                self.externalInfo = model
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("IsTenantManager") {
                self.isTenantManager = dict["IsTenantManager"] as! Bool
            }
            if dict.keys.contains("OwnerType") {
                self.ownerType = dict["OwnerType"] as! String
            }
            if dict.keys.contains("PasswordExpireDays") {
                self.passwordExpireDays = dict["PasswordExpireDays"] as! Int32
            }
            if dict.keys.contains("PasswordExpireRestDays") {
                self.passwordExpireRestDays = dict["PasswordExpireRestDays"] as! Int32
            }
            if dict.keys.contains("Phone") {
                self.phone = dict["Phone"] as! String
            }
            if dict.keys.contains("RealNickName") {
                self.realNickName = dict["RealNickName"] as! String
            }
            if dict.keys.contains("Remark") {
                self.remark = dict["Remark"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int64
            }
            if dict.keys.contains("UserSetPropertiesModels") {
                var tmp : [FilterUsersResponseBody.Users.UserSetPropertiesModels] = []
                for v in dict["UserSetPropertiesModels"] as! [Any] {
                    var model = FilterUsersResponseBody.Users.UserSetPropertiesModels()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.userSetPropertiesModels = tmp
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var users: [FilterUsersResponseBody.Users]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.users != nil {
            var tmp : [Any] = []
            for k in self.users! {
                tmp.append(k.toMap())
            }
            map["Users"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Users") {
            var tmp : [FilterUsersResponseBody.Users] = []
            for v in dict["Users"] as! [Any] {
                var model = FilterUsersResponseBody.Users()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.users = tmp
        }
    }
}

public class FilterUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FilterUsersResponseBody?

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
            var model = FilterUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetManagerInfoByAuthCodeRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthCode") {
            self.authCode = dict["AuthCode"] as! String
        }
    }
}

public class GetManagerInfoByAuthCodeResponseBody : Tea.TeaModel {
    public var orgId: String?

    public var phone: String?

    public var requestId: String?

    public var teamName: String?

    public var userName: String?

    public var waId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.phone != nil {
            map["Phone"] = self.phone!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.teamName != nil {
            map["TeamName"] = self.teamName!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        if self.waId != nil {
            map["WaId"] = self.waId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrgId") {
            self.orgId = dict["OrgId"] as! String
        }
        if dict.keys.contains("Phone") {
            self.phone = dict["Phone"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TeamName") {
            self.teamName = dict["TeamName"] as! String
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
        if dict.keys.contains("WaId") {
            self.waId = dict["WaId"] as! Int64
        }
    }
}

public class GetManagerInfoByAuthCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetManagerInfoByAuthCodeResponseBody?

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
            var model = GetManagerInfoByAuthCodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPropertyResponseBody : Tea.TeaModel {
    public class Properties : Tea.TeaModel {
        public class PropertyValues : Tea.TeaModel {
            public var propertyValue: String?

            public var propertyValueId: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.propertyValue != nil {
                    map["PropertyValue"] = self.propertyValue!
                }
                if self.propertyValueId != nil {
                    map["PropertyValueId"] = self.propertyValueId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PropertyValue") {
                    self.propertyValue = dict["PropertyValue"] as! String
                }
                if dict.keys.contains("PropertyValueId") {
                    self.propertyValueId = dict["PropertyValueId"] as! Int64
                }
            }
        }
        public var propertyId: Int64?

        public var propertyKey: String?

        public var propertyValues: [ListPropertyResponseBody.Properties.PropertyValues]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.propertyId != nil {
                map["PropertyId"] = self.propertyId!
            }
            if self.propertyKey != nil {
                map["PropertyKey"] = self.propertyKey!
            }
            if self.propertyValues != nil {
                var tmp : [Any] = []
                for k in self.propertyValues! {
                    tmp.append(k.toMap())
                }
                map["PropertyValues"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PropertyId") {
                self.propertyId = dict["PropertyId"] as! Int64
            }
            if dict.keys.contains("PropertyKey") {
                self.propertyKey = dict["PropertyKey"] as! String
            }
            if dict.keys.contains("PropertyValues") {
                var tmp : [ListPropertyResponseBody.Properties.PropertyValues] = []
                for v in dict["PropertyValues"] as! [Any] {
                    var model = ListPropertyResponseBody.Properties.PropertyValues()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.propertyValues = tmp
            }
        }
    }
    public var nextToken: String?

    public var properties: [ListPropertyResponseBody.Properties]?

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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.properties != nil {
            var tmp : [Any] = []
            for k in self.properties! {
                tmp.append(k.toMap())
            }
            map["Properties"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Properties") {
            var tmp : [ListPropertyResponseBody.Properties] = []
            for v in dict["Properties"] as! [Any] {
                var model = ListPropertyResponseBody.Properties()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.properties = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListPropertyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPropertyResponseBody?

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
            var model = ListPropertyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPropertyValueRequest : Tea.TeaModel {
    public var propertyId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.propertyId != nil {
            map["PropertyId"] = self.propertyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PropertyId") {
            self.propertyId = dict["PropertyId"] as! Int64
        }
    }
}

public class ListPropertyValueResponseBody : Tea.TeaModel {
    public class PropertyValueInfos : Tea.TeaModel {
        public var propertyValue: String?

        public var propertyValueId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.propertyValue != nil {
                map["PropertyValue"] = self.propertyValue!
            }
            if self.propertyValueId != nil {
                map["PropertyValueId"] = self.propertyValueId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PropertyValue") {
                self.propertyValue = dict["PropertyValue"] as! String
            }
            if dict.keys.contains("PropertyValueId") {
                self.propertyValueId = dict["PropertyValueId"] as! Int64
            }
        }
    }
    public var propertyValueInfos: [ListPropertyValueResponseBody.PropertyValueInfos]?

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
        if self.propertyValueInfos != nil {
            var tmp : [Any] = []
            for k in self.propertyValueInfos! {
                tmp.append(k.toMap())
            }
            map["PropertyValueInfos"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PropertyValueInfos") {
            var tmp : [ListPropertyValueResponseBody.PropertyValueInfos] = []
            for v in dict["PropertyValueInfos"] as! [Any] {
                var model = ListPropertyValueResponseBody.PropertyValueInfos()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.propertyValueInfos = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListPropertyValueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPropertyValueResponseBody?

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
            var model = ListPropertyValueResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class LockMfaDeviceRequest : Tea.TeaModel {
    public var adDomain: String?

    public var serialNumber: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.adDomain != nil {
            map["AdDomain"] = self.adDomain!
        }
        if self.serialNumber != nil {
            map["SerialNumber"] = self.serialNumber!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdDomain") {
            self.adDomain = dict["AdDomain"] as! String
        }
        if dict.keys.contains("SerialNumber") {
            self.serialNumber = dict["SerialNumber"] as! String
        }
    }
}

public class LockMfaDeviceResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class LockMfaDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: LockMfaDeviceResponseBody?

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
            var model = LockMfaDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class LockUsersRequest : Tea.TeaModel {
    public var users: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.users != nil {
            map["Users"] = self.users!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Users") {
            self.users = dict["Users"] as! [String]
        }
    }
}

public class LockUsersResponseBody : Tea.TeaModel {
    public class LockUsersResult : Tea.TeaModel {
        public class FailedUsers : Tea.TeaModel {
            public var endUserId: String?

            public var errorCode: String?

            public var errorMessage: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.endUserId != nil {
                    map["EndUserId"] = self.endUserId!
                }
                if self.errorCode != nil {
                    map["ErrorCode"] = self.errorCode!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EndUserId") {
                    self.endUserId = dict["EndUserId"] as! String
                }
                if dict.keys.contains("ErrorCode") {
                    self.errorCode = dict["ErrorCode"] as! String
                }
                if dict.keys.contains("ErrorMessage") {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
            }
        }
        public var failedUsers: [LockUsersResponseBody.LockUsersResult.FailedUsers]?

        public var lockedUsers: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.failedUsers != nil {
                var tmp : [Any] = []
                for k in self.failedUsers! {
                    tmp.append(k.toMap())
                }
                map["FailedUsers"] = tmp
            }
            if self.lockedUsers != nil {
                map["LockedUsers"] = self.lockedUsers!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FailedUsers") {
                var tmp : [LockUsersResponseBody.LockUsersResult.FailedUsers] = []
                for v in dict["FailedUsers"] as! [Any] {
                    var model = LockUsersResponseBody.LockUsersResult.FailedUsers()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.failedUsers = tmp
            }
            if dict.keys.contains("LockedUsers") {
                self.lockedUsers = dict["LockedUsers"] as! [String]
            }
        }
    }
    public var lockUsersResult: LockUsersResponseBody.LockUsersResult?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.lockUsersResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lockUsersResult != nil {
            map["LockUsersResult"] = self.lockUsersResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LockUsersResult") {
            var model = LockUsersResponseBody.LockUsersResult()
            model.fromMap(dict["LockUsersResult"] as! [String: Any])
            self.lockUsersResult = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class LockUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: LockUsersResponseBody?

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
            var model = LockUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyUserRequest : Tea.TeaModel {
    public var email: String?

    public var endUserId: String?

    public var phone: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.phone != nil {
            map["Phone"] = self.phone!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Email") {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("EndUserId") {
            self.endUserId = dict["EndUserId"] as! String
        }
        if dict.keys.contains("Phone") {
            self.phone = dict["Phone"] as! String
        }
    }
}

public class ModifyUserResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyUserResponseBody?

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
            var model = ModifyUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QuerySyncStatusByAliUidResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var aliUid: Int64?

        public var corpId: String?

        public var gmtCreated: String?

        public var gmtModified: String?

        public var id: Int64?

        public var latestBeginTime: String?

        public var latestEndTime: String?

        public var latestSuccessTime: String?

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
            if self.aliUid != nil {
                map["AliUid"] = self.aliUid!
            }
            if self.corpId != nil {
                map["CorpId"] = self.corpId!
            }
            if self.gmtCreated != nil {
                map["GmtCreated"] = self.gmtCreated!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.latestBeginTime != nil {
                map["LatestBeginTime"] = self.latestBeginTime!
            }
            if self.latestEndTime != nil {
                map["LatestEndTime"] = self.latestEndTime!
            }
            if self.latestSuccessTime != nil {
                map["LatestSuccessTime"] = self.latestSuccessTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AliUid") {
                self.aliUid = dict["AliUid"] as! Int64
            }
            if dict.keys.contains("CorpId") {
                self.corpId = dict["CorpId"] as! String
            }
            if dict.keys.contains("GmtCreated") {
                self.gmtCreated = dict["GmtCreated"] as! String
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("LatestBeginTime") {
                self.latestBeginTime = dict["LatestBeginTime"] as! String
            }
            if dict.keys.contains("LatestEndTime") {
                self.latestEndTime = dict["LatestEndTime"] as! String
            }
            if dict.keys.contains("LatestSuccessTime") {
                self.latestSuccessTime = dict["LatestSuccessTime"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var code: String?

    public var data: QuerySyncStatusByAliUidResponseBody.Data?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = QuerySyncStatusByAliUidResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QuerySyncStatusByAliUidResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySyncStatusByAliUidResponseBody?

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
            var model = QuerySyncStatusByAliUidResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveMfaDeviceRequest : Tea.TeaModel {
    public var adDomain: String?

    public var serialNumber: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.adDomain != nil {
            map["AdDomain"] = self.adDomain!
        }
        if self.serialNumber != nil {
            map["SerialNumber"] = self.serialNumber!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdDomain") {
            self.adDomain = dict["AdDomain"] as! String
        }
        if dict.keys.contains("SerialNumber") {
            self.serialNumber = dict["SerialNumber"] as! String
        }
    }
}

public class RemoveMfaDeviceResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RemoveMfaDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveMfaDeviceResponseBody?

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
            var model = RemoveMfaDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemovePropertyRequest : Tea.TeaModel {
    public var propertyId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.propertyId != nil {
            map["PropertyId"] = self.propertyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PropertyId") {
            self.propertyId = dict["PropertyId"] as! Int64
        }
    }
}

public class RemovePropertyResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RemovePropertyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemovePropertyResponseBody?

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
            var model = RemovePropertyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveUsersRequest : Tea.TeaModel {
    public var users: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.users != nil {
            map["Users"] = self.users!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Users") {
            self.users = dict["Users"] as! [String]
        }
    }
}

public class RemoveUsersResponseBody : Tea.TeaModel {
    public class RemoveUsersResult : Tea.TeaModel {
        public class FailedUsers : Tea.TeaModel {
            public var endUserId: String?

            public var errorCode: String?

            public var errorMessage: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.endUserId != nil {
                    map["EndUserId"] = self.endUserId!
                }
                if self.errorCode != nil {
                    map["ErrorCode"] = self.errorCode!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EndUserId") {
                    self.endUserId = dict["EndUserId"] as! String
                }
                if dict.keys.contains("ErrorCode") {
                    self.errorCode = dict["ErrorCode"] as! String
                }
                if dict.keys.contains("ErrorMessage") {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
            }
        }
        public var failedUsers: [RemoveUsersResponseBody.RemoveUsersResult.FailedUsers]?

        public var removedUsers: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.failedUsers != nil {
                var tmp : [Any] = []
                for k in self.failedUsers! {
                    tmp.append(k.toMap())
                }
                map["FailedUsers"] = tmp
            }
            if self.removedUsers != nil {
                map["RemovedUsers"] = self.removedUsers!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FailedUsers") {
                var tmp : [RemoveUsersResponseBody.RemoveUsersResult.FailedUsers] = []
                for v in dict["FailedUsers"] as! [Any] {
                    var model = RemoveUsersResponseBody.RemoveUsersResult.FailedUsers()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.failedUsers = tmp
            }
            if dict.keys.contains("RemovedUsers") {
                self.removedUsers = dict["RemovedUsers"] as! [String]
            }
        }
    }
    public var removeUsersResult: RemoveUsersResponseBody.RemoveUsersResult?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.removeUsersResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.removeUsersResult != nil {
            map["RemoveUsersResult"] = self.removeUsersResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RemoveUsersResult") {
            var model = RemoveUsersResponseBody.RemoveUsersResult()
            model.fromMap(dict["RemoveUsersResult"] as! [String: Any])
            self.removeUsersResult = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RemoveUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveUsersResponseBody?

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
            var model = RemoveUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResetUserPasswordRequest : Tea.TeaModel {
    public var notifyType: Int32?

    public var users: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.notifyType != nil {
            map["NotifyType"] = self.notifyType!
        }
        if self.users != nil {
            map["Users"] = self.users!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NotifyType") {
            self.notifyType = dict["NotifyType"] as! Int32
        }
        if dict.keys.contains("Users") {
            self.users = dict["Users"] as! [String]
        }
    }
}

public class ResetUserPasswordResponseBody : Tea.TeaModel {
    public class ResetUsersResult : Tea.TeaModel {
        public class FailedUsers : Tea.TeaModel {
            public var endUserId: String?

            public var errorCode: String?

            public var errorMessage: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.endUserId != nil {
                    map["EndUserId"] = self.endUserId!
                }
                if self.errorCode != nil {
                    map["ErrorCode"] = self.errorCode!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EndUserId") {
                    self.endUserId = dict["EndUserId"] as! String
                }
                if dict.keys.contains("ErrorCode") {
                    self.errorCode = dict["ErrorCode"] as! String
                }
                if dict.keys.contains("ErrorMessage") {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
            }
        }
        public var failedUsers: [ResetUserPasswordResponseBody.ResetUsersResult.FailedUsers]?

        public var resetUsers: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.failedUsers != nil {
                var tmp : [Any] = []
                for k in self.failedUsers! {
                    tmp.append(k.toMap())
                }
                map["FailedUsers"] = tmp
            }
            if self.resetUsers != nil {
                map["ResetUsers"] = self.resetUsers!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FailedUsers") {
                var tmp : [ResetUserPasswordResponseBody.ResetUsersResult.FailedUsers] = []
                for v in dict["FailedUsers"] as! [Any] {
                    var model = ResetUserPasswordResponseBody.ResetUsersResult.FailedUsers()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.failedUsers = tmp
            }
            if dict.keys.contains("ResetUsers") {
                self.resetUsers = dict["ResetUsers"] as! [String]
            }
        }
    }
    public var requestId: String?

    public var resetUsersResult: ResetUserPasswordResponseBody.ResetUsersResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resetUsersResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resetUsersResult != nil {
            map["ResetUsersResult"] = self.resetUsersResult?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResetUsersResult") {
            var model = ResetUserPasswordResponseBody.ResetUsersResult()
            model.fromMap(dict["ResetUsersResult"] as! [String: Any])
            self.resetUsersResult = model
        }
    }
}

public class ResetUserPasswordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetUserPasswordResponseBody?

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
            var model = ResetUserPasswordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetUserPropertyValueRequest : Tea.TeaModel {
    public var propertyId: Int64?

    public var propertyValueId: Int64?

    public var userId: Int64?

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
        if self.propertyId != nil {
            map["PropertyId"] = self.propertyId!
        }
        if self.propertyValueId != nil {
            map["PropertyValueId"] = self.propertyValueId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PropertyId") {
            self.propertyId = dict["PropertyId"] as! Int64
        }
        if dict.keys.contains("PropertyValueId") {
            self.propertyValueId = dict["PropertyValueId"] as! Int64
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! Int64
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class SetUserPropertyValueResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SetUserPropertyValueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetUserPropertyValueResponseBody?

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
            var model = SetUserPropertyValueResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SyncAllEduInfoResponseBody : Tea.TeaModel {
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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("HttpStatusCode") {
            self.httpStatusCode = dict["HttpStatusCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class SyncAllEduInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SyncAllEduInfoResponseBody?

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
            var model = SyncAllEduInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnlockMfaDeviceRequest : Tea.TeaModel {
    public var adDomain: String?

    public var serialNumber: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.adDomain != nil {
            map["AdDomain"] = self.adDomain!
        }
        if self.serialNumber != nil {
            map["SerialNumber"] = self.serialNumber!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdDomain") {
            self.adDomain = dict["AdDomain"] as! String
        }
        if dict.keys.contains("SerialNumber") {
            self.serialNumber = dict["SerialNumber"] as! String
        }
    }
}

public class UnlockMfaDeviceResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UnlockMfaDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnlockMfaDeviceResponseBody?

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
            var model = UnlockMfaDeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnlockUsersRequest : Tea.TeaModel {
    public var autoLockTime: String?

    public var users: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoLockTime != nil {
            map["AutoLockTime"] = self.autoLockTime!
        }
        if self.users != nil {
            map["Users"] = self.users!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoLockTime") {
            self.autoLockTime = dict["AutoLockTime"] as! String
        }
        if dict.keys.contains("Users") {
            self.users = dict["Users"] as! [String]
        }
    }
}

public class UnlockUsersResponseBody : Tea.TeaModel {
    public class UnlockUsersResult : Tea.TeaModel {
        public class FailedUsers : Tea.TeaModel {
            public var endUserId: String?

            public var errorCode: String?

            public var errorMessage: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.endUserId != nil {
                    map["EndUserId"] = self.endUserId!
                }
                if self.errorCode != nil {
                    map["ErrorCode"] = self.errorCode!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EndUserId") {
                    self.endUserId = dict["EndUserId"] as! String
                }
                if dict.keys.contains("ErrorCode") {
                    self.errorCode = dict["ErrorCode"] as! String
                }
                if dict.keys.contains("ErrorMessage") {
                    self.errorMessage = dict["ErrorMessage"] as! String
                }
            }
        }
        public var failedUsers: [UnlockUsersResponseBody.UnlockUsersResult.FailedUsers]?

        public var unlockedUsers: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.failedUsers != nil {
                var tmp : [Any] = []
                for k in self.failedUsers! {
                    tmp.append(k.toMap())
                }
                map["FailedUsers"] = tmp
            }
            if self.unlockedUsers != nil {
                map["UnlockedUsers"] = self.unlockedUsers!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FailedUsers") {
                var tmp : [UnlockUsersResponseBody.UnlockUsersResult.FailedUsers] = []
                for v in dict["FailedUsers"] as! [Any] {
                    var model = UnlockUsersResponseBody.UnlockUsersResult.FailedUsers()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.failedUsers = tmp
            }
            if dict.keys.contains("UnlockedUsers") {
                self.unlockedUsers = dict["UnlockedUsers"] as! [String]
            }
        }
    }
    public var requestId: String?

    public var unlockUsersResult: UnlockUsersResponseBody.UnlockUsersResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.unlockUsersResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.unlockUsersResult != nil {
            map["UnlockUsersResult"] = self.unlockUsersResult?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UnlockUsersResult") {
            var model = UnlockUsersResponseBody.UnlockUsersResult()
            model.fromMap(dict["UnlockUsersResult"] as! [String: Any])
            self.unlockUsersResult = model
        }
    }
}

public class UnlockUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnlockUsersResponseBody?

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
            var model = UnlockUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdatePropertyRequest : Tea.TeaModel {
    public class PropertyValues : Tea.TeaModel {
        public var propertyValue: String?

        public var propertyValueId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.propertyValue != nil {
                map["PropertyValue"] = self.propertyValue!
            }
            if self.propertyValueId != nil {
                map["PropertyValueId"] = self.propertyValueId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PropertyValue") {
                self.propertyValue = dict["PropertyValue"] as! String
            }
            if dict.keys.contains("PropertyValueId") {
                self.propertyValueId = dict["PropertyValueId"] as! Int64
            }
        }
    }
    public var propertyId: Int64?

    public var propertyKey: String?

    public var propertyValues: [UpdatePropertyRequest.PropertyValues]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.propertyId != nil {
            map["PropertyId"] = self.propertyId!
        }
        if self.propertyKey != nil {
            map["PropertyKey"] = self.propertyKey!
        }
        if self.propertyValues != nil {
            var tmp : [Any] = []
            for k in self.propertyValues! {
                tmp.append(k.toMap())
            }
            map["PropertyValues"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PropertyId") {
            self.propertyId = dict["PropertyId"] as! Int64
        }
        if dict.keys.contains("PropertyKey") {
            self.propertyKey = dict["PropertyKey"] as! String
        }
        if dict.keys.contains("PropertyValues") {
            var tmp : [UpdatePropertyRequest.PropertyValues] = []
            for v in dict["PropertyValues"] as! [Any] {
                var model = UpdatePropertyRequest.PropertyValues()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.propertyValues = tmp
        }
    }
}

public class UpdatePropertyResponseBody : Tea.TeaModel {
    public class UpdateResult : Tea.TeaModel {
        public class SavePropertyValueModel : Tea.TeaModel {
            public class FailedPropertyValues : Tea.TeaModel {
                public var errorCode: String?

                public var errorMessage: String?

                public var propertyId: Int64?

                public var propertyValue: String?

                public override init() {
                    super.init()
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
                    if self.errorMessage != nil {
                        map["ErrorMessage"] = self.errorMessage!
                    }
                    if self.propertyId != nil {
                        map["PropertyId"] = self.propertyId!
                    }
                    if self.propertyValue != nil {
                        map["PropertyValue"] = self.propertyValue!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ErrorCode") {
                        self.errorCode = dict["ErrorCode"] as! String
                    }
                    if dict.keys.contains("ErrorMessage") {
                        self.errorMessage = dict["ErrorMessage"] as! String
                    }
                    if dict.keys.contains("PropertyId") {
                        self.propertyId = dict["PropertyId"] as! Int64
                    }
                    if dict.keys.contains("PropertyValue") {
                        self.propertyValue = dict["PropertyValue"] as! String
                    }
                }
            }
            public class SavePropertyValues : Tea.TeaModel {
                public var propertyValue: String?

                public var propertyValueId: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.propertyValue != nil {
                        map["PropertyValue"] = self.propertyValue!
                    }
                    if self.propertyValueId != nil {
                        map["PropertyValueId"] = self.propertyValueId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("PropertyValue") {
                        self.propertyValue = dict["PropertyValue"] as! String
                    }
                    if dict.keys.contains("PropertyValueId") {
                        self.propertyValueId = dict["PropertyValueId"] as! Int64
                    }
                }
            }
            public var failedPropertyValues: [UpdatePropertyResponseBody.UpdateResult.SavePropertyValueModel.FailedPropertyValues]?

            public var savePropertyValues: [UpdatePropertyResponseBody.UpdateResult.SavePropertyValueModel.SavePropertyValues]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.failedPropertyValues != nil {
                    var tmp : [Any] = []
                    for k in self.failedPropertyValues! {
                        tmp.append(k.toMap())
                    }
                    map["FailedPropertyValues"] = tmp
                }
                if self.savePropertyValues != nil {
                    var tmp : [Any] = []
                    for k in self.savePropertyValues! {
                        tmp.append(k.toMap())
                    }
                    map["SavePropertyValues"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FailedPropertyValues") {
                    var tmp : [UpdatePropertyResponseBody.UpdateResult.SavePropertyValueModel.FailedPropertyValues] = []
                    for v in dict["FailedPropertyValues"] as! [Any] {
                        var model = UpdatePropertyResponseBody.UpdateResult.SavePropertyValueModel.FailedPropertyValues()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.failedPropertyValues = tmp
                }
                if dict.keys.contains("SavePropertyValues") {
                    var tmp : [UpdatePropertyResponseBody.UpdateResult.SavePropertyValueModel.SavePropertyValues] = []
                    for v in dict["SavePropertyValues"] as! [Any] {
                        var model = UpdatePropertyResponseBody.UpdateResult.SavePropertyValueModel.SavePropertyValues()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.savePropertyValues = tmp
                }
            }
        }
        public var propertyId: Int64?

        public var propertyKey: String?

        public var savePropertyValueModel: UpdatePropertyResponseBody.UpdateResult.SavePropertyValueModel?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.savePropertyValueModel?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.propertyId != nil {
                map["PropertyId"] = self.propertyId!
            }
            if self.propertyKey != nil {
                map["PropertyKey"] = self.propertyKey!
            }
            if self.savePropertyValueModel != nil {
                map["SavePropertyValueModel"] = self.savePropertyValueModel?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PropertyId") {
                self.propertyId = dict["PropertyId"] as! Int64
            }
            if dict.keys.contains("PropertyKey") {
                self.propertyKey = dict["PropertyKey"] as! String
            }
            if dict.keys.contains("SavePropertyValueModel") {
                var model = UpdatePropertyResponseBody.UpdateResult.SavePropertyValueModel()
                model.fromMap(dict["SavePropertyValueModel"] as! [String: Any])
                self.savePropertyValueModel = model
            }
        }
    }
    public var requestId: String?

    public var updateResult: UpdatePropertyResponseBody.UpdateResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.updateResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.updateResult != nil {
            map["UpdateResult"] = self.updateResult?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UpdateResult") {
            var model = UpdatePropertyResponseBody.UpdateResult()
            model.fromMap(dict["UpdateResult"] as! [String: Any])
            self.updateResult = model
        }
    }
}

public class UpdatePropertyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePropertyResponseBody?

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
            var model = UpdatePropertyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
