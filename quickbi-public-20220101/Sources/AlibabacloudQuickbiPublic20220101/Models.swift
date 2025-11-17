import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddDataLevelPermissionRuleUsersRequest : Tea.TeaModel {
    public var addUserModel: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addUserModel != nil {
            map["AddUserModel"] = self.addUserModel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddUserModel"] as? String {
            self.addUserModel = value
        }
    }
}

public class AddDataLevelPermissionRuleUsersResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class AddDataLevelPermissionRuleUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddDataLevelPermissionRuleUsersResponseBody?

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
            var model = AddDataLevelPermissionRuleUsersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddDataLevelPermissionWhiteListRequest : Tea.TeaModel {
    public var cubeId: String?

    public var operateType: String?

    public var ruleType: String?

    public var targetIds: String?

    public var targetType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cubeId != nil {
            map["CubeId"] = self.cubeId!
        }
        if self.operateType != nil {
            map["OperateType"] = self.operateType!
        }
        if self.ruleType != nil {
            map["RuleType"] = self.ruleType!
        }
        if self.targetIds != nil {
            map["TargetIds"] = self.targetIds!
        }
        if self.targetType != nil {
            map["TargetType"] = self.targetType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CubeId"] as? String {
            self.cubeId = value
        }
        if let value = dict["OperateType"] as? String {
            self.operateType = value
        }
        if let value = dict["RuleType"] as? String {
            self.ruleType = value
        }
        if let value = dict["TargetIds"] as? String {
            self.targetIds = value
        }
        if let value = dict["TargetType"] as? String {
            self.targetType = value
        }
    }
}

public class AddDataLevelPermissionWhiteListResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class AddDataLevelPermissionWhiteListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddDataLevelPermissionWhiteListResponseBody?

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
            var model = AddDataLevelPermissionWhiteListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddDataSourceRequest : Tea.TeaModel {
    public var addModel: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addModel != nil {
            map["AddModel"] = self.addModel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddModel"] as? String {
            self.addModel = value
        }
    }
}

public class AddDataSourceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? String {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class AddDataSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddDataSourceResponseBody?

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
            var model = AddDataSourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddShareReportRequest : Tea.TeaModel {
    public var authPoint: Int32?

    public var expireDate: Int64?

    public var shareToId: String?

    public var shareToType: Int32?

    public var worksId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authPoint != nil {
            map["AuthPoint"] = self.authPoint!
        }
        if self.expireDate != nil {
            map["ExpireDate"] = self.expireDate!
        }
        if self.shareToId != nil {
            map["ShareToId"] = self.shareToId!
        }
        if self.shareToType != nil {
            map["ShareToType"] = self.shareToType!
        }
        if self.worksId != nil {
            map["WorksId"] = self.worksId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthPoint"] as? Int32 {
            self.authPoint = value
        }
        if let value = dict["ExpireDate"] as? Int64 {
            self.expireDate = value
        }
        if let value = dict["ShareToId"] as? String {
            self.shareToId = value
        }
        if let value = dict["ShareToType"] as? Int32 {
            self.shareToType = value
        }
        if let value = dict["WorksId"] as? String {
            self.worksId = value
        }
    }
}

public class AddShareReportResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class AddShareReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddShareReportResponseBody?

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
            var model = AddShareReportResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddUserRequest : Tea.TeaModel {
    public var accountId: String?

    public var accountName: String?

    public var adminUser: Bool?

    public var authAdminUser: Bool?

    public var nickName: String?

    public var roleIds: String?

    public var userType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        if self.accountName != nil {
            map["AccountName"] = self.accountName!
        }
        if self.adminUser != nil {
            map["AdminUser"] = self.adminUser!
        }
        if self.authAdminUser != nil {
            map["AuthAdminUser"] = self.authAdminUser!
        }
        if self.nickName != nil {
            map["NickName"] = self.nickName!
        }
        if self.roleIds != nil {
            map["RoleIds"] = self.roleIds!
        }
        if self.userType != nil {
            map["UserType"] = self.userType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountId"] as? String {
            self.accountId = value
        }
        if let value = dict["AccountName"] as? String {
            self.accountName = value
        }
        if let value = dict["AdminUser"] as? Bool {
            self.adminUser = value
        }
        if let value = dict["AuthAdminUser"] as? Bool {
            self.authAdminUser = value
        }
        if let value = dict["NickName"] as? String {
            self.nickName = value
        }
        if let value = dict["RoleIds"] as? String {
            self.roleIds = value
        }
        if let value = dict["UserType"] as? Int32 {
            self.userType = value
        }
    }
}

public class AddUserResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var accountName: String?

        public var adminUser: Bool?

        public var authAdminUser: Bool?

        public var nickName: String?

        public var roleIdList: [Int64]?

        public var userId: String?

        public var userType: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountName != nil {
                map["AccountName"] = self.accountName!
            }
            if self.adminUser != nil {
                map["AdminUser"] = self.adminUser!
            }
            if self.authAdminUser != nil {
                map["AuthAdminUser"] = self.authAdminUser!
            }
            if self.nickName != nil {
                map["NickName"] = self.nickName!
            }
            if self.roleIdList != nil {
                map["RoleIdList"] = self.roleIdList!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.userType != nil {
                map["UserType"] = self.userType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountName"] as? String {
                self.accountName = value
            }
            if let value = dict["AdminUser"] as? Bool {
                self.adminUser = value
            }
            if let value = dict["AuthAdminUser"] as? Bool {
                self.authAdminUser = value
            }
            if let value = dict["NickName"] as? String {
                self.nickName = value
            }
            if let value = dict["RoleIdList"] as? [Int64] {
                self.roleIdList = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
            if let value = dict["UserType"] as? Int32 {
                self.userType = value
            }
        }
    }
    public var requestId: String?

    public var result: AddUserResponseBody.Result?

    public var success: Bool?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = AddUserResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class AddUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddUserResponseBody?

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
            var model = AddUserResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddUserGroupMemberRequest : Tea.TeaModel {
    public var userGroupId: String?

    public var userIdList: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userGroupId != nil {
            map["UserGroupId"] = self.userGroupId!
        }
        if self.userIdList != nil {
            map["UserIdList"] = self.userIdList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserGroupId"] as? String {
            self.userGroupId = value
        }
        if let value = dict["UserIdList"] as? String {
            self.userIdList = value
        }
    }
}

public class AddUserGroupMemberResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class AddUserGroupMemberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddUserGroupMemberResponseBody?

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
            var model = AddUserGroupMemberResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddUserGroupMembersRequest : Tea.TeaModel {
    public var userGroupIds: String?

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
        if self.userGroupIds != nil {
            map["UserGroupIds"] = self.userGroupIds!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserGroupIds"] as? String {
            self.userGroupIds = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class AddUserGroupMembersResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class AddUserGroupMembersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddUserGroupMembersResponseBody?

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
            var model = AddUserGroupMembersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddUserTagMetaRequest : Tea.TeaModel {
    public var tagDescription: String?

    public var tagName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.tagDescription != nil {
            map["TagDescription"] = self.tagDescription!
        }
        if self.tagName != nil {
            map["TagName"] = self.tagName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["TagDescription"] as? String {
            self.tagDescription = value
        }
        if let value = dict["TagName"] as? String {
            self.tagName = value
        }
    }
}

public class AddUserTagMetaResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? String {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class AddUserTagMetaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddUserTagMetaResponseBody?

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
            var model = AddUserTagMetaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddUserToWorkspaceRequest : Tea.TeaModel {
    public var roleId: Int64?

    public var userId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.roleId != nil {
            map["RoleId"] = self.roleId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RoleId"] as? Int64 {
            self.roleId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class AddUserToWorkspaceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class AddUserToWorkspaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddUserToWorkspaceResponseBody?

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
            var model = AddUserToWorkspaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddWorkspaceUsersRequest : Tea.TeaModel {
    public var roleId: Int64?

    public var userIds: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.roleId != nil {
            map["RoleId"] = self.roleId!
        }
        if self.userIds != nil {
            map["UserIds"] = self.userIds!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RoleId"] as? Int64 {
            self.roleId = value
        }
        if let value = dict["UserIds"] as? String {
            self.userIds = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class AddWorkspaceUsersResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var failure: Int32?

        public var failureDetail: [String: Any]?

        public var success: Int32?

        public var total: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.failure != nil {
                map["Failure"] = self.failure!
            }
            if self.failureDetail != nil {
                map["FailureDetail"] = self.failureDetail!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Failure"] as? Int32 {
                self.failure = value
            }
            if let value = dict["FailureDetail"] as? [String: Any] {
                self.failureDetail = value
            }
            if let value = dict["Success"] as? Int32 {
                self.success = value
            }
            if let value = dict["Total"] as? Int32 {
                self.total = value
            }
        }
    }
    public var requestId: String?

    public var result: AddWorkspaceUsersResponseBody.Result?

    public var success: Bool?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = AddWorkspaceUsersResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class AddWorkspaceUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddWorkspaceUsersResponseBody?

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
            var model = AddWorkspaceUsersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AllotDatasetAccelerationTaskRequest : Tea.TeaModel {
    public var cubeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cubeId != nil {
            map["CubeId"] = self.cubeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CubeId"] as? String {
            self.cubeId = value
        }
    }
}

public class AllotDatasetAccelerationTaskResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class AllotDatasetAccelerationTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AllotDatasetAccelerationTaskResponseBody?

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
            var model = AllotDatasetAccelerationTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AuthorizeMenuRequest : Tea.TeaModel {
    public var authPointsValue: Int32?

    public var dataPortalId: String?

    public var menuIds: String?

    public var userGroupIds: String?

    public var userIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authPointsValue != nil {
            map["AuthPointsValue"] = self.authPointsValue!
        }
        if self.dataPortalId != nil {
            map["DataPortalId"] = self.dataPortalId!
        }
        if self.menuIds != nil {
            map["MenuIds"] = self.menuIds!
        }
        if self.userGroupIds != nil {
            map["UserGroupIds"] = self.userGroupIds!
        }
        if self.userIds != nil {
            map["UserIds"] = self.userIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthPointsValue"] as? Int32 {
            self.authPointsValue = value
        }
        if let value = dict["DataPortalId"] as? String {
            self.dataPortalId = value
        }
        if let value = dict["MenuIds"] as? String {
            self.menuIds = value
        }
        if let value = dict["UserGroupIds"] as? String {
            self.userGroupIds = value
        }
        if let value = dict["UserIds"] as? String {
            self.userIds = value
        }
    }
}

public class AuthorizeMenuResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Int32?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Int32 {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class AuthorizeMenuResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AuthorizeMenuResponseBody?

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
            var model = AuthorizeMenuResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BatchAddFeishuUsersRequest : Tea.TeaModel {
    public var feishuUsers: String?

    public var isAdmin: Bool?

    public var isAuthAdmin: Bool?

    public var userGroupIds: String?

    public var userType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.feishuUsers != nil {
            map["FeishuUsers"] = self.feishuUsers!
        }
        if self.isAdmin != nil {
            map["IsAdmin"] = self.isAdmin!
        }
        if self.isAuthAdmin != nil {
            map["IsAuthAdmin"] = self.isAuthAdmin!
        }
        if self.userGroupIds != nil {
            map["UserGroupIds"] = self.userGroupIds!
        }
        if self.userType != nil {
            map["UserType"] = self.userType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FeishuUsers"] as? String {
            self.feishuUsers = value
        }
        if let value = dict["IsAdmin"] as? Bool {
            self.isAdmin = value
        }
        if let value = dict["IsAuthAdmin"] as? Bool {
            self.isAuthAdmin = value
        }
        if let value = dict["UserGroupIds"] as? String {
            self.userGroupIds = value
        }
        if let value = dict["UserType"] as? Int32 {
            self.userType = value
        }
    }
}

public class BatchAddFeishuUsersResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class FailResults : Tea.TeaModel {
            public class FailInfos : Tea.TeaModel {
                public var code: String?

                public var codeDesc: String?

                public var input: String?

                public override init() {
                    super.init()
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
                    if self.codeDesc != nil {
                        map["CodeDesc"] = self.codeDesc!
                    }
                    if self.input != nil {
                        map["Input"] = self.input!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Code"] as? String {
                        self.code = value
                    }
                    if let value = dict["CodeDesc"] as? String {
                        self.codeDesc = value
                    }
                    if let value = dict["Input"] as? String {
                        self.input = value
                    }
                }
            }
            public var failInfos: [BatchAddFeishuUsersResponseBody.Result.FailResults.FailInfos]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.failInfos != nil {
                    var tmp : [Any] = []
                    for k in self.failInfos! {
                        tmp.append(k.toMap())
                    }
                    map["FailInfos"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FailInfos"] as? [Any?] {
                    var tmp : [BatchAddFeishuUsersResponseBody.Result.FailResults.FailInfos] = []
                    for v in value {
                        if v != nil {
                            var model = BatchAddFeishuUsersResponseBody.Result.FailResults.FailInfos()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.failInfos = tmp
                }
            }
        }
        public var failCount: Int32?

        public var failResults: [BatchAddFeishuUsersResponseBody.Result.FailResults]?

        public var okCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.failCount != nil {
                map["FailCount"] = self.failCount!
            }
            if self.failResults != nil {
                var tmp : [Any] = []
                for k in self.failResults! {
                    tmp.append(k.toMap())
                }
                map["FailResults"] = tmp
            }
            if self.okCount != nil {
                map["OkCount"] = self.okCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FailCount"] as? Int32 {
                self.failCount = value
            }
            if let value = dict["FailResults"] as? [Any?] {
                var tmp : [BatchAddFeishuUsersResponseBody.Result.FailResults] = []
                for v in value {
                    if v != nil {
                        var model = BatchAddFeishuUsersResponseBody.Result.FailResults()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.failResults = tmp
            }
            if let value = dict["OkCount"] as? Int32 {
                self.okCount = value
            }
        }
    }
    public var requestId: String?

    public var result: BatchAddFeishuUsersResponseBody.Result?

    public var success: Bool?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = BatchAddFeishuUsersResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class BatchAddFeishuUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchAddFeishuUsersResponseBody?

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
            var model = BatchAddFeishuUsersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CancelAuthorizationMenuRequest : Tea.TeaModel {
    public var dataPortalId: String?

    public var menuIds: String?

    public var userGroupIds: String?

    public var userIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataPortalId != nil {
            map["DataPortalId"] = self.dataPortalId!
        }
        if self.menuIds != nil {
            map["MenuIds"] = self.menuIds!
        }
        if self.userGroupIds != nil {
            map["UserGroupIds"] = self.userGroupIds!
        }
        if self.userIds != nil {
            map["UserIds"] = self.userIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataPortalId"] as? String {
            self.dataPortalId = value
        }
        if let value = dict["MenuIds"] as? String {
            self.menuIds = value
        }
        if let value = dict["UserGroupIds"] as? String {
            self.userGroupIds = value
        }
        if let value = dict["UserIds"] as? String {
            self.userIds = value
        }
    }
}

public class CancelAuthorizationMenuResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Int32?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Int32 {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CancelAuthorizationMenuResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelAuthorizationMenuResponseBody?

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
            var model = CancelAuthorizationMenuResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CancelCollectionRequest : Tea.TeaModel {
    public var userId: String?

    public var worksId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.worksId != nil {
            map["WorksId"] = self.worksId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["WorksId"] as? String {
            self.worksId = value
        }
    }
}

public class CancelCollectionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CancelCollectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelCollectionResponseBody?

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
            var model = CancelCollectionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CancelReportShareRequest : Tea.TeaModel {
    public var reportId: String?

    public var shareToIds: String?

    public var shareToType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.reportId != nil {
            map["ReportId"] = self.reportId!
        }
        if self.shareToIds != nil {
            map["ShareToIds"] = self.shareToIds!
        }
        if self.shareToType != nil {
            map["ShareToType"] = self.shareToType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ReportId"] as? String {
            self.reportId = value
        }
        if let value = dict["ShareToIds"] as? String {
            self.shareToIds = value
        }
        if let value = dict["ShareToType"] as? Int32 {
            self.shareToType = value
        }
    }
}

public class CancelReportShareResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CancelReportShareResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelReportShareResponseBody?

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
            var model = CancelReportShareResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChangeVisibilityModelRequest : Tea.TeaModel {
    public var dataPortalId: String?

    public var menuIds: String?

    public var showOnlyWithAccess: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataPortalId != nil {
            map["DataPortalId"] = self.dataPortalId!
        }
        if self.menuIds != nil {
            map["MenuIds"] = self.menuIds!
        }
        if self.showOnlyWithAccess != nil {
            map["ShowOnlyWithAccess"] = self.showOnlyWithAccess!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataPortalId"] as? String {
            self.dataPortalId = value
        }
        if let value = dict["MenuIds"] as? String {
            self.menuIds = value
        }
        if let value = dict["ShowOnlyWithAccess"] as? Bool {
            self.showOnlyWithAccess = value
        }
    }
}

public class ChangeVisibilityModelResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Int32?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Int32 {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ChangeVisibilityModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangeVisibilityModelResponseBody?

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
            var model = ChangeVisibilityModelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CheckDatasetExistedRequest : Tea.TeaModel {
    public var cubeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cubeId != nil {
            map["CubeId"] = self.cubeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CubeId"] as? String {
            self.cubeId = value
        }
    }
}

public class CheckDatasetExistedResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CheckDatasetExistedResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckDatasetExistedResponseBody?

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
            var model = CheckDatasetExistedResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CheckOrganizationMemberRequest : Tea.TeaModel {
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
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class CheckOrganizationMemberResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CheckOrganizationMemberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckOrganizationMemberResponseBody?

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
            var model = CheckOrganizationMemberResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CheckReadableRequest : Tea.TeaModel {
    public var userId: String?

    public var worksId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.worksId != nil {
            map["WorksId"] = self.worksId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["WorksId"] as? String {
            self.worksId = value
        }
    }
}

public class CheckReadableResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CheckReadableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckReadableResponseBody?

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
            var model = CheckReadableResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateCubeBySqlRequest : Tea.TeaModel {
    public var caption: String?

    public var customSql: String?

    public var dsId: String?

    public var userId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.caption != nil {
            map["Caption"] = self.caption!
        }
        if self.customSql != nil {
            map["CustomSql"] = self.customSql!
        }
        if self.dsId != nil {
            map["DsId"] = self.dsId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Caption"] as? String {
            self.caption = value
        }
        if let value = dict["CustomSql"] as? String {
            self.customSql = value
        }
        if let value = dict["DsId"] as? String {
            self.dsId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CreateCubeBySqlResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? String {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateCubeBySqlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCubeBySqlResponseBody?

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
            var model = CreateCubeBySqlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDatasetRequest : Tea.TeaModel {
    public var dsId: String?

    public var tableName: String?

    public var targetDirectoryId: String?

    public var userDefineCubeName: String?

    public var userId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dsId != nil {
            map["DsId"] = self.dsId!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        if self.targetDirectoryId != nil {
            map["TargetDirectoryId"] = self.targetDirectoryId!
        }
        if self.userDefineCubeName != nil {
            map["UserDefineCubeName"] = self.userDefineCubeName!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DsId"] as? String {
            self.dsId = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
        if let value = dict["TargetDirectoryId"] as? String {
            self.targetDirectoryId = value
        }
        if let value = dict["UserDefineCubeName"] as? String {
            self.userDefineCubeName = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class CreateDatasetResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? String {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateDatasetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDatasetResponseBody?

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
            var model = CreateDatasetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTicketRequest : Tea.TeaModel {
    public var accountName: String?

    public var accountType: Int32?

    public var cmptId: String?

    public var expireTime: Int32?

    public var globalParam: String?

    public var ticketNum: Int32?

    public var userId: String?

    public var watermarkParam: String?

    public var worksId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountName != nil {
            map["AccountName"] = self.accountName!
        }
        if self.accountType != nil {
            map["AccountType"] = self.accountType!
        }
        if self.cmptId != nil {
            map["CmptId"] = self.cmptId!
        }
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.globalParam != nil {
            map["GlobalParam"] = self.globalParam!
        }
        if self.ticketNum != nil {
            map["TicketNum"] = self.ticketNum!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.watermarkParam != nil {
            map["WatermarkParam"] = self.watermarkParam!
        }
        if self.worksId != nil {
            map["WorksId"] = self.worksId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountName"] as? String {
            self.accountName = value
        }
        if let value = dict["AccountType"] as? Int32 {
            self.accountType = value
        }
        if let value = dict["CmptId"] as? String {
            self.cmptId = value
        }
        if let value = dict["ExpireTime"] as? Int32 {
            self.expireTime = value
        }
        if let value = dict["GlobalParam"] as? String {
            self.globalParam = value
        }
        if let value = dict["TicketNum"] as? Int32 {
            self.ticketNum = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["WatermarkParam"] as? String {
            self.watermarkParam = value
        }
        if let value = dict["WorksId"] as? String {
            self.worksId = value
        }
    }
}

public class CreateTicketResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? String {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateTicketResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTicketResponseBody?

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
            var model = CreateTicketResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTicket4CopilotRequest : Tea.TeaModel {
    public var accountName: String?

    public var accountType: Int32?

    public var copilotId: String?

    public var expireTime: Int32?

    public var ticketNum: Int32?

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
        if self.accountName != nil {
            map["AccountName"] = self.accountName!
        }
        if self.accountType != nil {
            map["AccountType"] = self.accountType!
        }
        if self.copilotId != nil {
            map["CopilotId"] = self.copilotId!
        }
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.ticketNum != nil {
            map["TicketNum"] = self.ticketNum!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountName"] as? String {
            self.accountName = value
        }
        if let value = dict["AccountType"] as? Int32 {
            self.accountType = value
        }
        if let value = dict["CopilotId"] as? String {
            self.copilotId = value
        }
        if let value = dict["ExpireTime"] as? Int32 {
            self.expireTime = value
        }
        if let value = dict["TicketNum"] as? Int32 {
            self.ticketNum = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class CreateTicket4CopilotResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? String {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateTicket4CopilotResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTicket4CopilotResponseBody?

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
            var model = CreateTicket4CopilotResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateUserGroupRequest : Tea.TeaModel {
    public var parentUserGroupId: String?

    public var userGroupDescription: String?

    public var userGroupId: String?

    public var userGroupName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.parentUserGroupId != nil {
            map["ParentUserGroupId"] = self.parentUserGroupId!
        }
        if self.userGroupDescription != nil {
            map["UserGroupDescription"] = self.userGroupDescription!
        }
        if self.userGroupId != nil {
            map["UserGroupId"] = self.userGroupId!
        }
        if self.userGroupName != nil {
            map["UserGroupName"] = self.userGroupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ParentUserGroupId"] as? String {
            self.parentUserGroupId = value
        }
        if let value = dict["UserGroupDescription"] as? String {
            self.userGroupDescription = value
        }
        if let value = dict["UserGroupId"] as? String {
            self.userGroupId = value
        }
        if let value = dict["UserGroupName"] as? String {
            self.userGroupName = value
        }
    }
}

public class CreateUserGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? String {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateUserGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateUserGroupResponseBody?

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
            var model = CreateUserGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateWorkspaceRequest : Tea.TeaModel {
    public var allowPublish: Bool?

    public var allowShare: Bool?

    public var allowViewAll: Bool?

    public var defaultShareToAll: Bool?

    public var onlyAdminCreateDatasource: Bool?

    public var useComment: Bool?

    public var workspaceDescription: String?

    public var workspaceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowPublish != nil {
            map["AllowPublish"] = self.allowPublish!
        }
        if self.allowShare != nil {
            map["AllowShare"] = self.allowShare!
        }
        if self.allowViewAll != nil {
            map["AllowViewAll"] = self.allowViewAll!
        }
        if self.defaultShareToAll != nil {
            map["DefaultShareToAll"] = self.defaultShareToAll!
        }
        if self.onlyAdminCreateDatasource != nil {
            map["OnlyAdminCreateDatasource"] = self.onlyAdminCreateDatasource!
        }
        if self.useComment != nil {
            map["UseComment"] = self.useComment!
        }
        if self.workspaceDescription != nil {
            map["WorkspaceDescription"] = self.workspaceDescription!
        }
        if self.workspaceName != nil {
            map["WorkspaceName"] = self.workspaceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllowPublish"] as? Bool {
            self.allowPublish = value
        }
        if let value = dict["AllowShare"] as? Bool {
            self.allowShare = value
        }
        if let value = dict["AllowViewAll"] as? Bool {
            self.allowViewAll = value
        }
        if let value = dict["DefaultShareToAll"] as? Bool {
            self.defaultShareToAll = value
        }
        if let value = dict["OnlyAdminCreateDatasource"] as? Bool {
            self.onlyAdminCreateDatasource = value
        }
        if let value = dict["UseComment"] as? Bool {
            self.useComment = value
        }
        if let value = dict["WorkspaceDescription"] as? String {
            self.workspaceDescription = value
        }
        if let value = dict["WorkspaceName"] as? String {
            self.workspaceName = value
        }
    }
}

public class CreateWorkspaceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? String {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateWorkspaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateWorkspaceResponseBody?

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
            var model = CreateWorkspaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DataInterpretationRequest : Tea.TeaModel {
    public var data: String?

    public var modelCode: String?

    public var promptForceOverride: Bool?

    public var userPrompt: String?

    public var userQuestion: String?

    public override init() {
        super.init()
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
        if self.modelCode != nil {
            map["ModelCode"] = self.modelCode!
        }
        if self.promptForceOverride != nil {
            map["PromptForceOverride"] = self.promptForceOverride!
        }
        if self.userPrompt != nil {
            map["UserPrompt"] = self.userPrompt!
        }
        if self.userQuestion != nil {
            map["UserQuestion"] = self.userQuestion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["ModelCode"] as? String {
            self.modelCode = value
        }
        if let value = dict["PromptForceOverride"] as? Bool {
            self.promptForceOverride = value
        }
        if let value = dict["UserPrompt"] as? String {
            self.userPrompt = value
        }
        if let value = dict["UserQuestion"] as? String {
            self.userQuestion = value
        }
    }
}

public class DataInterpretationResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? String {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DataInterpretationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DataInterpretationResponseBody?

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
            var model = DataInterpretationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DataSetBloodRequest : Tea.TeaModel {
    public var dataSetIds: String?

    public var userId: String?

    public var worksType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataSetIds != nil {
            map["DataSetIds"] = self.dataSetIds!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.worksType != nil {
            map["WorksType"] = self.worksType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataSetIds"] as? String {
            self.dataSetIds = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["WorksType"] as? String {
            self.worksType = value
        }
    }
}

public class DataSetBloodResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var worksId: String?

        public var worksType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.worksId != nil {
                map["WorksId"] = self.worksId!
            }
            if self.worksType != nil {
                map["WorksType"] = self.worksType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["WorksId"] as? String {
                self.worksId = value
            }
            if let value = dict["WorksType"] as? String {
                self.worksType = value
            }
        }
    }
    public var requestId: String?

    public var result: [DataSetBloodResponseBody.Result]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [Any?] {
            var tmp : [DataSetBloodResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = DataSetBloodResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DataSetBloodResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DataSetBloodResponseBody?

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
            var model = DataSetBloodResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DataSourceBloodRequest : Tea.TeaModel {
    public var dataSourceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataSourceId != nil {
            map["DataSourceId"] = self.dataSourceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataSourceId"] as? String {
            self.dataSourceId = value
        }
    }
}

public class DataSourceBloodResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String] {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DataSourceBloodResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DataSourceBloodResponseBody?

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
            var model = DataSourceBloodResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DelayTicketExpireTimeRequest : Tea.TeaModel {
    public var expireTime: Int32?

    public var ticket: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.ticket != nil {
            map["Ticket"] = self.ticket!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExpireTime"] as? Int32 {
            self.expireTime = value
        }
        if let value = dict["Ticket"] as? String {
            self.ticket = value
        }
    }
}

public class DelayTicketExpireTimeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DelayTicketExpireTimeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DelayTicketExpireTimeResponseBody?

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
            var model = DelayTicketExpireTimeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDataLevelPermissionRuleUsersRequest : Tea.TeaModel {
    public var deleteUserModel: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deleteUserModel != nil {
            map["DeleteUserModel"] = self.deleteUserModel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeleteUserModel"] as? String {
            self.deleteUserModel = value
        }
    }
}

public class DeleteDataLevelPermissionRuleUsersResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteDataLevelPermissionRuleUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDataLevelPermissionRuleUsersResponseBody?

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
            var model = DeleteDataLevelPermissionRuleUsersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDataLevelRuleConfigRequest : Tea.TeaModel {
    public var cubeId: String?

    public var ruleId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cubeId != nil {
            map["CubeId"] = self.cubeId!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CubeId"] as? String {
            self.cubeId = value
        }
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
        }
    }
}

public class DeleteDataLevelRuleConfigResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteDataLevelRuleConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDataLevelRuleConfigResponseBody?

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
            var model = DeleteDataLevelRuleConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteTicketRequest : Tea.TeaModel {
    public var ticket: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ticket != nil {
            map["Ticket"] = self.ticket!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Ticket"] as? String {
            self.ticket = value
        }
    }
}

public class DeleteTicketResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteTicketResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTicketResponseBody?

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
            var model = DeleteTicketResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteUserRequest : Tea.TeaModel {
    public var transferUserId: String?

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
        if self.transferUserId != nil {
            map["TransferUserId"] = self.transferUserId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["TransferUserId"] as? String {
            self.transferUserId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class DeleteUserResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUserResponseBody?

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
            var model = DeleteUserResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteUserFromWorkspaceRequest : Tea.TeaModel {
    public var userId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class DeleteUserFromWorkspaceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteUserFromWorkspaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUserFromWorkspaceResponseBody?

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
            var model = DeleteUserFromWorkspaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteUserGroupRequest : Tea.TeaModel {
    public var userGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userGroupId != nil {
            map["UserGroupId"] = self.userGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserGroupId"] as? String {
            self.userGroupId = value
        }
    }
}

public class DeleteUserGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteUserGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUserGroupResponseBody?

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
            var model = DeleteUserGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteUserGroupMemberRequest : Tea.TeaModel {
    public var userGroupId: String?

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
        if self.userGroupId != nil {
            map["UserGroupId"] = self.userGroupId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserGroupId"] as? String {
            self.userGroupId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class DeleteUserGroupMemberResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteUserGroupMemberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUserGroupMemberResponseBody?

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
            var model = DeleteUserGroupMemberResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteUserGroupMembersRequest : Tea.TeaModel {
    public var userGroupIds: String?

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
        if self.userGroupIds != nil {
            map["UserGroupIds"] = self.userGroupIds!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserGroupIds"] as? String {
            self.userGroupIds = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class DeleteUserGroupMembersResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteUserGroupMembersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUserGroupMembersResponseBody?

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
            var model = DeleteUserGroupMembersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteUserTagMetaRequest : Tea.TeaModel {
    public var tagId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.tagId != nil {
            map["TagId"] = self.tagId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["TagId"] as? String {
            self.tagId = value
        }
    }
}

public class DeleteUserTagMetaResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteUserTagMetaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUserTagMetaResponseBody?

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
            var model = DeleteUserTagMetaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDataSourceConnectionInfoRequest : Tea.TeaModel {
    public var dsId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dsId != nil {
            map["DsId"] = self.dsId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DsId"] as? String {
            self.dsId = value
        }
    }
}

public class GetDataSourceConnectionInfoResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var address: String?

        public var authLevel: String?

        public var creatorId: String?

        public var dsId: String?

        public var dsType: String?

        public var dsVersion: String?

        public var instance: String?

        public var instanceId: String?

        public var modifyUser: String?

        public var noSasl: Bool?

        public var parentDsType: String?

        public var port: String?

        public var project: String?

        public var schema: String?

        public var showName: String?

        public var workspaceId: String?

        public override init() {
            super.init()
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
            if self.authLevel != nil {
                map["AuthLevel"] = self.authLevel!
            }
            if self.creatorId != nil {
                map["CreatorId"] = self.creatorId!
            }
            if self.dsId != nil {
                map["DsId"] = self.dsId!
            }
            if self.dsType != nil {
                map["DsType"] = self.dsType!
            }
            if self.dsVersion != nil {
                map["DsVersion"] = self.dsVersion!
            }
            if self.instance != nil {
                map["Instance"] = self.instance!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.modifyUser != nil {
                map["ModifyUser"] = self.modifyUser!
            }
            if self.noSasl != nil {
                map["NoSasl"] = self.noSasl!
            }
            if self.parentDsType != nil {
                map["ParentDsType"] = self.parentDsType!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.project != nil {
                map["Project"] = self.project!
            }
            if self.schema != nil {
                map["Schema"] = self.schema!
            }
            if self.showName != nil {
                map["ShowName"] = self.showName!
            }
            if self.workspaceId != nil {
                map["WorkspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Address"] as? String {
                self.address = value
            }
            if let value = dict["AuthLevel"] as? String {
                self.authLevel = value
            }
            if let value = dict["CreatorId"] as? String {
                self.creatorId = value
            }
            if let value = dict["DsId"] as? String {
                self.dsId = value
            }
            if let value = dict["DsType"] as? String {
                self.dsType = value
            }
            if let value = dict["DsVersion"] as? String {
                self.dsVersion = value
            }
            if let value = dict["Instance"] as? String {
                self.instance = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["ModifyUser"] as? String {
                self.modifyUser = value
            }
            if let value = dict["NoSasl"] as? Bool {
                self.noSasl = value
            }
            if let value = dict["ParentDsType"] as? String {
                self.parentDsType = value
            }
            if let value = dict["Port"] as? String {
                self.port = value
            }
            if let value = dict["Project"] as? String {
                self.project = value
            }
            if let value = dict["Schema"] as? String {
                self.schema = value
            }
            if let value = dict["ShowName"] as? String {
                self.showName = value
            }
            if let value = dict["WorkspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var requestId: String?

    public var result: GetDataSourceConnectionInfoResponseBody.Result?

    public var success: Bool?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = GetDataSourceConnectionInfoResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetDataSourceConnectionInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDataSourceConnectionInfoResponseBody?

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
            var model = GetDataSourceConnectionInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetMailTaskStatusRequest : Tea.TeaModel {
    public var mailId: String?

    public var taskId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.mailId != nil {
            map["MailId"] = self.mailId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MailId"] as? String {
            self.mailId = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class GetMailTaskStatusResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var execTime: String?

        public var mailId: String?

        public var status: String?

        public var taskId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.execTime != nil {
                map["execTime"] = self.execTime!
            }
            if self.mailId != nil {
                map["mailId"] = self.mailId!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["execTime"] as? String {
                self.execTime = value
            }
            if let value = dict["mailId"] as? String {
                self.mailId = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["taskId"] as? Int64 {
                self.taskId = value
            }
        }
    }
    public var requestId: String?

    public var result: [GetMailTaskStatusResponseBody.Result]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [Any?] {
            var tmp : [GetMailTaskStatusResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = GetMailTaskStatusResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetMailTaskStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMailTaskStatusResponseBody?

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
            var model = GetMailTaskStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetUserGroupInfoRequest : Tea.TeaModel {
    public var keyword: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
    }
}

public class GetUserGroupInfoResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var createTime: String?

        public var createUser: String?

        public var identifiedPath: String?

        public var modifiedTime: String?

        public var modifyUser: String?

        public var parentUsergroupId: String?

        public var usergroupDesc: String?

        public var usergroupId: String?

        public var usergroupName: String?

        public override init() {
            super.init()
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
            if self.createUser != nil {
                map["CreateUser"] = self.createUser!
            }
            if self.identifiedPath != nil {
                map["IdentifiedPath"] = self.identifiedPath!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.modifyUser != nil {
                map["ModifyUser"] = self.modifyUser!
            }
            if self.parentUsergroupId != nil {
                map["ParentUsergroupId"] = self.parentUsergroupId!
            }
            if self.usergroupDesc != nil {
                map["UsergroupDesc"] = self.usergroupDesc!
            }
            if self.usergroupId != nil {
                map["UsergroupId"] = self.usergroupId!
            }
            if self.usergroupName != nil {
                map["UsergroupName"] = self.usergroupName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["CreateUser"] as? String {
                self.createUser = value
            }
            if let value = dict["IdentifiedPath"] as? String {
                self.identifiedPath = value
            }
            if let value = dict["ModifiedTime"] as? String {
                self.modifiedTime = value
            }
            if let value = dict["ModifyUser"] as? String {
                self.modifyUser = value
            }
            if let value = dict["ParentUsergroupId"] as? String {
                self.parentUsergroupId = value
            }
            if let value = dict["UsergroupDesc"] as? String {
                self.usergroupDesc = value
            }
            if let value = dict["UsergroupId"] as? String {
                self.usergroupId = value
            }
            if let value = dict["UsergroupName"] as? String {
                self.usergroupName = value
            }
        }
    }
    public var requestId: String?

    public var result: [GetUserGroupInfoResponseBody.Result]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [Any?] {
            var tmp : [GetUserGroupInfoResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = GetUserGroupInfoResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetUserGroupInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserGroupInfoResponseBody?

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
            var model = GetUserGroupInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetWorksEmbedListRequest : Tea.TeaModel {
    public var keyword: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var worksType: String?

    public var wsId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.worksType != nil {
            map["WorksType"] = self.worksType!
        }
        if self.wsId != nil {
            map["WsId"] = self.wsId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["WorksType"] as? String {
            self.worksType = value
        }
        if let value = dict["WsId"] as? String {
            self.wsId = value
        }
    }
}

public class GetWorksEmbedListResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var embedTime: String?

            public var worksId: String?

            public var worksName: String?

            public var worksType: String?

            public var workspaceId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.embedTime != nil {
                    map["EmbedTime"] = self.embedTime!
                }
                if self.worksId != nil {
                    map["WorksId"] = self.worksId!
                }
                if self.worksName != nil {
                    map["WorksName"] = self.worksName!
                }
                if self.worksType != nil {
                    map["WorksType"] = self.worksType!
                }
                if self.workspaceId != nil {
                    map["WorkspaceId"] = self.workspaceId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EmbedTime"] as? String {
                    self.embedTime = value
                }
                if let value = dict["WorksId"] as? String {
                    self.worksId = value
                }
                if let value = dict["WorksName"] as? String {
                    self.worksName = value
                }
                if let value = dict["WorksType"] as? String {
                    self.worksType = value
                }
                if let value = dict["WorkspaceId"] as? String {
                    self.workspaceId = value
                }
            }
        }
        public var data: [GetWorksEmbedListResponseBody.Result.Data]?

        public var pageNo: Int64?

        public var pageSize: Int64?

        public var totalNum: Int64?

        public var totalPages: Int64?

        public override init() {
            super.init()
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
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["Data"] = tmp
            }
            if self.pageNo != nil {
                map["PageNo"] = self.pageNo!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalNum != nil {
                map["TotalNum"] = self.totalNum!
            }
            if self.totalPages != nil {
                map["TotalPages"] = self.totalPages!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? [Any?] {
                var tmp : [GetWorksEmbedListResponseBody.Result.Data] = []
                for v in value {
                    if v != nil {
                        var model = GetWorksEmbedListResponseBody.Result.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["PageNo"] as? Int64 {
                self.pageNo = value
            }
            if let value = dict["PageSize"] as? Int64 {
                self.pageSize = value
            }
            if let value = dict["TotalNum"] as? Int64 {
                self.totalNum = value
            }
            if let value = dict["TotalPages"] as? Int64 {
                self.totalPages = value
            }
        }
    }
    public var requestId: String?

    public var result: GetWorksEmbedListResponseBody.Result?

    public var success: Bool?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = GetWorksEmbedListResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetWorksEmbedListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWorksEmbedListResponseBody?

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
            var model = GetWorksEmbedListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAccelerationOfWorkspaceRequest : Tea.TeaModel {
    public var creatorId: String?

    public var cubeName: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.creatorId != nil {
            map["CreatorId"] = self.creatorId!
        }
        if self.cubeName != nil {
            map["CubeName"] = self.cubeName!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreatorId"] as? String {
            self.creatorId = value
        }
        if let value = dict["CubeName"] as? String {
            self.cubeName = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListAccelerationOfWorkspaceResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var creatorName: String?

            public var cubeId: String?

            public var cubeName: String?

            public var enableQuickindexTime: String?

            public var jobHistoryId: String?

            public var jobId: String?

            public var jobStatus: Int32?

            public var lastModifyTime: String?

            public var size: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.creatorName != nil {
                    map["CreatorName"] = self.creatorName!
                }
                if self.cubeId != nil {
                    map["CubeId"] = self.cubeId!
                }
                if self.cubeName != nil {
                    map["CubeName"] = self.cubeName!
                }
                if self.enableQuickindexTime != nil {
                    map["EnableQuickindexTime"] = self.enableQuickindexTime!
                }
                if self.jobHistoryId != nil {
                    map["JobHistoryId"] = self.jobHistoryId!
                }
                if self.jobId != nil {
                    map["JobId"] = self.jobId!
                }
                if self.jobStatus != nil {
                    map["JobStatus"] = self.jobStatus!
                }
                if self.lastModifyTime != nil {
                    map["LastModifyTime"] = self.lastModifyTime!
                }
                if self.size != nil {
                    map["Size"] = self.size!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreatorName"] as? String {
                    self.creatorName = value
                }
                if let value = dict["CubeId"] as? String {
                    self.cubeId = value
                }
                if let value = dict["CubeName"] as? String {
                    self.cubeName = value
                }
                if let value = dict["EnableQuickindexTime"] as? String {
                    self.enableQuickindexTime = value
                }
                if let value = dict["JobHistoryId"] as? String {
                    self.jobHistoryId = value
                }
                if let value = dict["JobId"] as? String {
                    self.jobId = value
                }
                if let value = dict["JobStatus"] as? Int32 {
                    self.jobStatus = value
                }
                if let value = dict["LastModifyTime"] as? String {
                    self.lastModifyTime = value
                }
                if let value = dict["Size"] as? String {
                    self.size = value
                }
            }
        }
        public var data: [ListAccelerationOfWorkspaceResponseBody.Result.Data]?

        public var next: Int32?

        public var pageNum: Int32?

        public var pageSize: Int32?

        public var pre: Int32?

        public var totalNum: Int32?

        public var totalPages: Int32?

        public override init() {
            super.init()
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
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["Data"] = tmp
            }
            if self.next != nil {
                map["Next"] = self.next!
            }
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.pre != nil {
                map["Pre"] = self.pre!
            }
            if self.totalNum != nil {
                map["TotalNum"] = self.totalNum!
            }
            if self.totalPages != nil {
                map["TotalPages"] = self.totalPages!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? [Any?] {
                var tmp : [ListAccelerationOfWorkspaceResponseBody.Result.Data] = []
                for v in value {
                    if v != nil {
                        var model = ListAccelerationOfWorkspaceResponseBody.Result.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["Next"] as? Int32 {
                self.next = value
            }
            if let value = dict["PageNum"] as? Int32 {
                self.pageNum = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["Pre"] as? Int32 {
                self.pre = value
            }
            if let value = dict["TotalNum"] as? Int32 {
                self.totalNum = value
            }
            if let value = dict["TotalPages"] as? Int32 {
                self.totalPages = value
            }
        }
    }
    public var requestId: String?

    public var result: ListAccelerationOfWorkspaceResponseBody.Result?

    public var success: Bool?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = ListAccelerationOfWorkspaceResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListAccelerationOfWorkspaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAccelerationOfWorkspaceResponseBody?

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
            var model = ListAccelerationOfWorkspaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListApiDatasourceRequest : Tea.TeaModel {
    public var keyWord: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyWord != nil {
            map["KeyWord"] = self.keyWord!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KeyWord"] as? String {
            self.keyWord = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListApiDatasourceResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var apiId: String?

            public var body: String?

            public var dataSize: Double?

            public var dateUpdateTime: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var jobId: String?

            public var parameters: String?

            public var showName: String?

            public var statusType: Int32?

            public override init() {
                super.init()
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
                if self.body != nil {
                    map["Body"] = self.body!
                }
                if self.dataSize != nil {
                    map["DataSize"] = self.dataSize!
                }
                if self.dateUpdateTime != nil {
                    map["DateUpdateTime"] = self.dateUpdateTime!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.jobId != nil {
                    map["JobId"] = self.jobId!
                }
                if self.parameters != nil {
                    map["Parameters"] = self.parameters!
                }
                if self.showName != nil {
                    map["ShowName"] = self.showName!
                }
                if self.statusType != nil {
                    map["StatusType"] = self.statusType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ApiId"] as? String {
                    self.apiId = value
                }
                if let value = dict["Body"] as? String {
                    self.body = value
                }
                if let value = dict["DataSize"] as? Double {
                    self.dataSize = value
                }
                if let value = dict["DateUpdateTime"] as? String {
                    self.dateUpdateTime = value
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["JobId"] as? String {
                    self.jobId = value
                }
                if let value = dict["Parameters"] as? String {
                    self.parameters = value
                }
                if let value = dict["ShowName"] as? String {
                    self.showName = value
                }
                if let value = dict["StatusType"] as? Int32 {
                    self.statusType = value
                }
            }
        }
        public var data: [ListApiDatasourceResponseBody.Result.Data]?

        public var pageNum: Int32?

        public var pageSize: Int32?

        public var totalNum: Int32?

        public override init() {
            super.init()
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
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["Data"] = tmp
            }
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalNum != nil {
                map["TotalNum"] = self.totalNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? [Any?] {
                var tmp : [ListApiDatasourceResponseBody.Result.Data] = []
                for v in value {
                    if v != nil {
                        var model = ListApiDatasourceResponseBody.Result.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["PageNum"] as? Int32 {
                self.pageNum = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalNum"] as? Int32 {
                self.totalNum = value
            }
        }
    }
    public var requestId: String?

    public var result: ListApiDatasourceResponseBody.Result?

    public var success: Bool?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = ListApiDatasourceResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListApiDatasourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListApiDatasourceResponseBody?

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
            var model = ListApiDatasourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListByUserGroupIdRequest : Tea.TeaModel {
    public var userGroupIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userGroupIds != nil {
            map["UserGroupIds"] = self.userGroupIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserGroupIds"] as? String {
            self.userGroupIds = value
        }
    }
}

public class ListByUserGroupIdResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class UserGroupModels : Tea.TeaModel {
            public var createTime: String?

            public var createUser: String?

            public var identifiedPath: String?

            public var modifiedTime: String?

            public var modifyUser: String?

            public var parentUsergroupId: String?

            public var usergroupDesc: String?

            public var usergroupId: String?

            public var usergroupName: String?

            public override init() {
                super.init()
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
                if self.createUser != nil {
                    map["CreateUser"] = self.createUser!
                }
                if self.identifiedPath != nil {
                    map["IdentifiedPath"] = self.identifiedPath!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.modifyUser != nil {
                    map["ModifyUser"] = self.modifyUser!
                }
                if self.parentUsergroupId != nil {
                    map["ParentUsergroupId"] = self.parentUsergroupId!
                }
                if self.usergroupDesc != nil {
                    map["UsergroupDesc"] = self.usergroupDesc!
                }
                if self.usergroupId != nil {
                    map["UsergroupId"] = self.usergroupId!
                }
                if self.usergroupName != nil {
                    map["UsergroupName"] = self.usergroupName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["CreateUser"] as? String {
                    self.createUser = value
                }
                if let value = dict["IdentifiedPath"] as? String {
                    self.identifiedPath = value
                }
                if let value = dict["ModifiedTime"] as? String {
                    self.modifiedTime = value
                }
                if let value = dict["ModifyUser"] as? String {
                    self.modifyUser = value
                }
                if let value = dict["ParentUsergroupId"] as? String {
                    self.parentUsergroupId = value
                }
                if let value = dict["UsergroupDesc"] as? String {
                    self.usergroupDesc = value
                }
                if let value = dict["UsergroupId"] as? String {
                    self.usergroupId = value
                }
                if let value = dict["UsergroupName"] as? String {
                    self.usergroupName = value
                }
            }
        }
        public var failedUserGroupIds: [String]?

        public var userGroupModels: [ListByUserGroupIdResponseBody.Result.UserGroupModels]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.failedUserGroupIds != nil {
                map["FailedUserGroupIds"] = self.failedUserGroupIds!
            }
            if self.userGroupModels != nil {
                var tmp : [Any] = []
                for k in self.userGroupModels! {
                    tmp.append(k.toMap())
                }
                map["UserGroupModels"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FailedUserGroupIds"] as? [String] {
                self.failedUserGroupIds = value
            }
            if let value = dict["UserGroupModels"] as? [Any?] {
                var tmp : [ListByUserGroupIdResponseBody.Result.UserGroupModels] = []
                for v in value {
                    if v != nil {
                        var model = ListByUserGroupIdResponseBody.Result.UserGroupModels()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.userGroupModels = tmp
            }
        }
    }
    public var requestId: String?

    public var result: ListByUserGroupIdResponseBody.Result?

    public var success: Bool?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = ListByUserGroupIdResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListByUserGroupIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListByUserGroupIdResponseBody?

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
            var model = ListByUserGroupIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListCollectionsRequest : Tea.TeaModel {
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
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class ListCollectionsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var favoriteId: Int32?

        public var ownerId: String?

        public var worksId: String?

        public var worksName: String?

        public var worksType: String?

        public var workspaceId: String?

        public var workspaceName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.favoriteId != nil {
                map["FavoriteId"] = self.favoriteId!
            }
            if self.ownerId != nil {
                map["OwnerId"] = self.ownerId!
            }
            if self.worksId != nil {
                map["WorksId"] = self.worksId!
            }
            if self.worksName != nil {
                map["WorksName"] = self.worksName!
            }
            if self.worksType != nil {
                map["WorksType"] = self.worksType!
            }
            if self.workspaceId != nil {
                map["WorkspaceId"] = self.workspaceId!
            }
            if self.workspaceName != nil {
                map["WorkspaceName"] = self.workspaceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FavoriteId"] as? Int32 {
                self.favoriteId = value
            }
            if let value = dict["OwnerId"] as? String {
                self.ownerId = value
            }
            if let value = dict["WorksId"] as? String {
                self.worksId = value
            }
            if let value = dict["WorksName"] as? String {
                self.worksName = value
            }
            if let value = dict["WorksType"] as? String {
                self.worksType = value
            }
            if let value = dict["WorkspaceId"] as? String {
                self.workspaceId = value
            }
            if let value = dict["WorkspaceName"] as? String {
                self.workspaceName = value
            }
        }
    }
    public var requestId: String?

    public var result: [ListCollectionsResponseBody.Result]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [Any?] {
            var tmp : [ListCollectionsResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListCollectionsResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListCollectionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCollectionsResponseBody?

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
            var model = ListCollectionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListCubeDataLevelPermissionConfigRequest : Tea.TeaModel {
    public var cubeId: String?

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
        if self.cubeId != nil {
            map["CubeId"] = self.cubeId!
        }
        if self.ruleType != nil {
            map["RuleType"] = self.ruleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CubeId"] as? String {
            self.cubeId = value
        }
        if let value = dict["RuleType"] as? String {
            self.ruleType = value
        }
    }
}

public class ListCubeDataLevelPermissionConfigResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? String {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListCubeDataLevelPermissionConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCubeDataLevelPermissionConfigResponseBody?

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
            var model = ListCubeDataLevelPermissionConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDataLevelPermissionWhiteListRequest : Tea.TeaModel {
    public var cubeId: String?

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
        if self.cubeId != nil {
            map["CubeId"] = self.cubeId!
        }
        if self.ruleType != nil {
            map["RuleType"] = self.ruleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CubeId"] as? String {
            self.cubeId = value
        }
        if let value = dict["RuleType"] as? String {
            self.ruleType = value
        }
    }
}

public class ListDataLevelPermissionWhiteListResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class UsersModel : Tea.TeaModel {
            public var userGroups: [String]?

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
                if self.userGroups != nil {
                    map["UserGroups"] = self.userGroups!
                }
                if self.users != nil {
                    map["Users"] = self.users!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["UserGroups"] as? [String] {
                    self.userGroups = value
                }
                if let value = dict["Users"] as? [String] {
                    self.users = value
                }
            }
        }
        public var cubeId: String?

        public var ruleType: String?

        public var usersModel: ListDataLevelPermissionWhiteListResponseBody.Result.UsersModel?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.usersModel?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cubeId != nil {
                map["CubeId"] = self.cubeId!
            }
            if self.ruleType != nil {
                map["RuleType"] = self.ruleType!
            }
            if self.usersModel != nil {
                map["UsersModel"] = self.usersModel?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CubeId"] as? String {
                self.cubeId = value
            }
            if let value = dict["RuleType"] as? String {
                self.ruleType = value
            }
            if let value = dict["UsersModel"] as? [String: Any?] {
                var model = ListDataLevelPermissionWhiteListResponseBody.Result.UsersModel()
                model.fromMap(value)
                self.usersModel = model
            }
        }
    }
    public var requestId: String?

    public var result: ListDataLevelPermissionWhiteListResponseBody.Result?

    public var success: Bool?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = ListDataLevelPermissionWhiteListResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListDataLevelPermissionWhiteListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataLevelPermissionWhiteListResponseBody?

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
            var model = ListDataLevelPermissionWhiteListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDataSourceRequest : Tea.TeaModel {
    public var dsType: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dsType != nil {
            map["DsType"] = self.dsType!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DsType"] as? String {
            self.dsType = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListDataSourceResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var creatorId: String?

        public var creatorName: String?

        public var datasourceId: String?

        public var dsType: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var parentDsType: String?

        public var showName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.creatorId != nil {
                map["CreatorId"] = self.creatorId!
            }
            if self.creatorName != nil {
                map["CreatorName"] = self.creatorName!
            }
            if self.datasourceId != nil {
                map["DatasourceId"] = self.datasourceId!
            }
            if self.dsType != nil {
                map["DsType"] = self.dsType!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.parentDsType != nil {
                map["ParentDsType"] = self.parentDsType!
            }
            if self.showName != nil {
                map["ShowName"] = self.showName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreatorId"] as? String {
                self.creatorId = value
            }
            if let value = dict["CreatorName"] as? String {
                self.creatorName = value
            }
            if let value = dict["DatasourceId"] as? String {
                self.datasourceId = value
            }
            if let value = dict["DsType"] as? String {
                self.dsType = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["ParentDsType"] as? String {
                self.parentDsType = value
            }
            if let value = dict["ShowName"] as? String {
                self.showName = value
            }
        }
    }
    public var requestId: String?

    public var result: [ListDataSourceResponseBody.Result]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [Any?] {
            var tmp : [ListDataSourceResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListDataSourceResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListDataSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataSourceResponseBody?

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
            var model = ListDataSourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListFavoriteReportsRequest : Tea.TeaModel {
    public var keyword: String?

    public var pageSize: Int32?

    public var treeType: String?

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
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.treeType != nil {
            map["TreeType"] = self.treeType!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["TreeType"] as? String {
            self.treeType = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class ListFavoriteReportsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var favorite: Bool?

            public var favoriteDate: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var hasEditAuth: Bool?

            public var hasViewAuth: Bool?

            public var name: String?

            public var ownerName: String?

            public var ownerNum: String?

            public var publishStatus: Int32?

            public var treeId: String?

            public var type: String?

            public var workspaceId: String?

            public var workspaceName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.favorite != nil {
                    map["Favorite"] = self.favorite!
                }
                if self.favoriteDate != nil {
                    map["FavoriteDate"] = self.favoriteDate!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.hasEditAuth != nil {
                    map["HasEditAuth"] = self.hasEditAuth!
                }
                if self.hasViewAuth != nil {
                    map["HasViewAuth"] = self.hasViewAuth!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.ownerName != nil {
                    map["OwnerName"] = self.ownerName!
                }
                if self.ownerNum != nil {
                    map["OwnerNum"] = self.ownerNum!
                }
                if self.publishStatus != nil {
                    map["PublishStatus"] = self.publishStatus!
                }
                if self.treeId != nil {
                    map["TreeId"] = self.treeId!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.workspaceId != nil {
                    map["WorkspaceId"] = self.workspaceId!
                }
                if self.workspaceName != nil {
                    map["WorkspaceName"] = self.workspaceName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Favorite"] as? Bool {
                    self.favorite = value
                }
                if let value = dict["FavoriteDate"] as? String {
                    self.favoriteDate = value
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["HasEditAuth"] as? Bool {
                    self.hasEditAuth = value
                }
                if let value = dict["HasViewAuth"] as? Bool {
                    self.hasViewAuth = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["OwnerName"] as? String {
                    self.ownerName = value
                }
                if let value = dict["OwnerNum"] as? String {
                    self.ownerNum = value
                }
                if let value = dict["PublishStatus"] as? Int32 {
                    self.publishStatus = value
                }
                if let value = dict["TreeId"] as? String {
                    self.treeId = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["WorkspaceId"] as? String {
                    self.workspaceId = value
                }
                if let value = dict["WorkspaceName"] as? String {
                    self.workspaceName = value
                }
            }
        }
        public var data: [ListFavoriteReportsResponseBody.Result.Data]?

        public var pageNum: Int32?

        public var pageSize: Int32?

        public var totalNum: Int32?

        public var totalPages: Int32?

        public override init() {
            super.init()
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
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["Data"] = tmp
            }
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalNum != nil {
                map["TotalNum"] = self.totalNum!
            }
            if self.totalPages != nil {
                map["TotalPages"] = self.totalPages!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? [Any?] {
                var tmp : [ListFavoriteReportsResponseBody.Result.Data] = []
                for v in value {
                    if v != nil {
                        var model = ListFavoriteReportsResponseBody.Result.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["PageNum"] as? Int32 {
                self.pageNum = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalNum"] as? Int32 {
                self.totalNum = value
            }
            if let value = dict["TotalPages"] as? Int32 {
                self.totalPages = value
            }
        }
    }
    public var requestId: String?

    public var result: ListFavoriteReportsResponseBody.Result?

    public var success: Bool?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = ListFavoriteReportsResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListFavoriteReportsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFavoriteReportsResponseBody?

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
            var model = ListFavoriteReportsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListOrganizationRoleUsersRequest : Tea.TeaModel {
    public var keyword: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var roleId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.roleId != nil {
            map["RoleId"] = self.roleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RoleId"] as? Int64 {
            self.roleId = value
        }
    }
}

public class ListOrganizationRoleUsersResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var nickName: String?

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
                if self.nickName != nil {
                    map["NickName"] = self.nickName!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["NickName"] as? String {
                    self.nickName = value
                }
                if let value = dict["UserId"] as? String {
                    self.userId = value
                }
            }
        }
        public var data: [ListOrganizationRoleUsersResponseBody.Result.Data]?

        public var pageNum: Int32?

        public var pageSize: Int32?

        public var totalNum: Int32?

        public var totalPages: Int32?

        public override init() {
            super.init()
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
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["Data"] = tmp
            }
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalNum != nil {
                map["TotalNum"] = self.totalNum!
            }
            if self.totalPages != nil {
                map["TotalPages"] = self.totalPages!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? [Any?] {
                var tmp : [ListOrganizationRoleUsersResponseBody.Result.Data] = []
                for v in value {
                    if v != nil {
                        var model = ListOrganizationRoleUsersResponseBody.Result.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["PageNum"] as? Int32 {
                self.pageNum = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalNum"] as? Int32 {
                self.totalNum = value
            }
            if let value = dict["TotalPages"] as? Int32 {
                self.totalPages = value
            }
        }
    }
    public var requestId: String?

    public var result: ListOrganizationRoleUsersResponseBody.Result?

    public var success: Bool?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = ListOrganizationRoleUsersResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListOrganizationRoleUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOrganizationRoleUsersResponseBody?

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
            var model = ListOrganizationRoleUsersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListOrganizationRolesResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class AuthConfigList : Tea.TeaModel {
            public var authKey: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.authKey != nil {
                    map["AuthKey"] = self.authKey!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AuthKey"] as? String {
                    self.authKey = value
                }
            }
        }
        public var authConfigList: [ListOrganizationRolesResponseBody.Result.AuthConfigList]?

        public var isSystemRole: Bool?

        public var roleId: Int64?

        public var roleName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authConfigList != nil {
                var tmp : [Any] = []
                for k in self.authConfigList! {
                    tmp.append(k.toMap())
                }
                map["AuthConfigList"] = tmp
            }
            if self.isSystemRole != nil {
                map["IsSystemRole"] = self.isSystemRole!
            }
            if self.roleId != nil {
                map["RoleId"] = self.roleId!
            }
            if self.roleName != nil {
                map["RoleName"] = self.roleName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AuthConfigList"] as? [Any?] {
                var tmp : [ListOrganizationRolesResponseBody.Result.AuthConfigList] = []
                for v in value {
                    if v != nil {
                        var model = ListOrganizationRolesResponseBody.Result.AuthConfigList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.authConfigList = tmp
            }
            if let value = dict["IsSystemRole"] as? Bool {
                self.isSystemRole = value
            }
            if let value = dict["RoleId"] as? Int64 {
                self.roleId = value
            }
            if let value = dict["RoleName"] as? String {
                self.roleName = value
            }
        }
    }
    public var requestId: String?

    public var result: [ListOrganizationRolesResponseBody.Result]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [Any?] {
            var tmp : [ListOrganizationRolesResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListOrganizationRolesResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListOrganizationRolesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOrganizationRolesResponseBody?

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
            var model = ListOrganizationRolesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListPortalMenuAuthorizationRequest : Tea.TeaModel {
    public var dataPortalId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataPortalId != nil {
            map["DataPortalId"] = self.dataPortalId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataPortalId"] as? String {
            self.dataPortalId = value
        }
    }
}

public class ListPortalMenuAuthorizationResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Receivers : Tea.TeaModel {
            public var authPointsValue: Int32?

            public var receiverId: String?

            public var receiverType: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.authPointsValue != nil {
                    map["AuthPointsValue"] = self.authPointsValue!
                }
                if self.receiverId != nil {
                    map["ReceiverId"] = self.receiverId!
                }
                if self.receiverType != nil {
                    map["ReceiverType"] = self.receiverType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AuthPointsValue"] as? Int32 {
                    self.authPointsValue = value
                }
                if let value = dict["ReceiverId"] as? String {
                    self.receiverId = value
                }
                if let value = dict["ReceiverType"] as? Int32 {
                    self.receiverType = value
                }
            }
        }
        public var menuId: String?

        public var receivers: [ListPortalMenuAuthorizationResponseBody.Result.Receivers]?

        public var showOnlyWithAccess: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.menuId != nil {
                map["MenuId"] = self.menuId!
            }
            if self.receivers != nil {
                var tmp : [Any] = []
                for k in self.receivers! {
                    tmp.append(k.toMap())
                }
                map["Receivers"] = tmp
            }
            if self.showOnlyWithAccess != nil {
                map["ShowOnlyWithAccess"] = self.showOnlyWithAccess!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MenuId"] as? String {
                self.menuId = value
            }
            if let value = dict["Receivers"] as? [Any?] {
                var tmp : [ListPortalMenuAuthorizationResponseBody.Result.Receivers] = []
                for v in value {
                    if v != nil {
                        var model = ListPortalMenuAuthorizationResponseBody.Result.Receivers()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.receivers = tmp
            }
            if let value = dict["ShowOnlyWithAccess"] as? Bool {
                self.showOnlyWithAccess = value
            }
        }
    }
    public var requestId: String?

    public var result: [ListPortalMenuAuthorizationResponseBody.Result]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [Any?] {
            var tmp : [ListPortalMenuAuthorizationResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListPortalMenuAuthorizationResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListPortalMenuAuthorizationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPortalMenuAuthorizationResponseBody?

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
            var model = ListPortalMenuAuthorizationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListPortalMenusRequest : Tea.TeaModel {
    public var dataPortalId: String?

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
        if self.dataPortalId != nil {
            map["DataPortalId"] = self.dataPortalId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataPortalId"] as? String {
            self.dataPortalId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class ListPortalMenusResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? String {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListPortalMenusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPortalMenusResponseBody?

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
            var model = ListPortalMenusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListRecentViewReportsRequest : Tea.TeaModel {
    public var keyword: String?

    public var offsetDay: Int32?

    public var pageSize: Int32?

    public var queryMode: String?

    public var treeType: String?

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
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.offsetDay != nil {
            map["OffsetDay"] = self.offsetDay!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queryMode != nil {
            map["QueryMode"] = self.queryMode!
        }
        if self.treeType != nil {
            map["TreeType"] = self.treeType!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["OffsetDay"] as? Int32 {
            self.offsetDay = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["QueryMode"] as? String {
            self.queryMode = value
        }
        if let value = dict["TreeType"] as? String {
            self.treeType = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class ListRecentViewReportsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var favorite: Bool?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var hasEditAuth: Bool?

            public var hasViewAuth: Bool?

            public var latestViewTime: String?

            public var name: String?

            public var ownerName: String?

            public var ownerNum: String?

            public var publishStatus: Int32?

            public var treeId: String?

            public var type: String?

            public var viewCount: Int64?

            public var workspaceId: String?

            public var workspaceName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.favorite != nil {
                    map["Favorite"] = self.favorite!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.hasEditAuth != nil {
                    map["HasEditAuth"] = self.hasEditAuth!
                }
                if self.hasViewAuth != nil {
                    map["HasViewAuth"] = self.hasViewAuth!
                }
                if self.latestViewTime != nil {
                    map["LatestViewTime"] = self.latestViewTime!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.ownerName != nil {
                    map["OwnerName"] = self.ownerName!
                }
                if self.ownerNum != nil {
                    map["OwnerNum"] = self.ownerNum!
                }
                if self.publishStatus != nil {
                    map["PublishStatus"] = self.publishStatus!
                }
                if self.treeId != nil {
                    map["TreeId"] = self.treeId!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.viewCount != nil {
                    map["ViewCount"] = self.viewCount!
                }
                if self.workspaceId != nil {
                    map["WorkspaceId"] = self.workspaceId!
                }
                if self.workspaceName != nil {
                    map["WorkspaceName"] = self.workspaceName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Favorite"] as? Bool {
                    self.favorite = value
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["HasEditAuth"] as? Bool {
                    self.hasEditAuth = value
                }
                if let value = dict["HasViewAuth"] as? Bool {
                    self.hasViewAuth = value
                }
                if let value = dict["LatestViewTime"] as? String {
                    self.latestViewTime = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["OwnerName"] as? String {
                    self.ownerName = value
                }
                if let value = dict["OwnerNum"] as? String {
                    self.ownerNum = value
                }
                if let value = dict["PublishStatus"] as? Int32 {
                    self.publishStatus = value
                }
                if let value = dict["TreeId"] as? String {
                    self.treeId = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["ViewCount"] as? Int64 {
                    self.viewCount = value
                }
                if let value = dict["WorkspaceId"] as? String {
                    self.workspaceId = value
                }
                if let value = dict["WorkspaceName"] as? String {
                    self.workspaceName = value
                }
            }
        }
        public var attention: String?

        public var data: [ListRecentViewReportsResponseBody.Result.Data]?

        public var pageNum: Int32?

        public var pageSize: Int32?

        public var totalNum: Int32?

        public var totalPages: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attention != nil {
                map["Attention"] = self.attention!
            }
            if self.data != nil {
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["Data"] = tmp
            }
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalNum != nil {
                map["TotalNum"] = self.totalNum!
            }
            if self.totalPages != nil {
                map["TotalPages"] = self.totalPages!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Attention"] as? String {
                self.attention = value
            }
            if let value = dict["Data"] as? [Any?] {
                var tmp : [ListRecentViewReportsResponseBody.Result.Data] = []
                for v in value {
                    if v != nil {
                        var model = ListRecentViewReportsResponseBody.Result.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["PageNum"] as? Int32 {
                self.pageNum = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalNum"] as? Int32 {
                self.totalNum = value
            }
            if let value = dict["TotalPages"] as? Int32 {
                self.totalPages = value
            }
        }
    }
    public var requestId: String?

    public var result: ListRecentViewReportsResponseBody.Result?

    public var success: Bool?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = ListRecentViewReportsResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListRecentViewReportsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRecentViewReportsResponseBody?

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
            var model = ListRecentViewReportsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSharedReportsRequest : Tea.TeaModel {
    public var keyword: String?

    public var pageSize: Int32?

    public var treeType: String?

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
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.treeType != nil {
            map["TreeType"] = self.treeType!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["TreeType"] as? String {
            self.treeType = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class ListSharedReportsResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var favorite: Bool?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var hasEditAuth: Bool?

            public var hasViewAuth: Bool?

            public var name: String?

            public var ownerName: String?

            public var ownerNum: String?

            public var publishStatus: Int32?

            public var treeId: String?

            public var type: String?

            public var workspaceId: String?

            public var workspaceName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.favorite != nil {
                    map["Favorite"] = self.favorite!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.hasEditAuth != nil {
                    map["HasEditAuth"] = self.hasEditAuth!
                }
                if self.hasViewAuth != nil {
                    map["HasViewAuth"] = self.hasViewAuth!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.ownerName != nil {
                    map["OwnerName"] = self.ownerName!
                }
                if self.ownerNum != nil {
                    map["OwnerNum"] = self.ownerNum!
                }
                if self.publishStatus != nil {
                    map["PublishStatus"] = self.publishStatus!
                }
                if self.treeId != nil {
                    map["TreeId"] = self.treeId!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.workspaceId != nil {
                    map["WorkspaceId"] = self.workspaceId!
                }
                if self.workspaceName != nil {
                    map["WorkspaceName"] = self.workspaceName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Favorite"] as? Bool {
                    self.favorite = value
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["HasEditAuth"] as? Bool {
                    self.hasEditAuth = value
                }
                if let value = dict["HasViewAuth"] as? Bool {
                    self.hasViewAuth = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["OwnerName"] as? String {
                    self.ownerName = value
                }
                if let value = dict["OwnerNum"] as? String {
                    self.ownerNum = value
                }
                if let value = dict["PublishStatus"] as? Int32 {
                    self.publishStatus = value
                }
                if let value = dict["TreeId"] as? String {
                    self.treeId = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["WorkspaceId"] as? String {
                    self.workspaceId = value
                }
                if let value = dict["WorkspaceName"] as? String {
                    self.workspaceName = value
                }
            }
        }
        public var data: [ListSharedReportsResponseBody.Result.Data]?

        public var pageNum: Int32?

        public var pageSize: Int32?

        public var totalNum: Int32?

        public var totalPages: Int32?

        public override init() {
            super.init()
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
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["Data"] = tmp
            }
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalNum != nil {
                map["TotalNum"] = self.totalNum!
            }
            if self.totalPages != nil {
                map["TotalPages"] = self.totalPages!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? [Any?] {
                var tmp : [ListSharedReportsResponseBody.Result.Data] = []
                for v in value {
                    if v != nil {
                        var model = ListSharedReportsResponseBody.Result.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["PageNum"] as? Int32 {
                self.pageNum = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalNum"] as? Int32 {
                self.totalNum = value
            }
            if let value = dict["TotalPages"] as? Int32 {
                self.totalPages = value
            }
        }
    }
    public var requestId: String?

    public var result: ListSharedReportsResponseBody.Result?

    public var success: Bool?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = ListSharedReportsResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListSharedReportsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSharedReportsResponseBody?

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
            var model = ListSharedReportsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListUserGroupsByUserIdRequest : Tea.TeaModel {
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
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class ListUserGroupsByUserIdResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var createTime: String?

        public var createUser: String?

        public var identifiedPath: String?

        public var modifiedTime: String?

        public var modifyUser: String?

        public var parentUsergroupId: String?

        public var usergroupDesc: String?

        public var usergroupId: String?

        public var usergroupName: String?

        public override init() {
            super.init()
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
            if self.createUser != nil {
                map["CreateUser"] = self.createUser!
            }
            if self.identifiedPath != nil {
                map["IdentifiedPath"] = self.identifiedPath!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.modifyUser != nil {
                map["ModifyUser"] = self.modifyUser!
            }
            if self.parentUsergroupId != nil {
                map["ParentUsergroupId"] = self.parentUsergroupId!
            }
            if self.usergroupDesc != nil {
                map["UsergroupDesc"] = self.usergroupDesc!
            }
            if self.usergroupId != nil {
                map["UsergroupId"] = self.usergroupId!
            }
            if self.usergroupName != nil {
                map["UsergroupName"] = self.usergroupName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["CreateUser"] as? String {
                self.createUser = value
            }
            if let value = dict["IdentifiedPath"] as? String {
                self.identifiedPath = value
            }
            if let value = dict["ModifiedTime"] as? String {
                self.modifiedTime = value
            }
            if let value = dict["ModifyUser"] as? String {
                self.modifyUser = value
            }
            if let value = dict["ParentUsergroupId"] as? String {
                self.parentUsergroupId = value
            }
            if let value = dict["UsergroupDesc"] as? String {
                self.usergroupDesc = value
            }
            if let value = dict["UsergroupId"] as? String {
                self.usergroupId = value
            }
            if let value = dict["UsergroupName"] as? String {
                self.usergroupName = value
            }
        }
    }
    public var requestId: String?

    public var result: [ListUserGroupsByUserIdResponseBody.Result]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [Any?] {
            var tmp : [ListUserGroupsByUserIdResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListUserGroupsByUserIdResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListUserGroupsByUserIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUserGroupsByUserIdResponseBody?

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
            var model = ListUserGroupsByUserIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListWorkspaceRoleUsersRequest : Tea.TeaModel {
    public var keyword: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var roleId: Int64?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.roleId != nil {
            map["RoleId"] = self.roleId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RoleId"] as? Int64 {
            self.roleId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListWorkspaceRoleUsersResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var nickName: String?

            public var userId: String?

            public var workspaceId: String?

            public var workspaceName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.nickName != nil {
                    map["NickName"] = self.nickName!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                if self.workspaceId != nil {
                    map["WorkspaceId"] = self.workspaceId!
                }
                if self.workspaceName != nil {
                    map["WorkspaceName"] = self.workspaceName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["NickName"] as? String {
                    self.nickName = value
                }
                if let value = dict["UserId"] as? String {
                    self.userId = value
                }
                if let value = dict["WorkspaceId"] as? String {
                    self.workspaceId = value
                }
                if let value = dict["WorkspaceName"] as? String {
                    self.workspaceName = value
                }
            }
        }
        public var data: [ListWorkspaceRoleUsersResponseBody.Result.Data]?

        public var pageNum: Int32?

        public var pageSize: Int32?

        public var totalNum: Int32?

        public var totalPages: Int32?

        public override init() {
            super.init()
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
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["Data"] = tmp
            }
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalNum != nil {
                map["TotalNum"] = self.totalNum!
            }
            if self.totalPages != nil {
                map["TotalPages"] = self.totalPages!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? [Any?] {
                var tmp : [ListWorkspaceRoleUsersResponseBody.Result.Data] = []
                for v in value {
                    if v != nil {
                        var model = ListWorkspaceRoleUsersResponseBody.Result.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["PageNum"] as? Int32 {
                self.pageNum = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalNum"] as? Int32 {
                self.totalNum = value
            }
            if let value = dict["TotalPages"] as? Int32 {
                self.totalPages = value
            }
        }
    }
    public var requestId: String?

    public var result: ListWorkspaceRoleUsersResponseBody.Result?

    public var success: Bool?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = ListWorkspaceRoleUsersResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListWorkspaceRoleUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListWorkspaceRoleUsersResponseBody?

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
            var model = ListWorkspaceRoleUsersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListWorkspaceRolesRequest : Tea.TeaModel {
    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListWorkspaceRolesResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class AuthConfigList : Tea.TeaModel {
            public var actionAuthKeys: [String]?

            public var authKey: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.actionAuthKeys != nil {
                    map["ActionAuthKeys"] = self.actionAuthKeys!
                }
                if self.authKey != nil {
                    map["AuthKey"] = self.authKey!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ActionAuthKeys"] as? [String] {
                    self.actionAuthKeys = value
                }
                if let value = dict["AuthKey"] as? String {
                    self.authKey = value
                }
            }
        }
        public var authConfigList: [ListWorkspaceRolesResponseBody.Result.AuthConfigList]?

        public var isSystemRole: Bool?

        public var roleId: Int64?

        public var roleName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authConfigList != nil {
                var tmp : [Any] = []
                for k in self.authConfigList! {
                    tmp.append(k.toMap())
                }
                map["AuthConfigList"] = tmp
            }
            if self.isSystemRole != nil {
                map["IsSystemRole"] = self.isSystemRole!
            }
            if self.roleId != nil {
                map["RoleId"] = self.roleId!
            }
            if self.roleName != nil {
                map["RoleName"] = self.roleName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AuthConfigList"] as? [Any?] {
                var tmp : [ListWorkspaceRolesResponseBody.Result.AuthConfigList] = []
                for v in value {
                    if v != nil {
                        var model = ListWorkspaceRolesResponseBody.Result.AuthConfigList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.authConfigList = tmp
            }
            if let value = dict["IsSystemRole"] as? Bool {
                self.isSystemRole = value
            }
            if let value = dict["RoleId"] as? Int64 {
                self.roleId = value
            }
            if let value = dict["RoleName"] as? String {
                self.roleName = value
            }
        }
    }
    public var requestId: String?

    public var result: [ListWorkspaceRolesResponseBody.Result]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [Any?] {
            var tmp : [ListWorkspaceRolesResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListWorkspaceRolesResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListWorkspaceRolesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListWorkspaceRolesResponseBody?

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
            var model = ListWorkspaceRolesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListWorkspaceUserRolesByUserIdRequest : Tea.TeaModel {
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
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class ListWorkspaceUserRolesByUserIdResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class RoleModel : Tea.TeaModel {
            public var roleCode: String?

            public var roleId: String?

            public var roleName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.roleCode != nil {
                    map["RoleCode"] = self.roleCode!
                }
                if self.roleId != nil {
                    map["RoleId"] = self.roleId!
                }
                if self.roleName != nil {
                    map["RoleName"] = self.roleName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RoleCode"] as? String {
                    self.roleCode = value
                }
                if let value = dict["RoleId"] as? String {
                    self.roleId = value
                }
                if let value = dict["RoleName"] as? String {
                    self.roleName = value
                }
            }
        }
        public var roleModel: ListWorkspaceUserRolesByUserIdResponseBody.Result.RoleModel?

        public var workspaceId: String?

        public var workspaceName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.roleModel?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.roleModel != nil {
                map["RoleModel"] = self.roleModel?.toMap()
            }
            if self.workspaceId != nil {
                map["WorkspaceId"] = self.workspaceId!
            }
            if self.workspaceName != nil {
                map["WorkspaceName"] = self.workspaceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RoleModel"] as? [String: Any?] {
                var model = ListWorkspaceUserRolesByUserIdResponseBody.Result.RoleModel()
                model.fromMap(value)
                self.roleModel = model
            }
            if let value = dict["WorkspaceId"] as? String {
                self.workspaceId = value
            }
            if let value = dict["WorkspaceName"] as? String {
                self.workspaceName = value
            }
        }
    }
    public var requestId: String?

    public var result: [ListWorkspaceUserRolesByUserIdResponseBody.Result]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [Any?] {
            var tmp : [ListWorkspaceUserRolesByUserIdResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = ListWorkspaceUserRolesByUserIdResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListWorkspaceUserRolesByUserIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListWorkspaceUserRolesByUserIdResponseBody?

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
            var model = ListWorkspaceUserRolesByUserIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ManualRunMailTaskRequest : Tea.TeaModel {
    public var mailId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.mailId != nil {
            map["MailId"] = self.mailId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MailId"] as? String {
            self.mailId = value
        }
    }
}

public class ManualRunMailTaskResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ManualRunMailTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ManualRunMailTaskResponseBody?

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
            var model = ManualRunMailTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyApiDatasourceParametersRequest : Tea.TeaModel {
    public var apiId: String?

    public var parameters: String?

    public var workspaceId: String?

    public override init() {
        super.init()
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
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiId"] as? String {
            self.apiId = value
        }
        if let value = dict["Parameters"] as? String {
            self.parameters = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ModifyApiDatasourceParametersResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ModifyApiDatasourceParametersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyApiDatasourceParametersResponseBody?

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
            var model = ModifyApiDatasourceParametersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyCopilotEmbedConfigRequest : Tea.TeaModel {
    public var agentName: String?

    public var copilotId: String?

    public var dataRange: String?

    public var moduleName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentName != nil {
            map["AgentName"] = self.agentName!
        }
        if self.copilotId != nil {
            map["CopilotId"] = self.copilotId!
        }
        if self.dataRange != nil {
            map["DataRange"] = self.dataRange!
        }
        if self.moduleName != nil {
            map["ModuleName"] = self.moduleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgentName"] as? String {
            self.agentName = value
        }
        if let value = dict["CopilotId"] as? String {
            self.copilotId = value
        }
        if let value = dict["DataRange"] as? String {
            self.dataRange = value
        }
        if let value = dict["ModuleName"] as? String {
            self.moduleName = value
        }
    }
}

public class ModifyCopilotEmbedConfigResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ModifyCopilotEmbedConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyCopilotEmbedConfigResponseBody?

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
            var model = ModifyCopilotEmbedConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyDashboardNl2sqlStatusRequest : Tea.TeaModel {
    public var dashboardIds: String?

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
        if self.dashboardIds != nil {
            map["DashboardIds"] = self.dashboardIds!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DashboardIds"] as? String {
            self.dashboardIds = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
    }
}

public class ModifyDashboardNl2sqlStatusResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: [String]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String] {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ModifyDashboardNl2sqlStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDashboardNl2sqlStatusResponseBody?

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
            var model = ModifyDashboardNl2sqlStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryAccelerationLogByCubeIdRequest : Tea.TeaModel {
    public var cubeId: String?

    public var endDate: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var startDate: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cubeId != nil {
            map["CubeId"] = self.cubeId!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CubeId"] as? String {
            self.cubeId = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
    }
}

public class QueryAccelerationLogByCubeIdResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var duration: String?

            public var jobHistoryId: String?

            public var jobId: String?

            public var jobStatus: String?

            public var jonStartDate: String?

            public var log: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.duration != nil {
                    map["Duration"] = self.duration!
                }
                if self.jobHistoryId != nil {
                    map["JobHistoryId"] = self.jobHistoryId!
                }
                if self.jobId != nil {
                    map["JobId"] = self.jobId!
                }
                if self.jobStatus != nil {
                    map["JobStatus"] = self.jobStatus!
                }
                if self.jonStartDate != nil {
                    map["JonStartDate"] = self.jonStartDate!
                }
                if self.log != nil {
                    map["Log"] = self.log!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Duration"] as? String {
                    self.duration = value
                }
                if let value = dict["JobHistoryId"] as? String {
                    self.jobHistoryId = value
                }
                if let value = dict["JobId"] as? String {
                    self.jobId = value
                }
                if let value = dict["JobStatus"] as? String {
                    self.jobStatus = value
                }
                if let value = dict["JonStartDate"] as? String {
                    self.jonStartDate = value
                }
                if let value = dict["Log"] as? String {
                    self.log = value
                }
            }
        }
        public var data: [QueryAccelerationLogByCubeIdResponseBody.Result.Data]?

        public var next: Int32?

        public var pageNum: Int32?

        public var pageSize: Int32?

        public var pre: Int32?

        public var totalNum: Int32?

        public var totalPages: Int32?

        public override init() {
            super.init()
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
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["Data"] = tmp
            }
            if self.next != nil {
                map["Next"] = self.next!
            }
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.pre != nil {
                map["Pre"] = self.pre!
            }
            if self.totalNum != nil {
                map["TotalNum"] = self.totalNum!
            }
            if self.totalPages != nil {
                map["TotalPages"] = self.totalPages!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? [Any?] {
                var tmp : [QueryAccelerationLogByCubeIdResponseBody.Result.Data] = []
                for v in value {
                    if v != nil {
                        var model = QueryAccelerationLogByCubeIdResponseBody.Result.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["Next"] as? Int32 {
                self.next = value
            }
            if let value = dict["PageNum"] as? Int32 {
                self.pageNum = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["Pre"] as? Int32 {
                self.pre = value
            }
            if let value = dict["TotalNum"] as? Int32 {
                self.totalNum = value
            }
            if let value = dict["TotalPages"] as? Int32 {
                self.totalPages = value
            }
        }
    }
    public var requestId: String?

    public var result: QueryAccelerationLogByCubeIdResponseBody.Result?

    public var success: Bool?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = QueryAccelerationLogByCubeIdResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryAccelerationLogByCubeIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryAccelerationLogByCubeIdResponseBody?

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
            var model = QueryAccelerationLogByCubeIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryApprovalInfoRequest : Tea.TeaModel {
    public var page: Int32?

    public var pageSize: Int32?

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
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
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
        if let value = dict["Page"] as? Int32 {
            self.page = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class QueryApprovalInfoResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var applicantId: String?

            public var applicantName: String?

            public var applicationId: String?

            public var applyReason: String?

            public var approverId: String?

            public var approverName: String?

            public var deleteFlag: Bool?

            public var expireDate: Int64?

            public var flagStatus: Int32?

            public var gmtCreate: Int64?

            public var gmtModified: Int64?

            public var handleReason: String?

            public var resourceId: String?

            public var resourceName: String?

            public var resourceType: String?

            public var workspaceName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.applicantId != nil {
                    map["ApplicantId"] = self.applicantId!
                }
                if self.applicantName != nil {
                    map["ApplicantName"] = self.applicantName!
                }
                if self.applicationId != nil {
                    map["ApplicationId"] = self.applicationId!
                }
                if self.applyReason != nil {
                    map["ApplyReason"] = self.applyReason!
                }
                if self.approverId != nil {
                    map["ApproverId"] = self.approverId!
                }
                if self.approverName != nil {
                    map["ApproverName"] = self.approverName!
                }
                if self.deleteFlag != nil {
                    map["DeleteFlag"] = self.deleteFlag!
                }
                if self.expireDate != nil {
                    map["ExpireDate"] = self.expireDate!
                }
                if self.flagStatus != nil {
                    map["FlagStatus"] = self.flagStatus!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.handleReason != nil {
                    map["HandleReason"] = self.handleReason!
                }
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                if self.resourceName != nil {
                    map["ResourceName"] = self.resourceName!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                if self.workspaceName != nil {
                    map["WorkspaceName"] = self.workspaceName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ApplicantId"] as? String {
                    self.applicantId = value
                }
                if let value = dict["ApplicantName"] as? String {
                    self.applicantName = value
                }
                if let value = dict["ApplicationId"] as? String {
                    self.applicationId = value
                }
                if let value = dict["ApplyReason"] as? String {
                    self.applyReason = value
                }
                if let value = dict["ApproverId"] as? String {
                    self.approverId = value
                }
                if let value = dict["ApproverName"] as? String {
                    self.approverName = value
                }
                if let value = dict["DeleteFlag"] as? Bool {
                    self.deleteFlag = value
                }
                if let value = dict["ExpireDate"] as? Int64 {
                    self.expireDate = value
                }
                if let value = dict["FlagStatus"] as? Int32 {
                    self.flagStatus = value
                }
                if let value = dict["GmtCreate"] as? Int64 {
                    self.gmtCreate = value
                }
                if let value = dict["GmtModified"] as? Int64 {
                    self.gmtModified = value
                }
                if let value = dict["HandleReason"] as? String {
                    self.handleReason = value
                }
                if let value = dict["ResourceId"] as? String {
                    self.resourceId = value
                }
                if let value = dict["ResourceName"] as? String {
                    self.resourceName = value
                }
                if let value = dict["ResourceType"] as? String {
                    self.resourceType = value
                }
                if let value = dict["WorkspaceName"] as? String {
                    self.workspaceName = value
                }
            }
        }
        public var data: [QueryApprovalInfoResponseBody.Result.Data]?

        public var page: Int32?

        public var pageSize: Int32?

        public var start: Int32?

        public var total: Int32?

        public var totalPages: Int32?

        public override init() {
            super.init()
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
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["Data"] = tmp
            }
            if self.page != nil {
                map["Page"] = self.page!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.start != nil {
                map["Start"] = self.start!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            if self.totalPages != nil {
                map["TotalPages"] = self.totalPages!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? [Any?] {
                var tmp : [QueryApprovalInfoResponseBody.Result.Data] = []
                for v in value {
                    if v != nil {
                        var model = QueryApprovalInfoResponseBody.Result.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["Page"] as? Int32 {
                self.page = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["Start"] as? Int32 {
                self.start = value
            }
            if let value = dict["Total"] as? Int32 {
                self.total = value
            }
            if let value = dict["TotalPages"] as? Int32 {
                self.totalPages = value
            }
        }
    }
    public var requestId: String?

    public var result: QueryApprovalInfoResponseBody.Result?

    public var success: Bool?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = QueryApprovalInfoResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryApprovalInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryApprovalInfoResponseBody?

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
            var model = QueryApprovalInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryAuditLogRequest : Tea.TeaModel {
    public var accessSourceFlag: String?

    public var endDate: String?

    public var logType: String?

    public var operatorId: String?

    public var operatorTypes: String?

    public var resourceType: String?

    public var startDate: String?

    public var userAccessDevice: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessSourceFlag != nil {
            map["AccessSourceFlag"] = self.accessSourceFlag!
        }
        if self.endDate != nil {
            map["EndDate"] = self.endDate!
        }
        if self.logType != nil {
            map["LogType"] = self.logType!
        }
        if self.operatorId != nil {
            map["OperatorId"] = self.operatorId!
        }
        if self.operatorTypes != nil {
            map["OperatorTypes"] = self.operatorTypes!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.startDate != nil {
            map["StartDate"] = self.startDate!
        }
        if self.userAccessDevice != nil {
            map["UserAccessDevice"] = self.userAccessDevice!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessSourceFlag"] as? String {
            self.accessSourceFlag = value
        }
        if let value = dict["EndDate"] as? String {
            self.endDate = value
        }
        if let value = dict["LogType"] as? String {
            self.logType = value
        }
        if let value = dict["OperatorId"] as? String {
            self.operatorId = value
        }
        if let value = dict["OperatorTypes"] as? String {
            self.operatorTypes = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["StartDate"] as? String {
            self.startDate = value
        }
        if let value = dict["UserAccessDevice"] as? String {
            self.userAccessDevice = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class QueryAuditLogResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var gmtCreate: String?

        public var operatorAccountName: String?

        public var operatorName: String?

        public var operatorType: String?

        public var targetId: String?

        public var targetName: String?

        public var targetType: String?

        public var workspaceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.operatorAccountName != nil {
                map["OperatorAccountName"] = self.operatorAccountName!
            }
            if self.operatorName != nil {
                map["OperatorName"] = self.operatorName!
            }
            if self.operatorType != nil {
                map["OperatorType"] = self.operatorType!
            }
            if self.targetId != nil {
                map["TargetId"] = self.targetId!
            }
            if self.targetName != nil {
                map["TargetName"] = self.targetName!
            }
            if self.targetType != nil {
                map["TargetType"] = self.targetType!
            }
            if self.workspaceId != nil {
                map["WorkspaceId"] = self.workspaceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["OperatorAccountName"] as? String {
                self.operatorAccountName = value
            }
            if let value = dict["OperatorName"] as? String {
                self.operatorName = value
            }
            if let value = dict["OperatorType"] as? String {
                self.operatorType = value
            }
            if let value = dict["TargetId"] as? String {
                self.targetId = value
            }
            if let value = dict["TargetName"] as? String {
                self.targetName = value
            }
            if let value = dict["TargetType"] as? String {
                self.targetType = value
            }
            if let value = dict["WorkspaceId"] as? String {
                self.workspaceId = value
            }
        }
    }
    public var requestId: String?

    public var result: [QueryAuditLogResponseBody.Result]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [Any?] {
            var tmp : [QueryAuditLogResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = QueryAuditLogResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryAuditLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryAuditLogResponseBody?

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
            var model = QueryAuditLogResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryComponentPerformanceRequest : Tea.TeaModel {
    public var costTimeAvgMin: Int32?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var queryType: String?

    public var reportId: String?

    public var resourceType: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.costTimeAvgMin != nil {
            map["CostTimeAvgMin"] = self.costTimeAvgMin!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queryType != nil {
            map["QueryType"] = self.queryType!
        }
        if self.reportId != nil {
            map["ReportId"] = self.reportId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CostTimeAvgMin"] as? Int32 {
            self.costTimeAvgMin = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["QueryType"] as? String {
            self.queryType = value
        }
        if let value = dict["ReportId"] as? String {
            self.reportId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class QueryComponentPerformanceResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var cacheCostTimeAvg: Double?

        public var cacheQueryCount: Int32?

        public var componentId: String?

        public var componentName: String?

        public var costTimeAvg: Double?

        public var queryCount: Int32?

        public var queryCountAvg: Double?

        public var queryOverFivePercentNum: Double?

        public var queryOverFiveSecPercent: String?

        public var queryOverTenSecPercent: String?

        public var queryOverTenSecPercentNum: Double?

        public var queryTimeoutCount: Int32?

        public var queryTimeoutCountPercent: Double?

        public var quickIndexCostTimeAvg: Double?

        public var quickIndexQueryCount: Int32?

        public var repeatQueryPercent: String?

        public var repeatQueryPercentNum: Double?

        public var repeatSqlQueryCount: Int32?

        public var repeatSqlQueryPercent: String?

        public var reportId: String?

        public var reportName: String?

        public var reportType: String?

        public var workspaceId: String?

        public var workspaceName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cacheCostTimeAvg != nil {
                map["CacheCostTimeAvg"] = self.cacheCostTimeAvg!
            }
            if self.cacheQueryCount != nil {
                map["CacheQueryCount"] = self.cacheQueryCount!
            }
            if self.componentId != nil {
                map["ComponentId"] = self.componentId!
            }
            if self.componentName != nil {
                map["ComponentName"] = self.componentName!
            }
            if self.costTimeAvg != nil {
                map["CostTimeAvg"] = self.costTimeAvg!
            }
            if self.queryCount != nil {
                map["QueryCount"] = self.queryCount!
            }
            if self.queryCountAvg != nil {
                map["QueryCountAvg"] = self.queryCountAvg!
            }
            if self.queryOverFivePercentNum != nil {
                map["QueryOverFivePercentNum"] = self.queryOverFivePercentNum!
            }
            if self.queryOverFiveSecPercent != nil {
                map["QueryOverFiveSecPercent"] = self.queryOverFiveSecPercent!
            }
            if self.queryOverTenSecPercent != nil {
                map["QueryOverTenSecPercent"] = self.queryOverTenSecPercent!
            }
            if self.queryOverTenSecPercentNum != nil {
                map["QueryOverTenSecPercentNum"] = self.queryOverTenSecPercentNum!
            }
            if self.queryTimeoutCount != nil {
                map["QueryTimeoutCount"] = self.queryTimeoutCount!
            }
            if self.queryTimeoutCountPercent != nil {
                map["QueryTimeoutCountPercent"] = self.queryTimeoutCountPercent!
            }
            if self.quickIndexCostTimeAvg != nil {
                map["QuickIndexCostTimeAvg"] = self.quickIndexCostTimeAvg!
            }
            if self.quickIndexQueryCount != nil {
                map["QuickIndexQueryCount"] = self.quickIndexQueryCount!
            }
            if self.repeatQueryPercent != nil {
                map["RepeatQueryPercent"] = self.repeatQueryPercent!
            }
            if self.repeatQueryPercentNum != nil {
                map["RepeatQueryPercentNum"] = self.repeatQueryPercentNum!
            }
            if self.repeatSqlQueryCount != nil {
                map["RepeatSqlQueryCount"] = self.repeatSqlQueryCount!
            }
            if self.repeatSqlQueryPercent != nil {
                map["RepeatSqlQueryPercent"] = self.repeatSqlQueryPercent!
            }
            if self.reportId != nil {
                map["ReportId"] = self.reportId!
            }
            if self.reportName != nil {
                map["ReportName"] = self.reportName!
            }
            if self.reportType != nil {
                map["ReportType"] = self.reportType!
            }
            if self.workspaceId != nil {
                map["WorkspaceId"] = self.workspaceId!
            }
            if self.workspaceName != nil {
                map["WorkspaceName"] = self.workspaceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CacheCostTimeAvg"] as? Double {
                self.cacheCostTimeAvg = value
            }
            if let value = dict["CacheQueryCount"] as? Int32 {
                self.cacheQueryCount = value
            }
            if let value = dict["ComponentId"] as? String {
                self.componentId = value
            }
            if let value = dict["ComponentName"] as? String {
                self.componentName = value
            }
            if let value = dict["CostTimeAvg"] as? Double {
                self.costTimeAvg = value
            }
            if let value = dict["QueryCount"] as? Int32 {
                self.queryCount = value
            }
            if let value = dict["QueryCountAvg"] as? Double {
                self.queryCountAvg = value
            }
            if let value = dict["QueryOverFivePercentNum"] as? Double {
                self.queryOverFivePercentNum = value
            }
            if let value = dict["QueryOverFiveSecPercent"] as? String {
                self.queryOverFiveSecPercent = value
            }
            if let value = dict["QueryOverTenSecPercent"] as? String {
                self.queryOverTenSecPercent = value
            }
            if let value = dict["QueryOverTenSecPercentNum"] as? Double {
                self.queryOverTenSecPercentNum = value
            }
            if let value = dict["QueryTimeoutCount"] as? Int32 {
                self.queryTimeoutCount = value
            }
            if let value = dict["QueryTimeoutCountPercent"] as? Double {
                self.queryTimeoutCountPercent = value
            }
            if let value = dict["QuickIndexCostTimeAvg"] as? Double {
                self.quickIndexCostTimeAvg = value
            }
            if let value = dict["QuickIndexQueryCount"] as? Int32 {
                self.quickIndexQueryCount = value
            }
            if let value = dict["RepeatQueryPercent"] as? String {
                self.repeatQueryPercent = value
            }
            if let value = dict["RepeatQueryPercentNum"] as? Double {
                self.repeatQueryPercentNum = value
            }
            if let value = dict["RepeatSqlQueryCount"] as? Int32 {
                self.repeatSqlQueryCount = value
            }
            if let value = dict["RepeatSqlQueryPercent"] as? String {
                self.repeatSqlQueryPercent = value
            }
            if let value = dict["ReportId"] as? String {
                self.reportId = value
            }
            if let value = dict["ReportName"] as? String {
                self.reportName = value
            }
            if let value = dict["ReportType"] as? String {
                self.reportType = value
            }
            if let value = dict["WorkspaceId"] as? String {
                self.workspaceId = value
            }
            if let value = dict["WorkspaceName"] as? String {
                self.workspaceName = value
            }
        }
    }
    public var requestId: String?

    public var result: [QueryComponentPerformanceResponseBody.Result]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [Any?] {
            var tmp : [QueryComponentPerformanceResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = QueryComponentPerformanceResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryComponentPerformanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryComponentPerformanceResponseBody?

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
            var model = QueryComponentPerformanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryCopilotEmbedConfigRequest : Tea.TeaModel {
    public var keyword: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
    }
}

public class QueryCopilotEmbedConfigResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class DataRange : Tea.TeaModel {
            public var allCube: Bool?

            public var allTheme: Bool?

            public var llmCubes: [String]?

            public var themes: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allCube != nil {
                    map["AllCube"] = self.allCube!
                }
                if self.allTheme != nil {
                    map["AllTheme"] = self.allTheme!
                }
                if self.llmCubes != nil {
                    map["LlmCubes"] = self.llmCubes!
                }
                if self.themes != nil {
                    map["Themes"] = self.themes!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AllCube"] as? Bool {
                    self.allCube = value
                }
                if let value = dict["AllTheme"] as? Bool {
                    self.allTheme = value
                }
                if let value = dict["LlmCubes"] as? [String] {
                    self.llmCubes = value
                }
                if let value = dict["Themes"] as? [String] {
                    self.themes = value
                }
            }
        }
        public var agentName: String?

        public var copilotId: String?

        public var createUser: String?

        public var createUserName: String?

        public var dataRange: QueryCopilotEmbedConfigResponseBody.Result.DataRange?

        public var modifyUser: String?

        public var moduleName: String?

        public var showName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.dataRange?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.agentName != nil {
                map["AgentName"] = self.agentName!
            }
            if self.copilotId != nil {
                map["CopilotId"] = self.copilotId!
            }
            if self.createUser != nil {
                map["CreateUser"] = self.createUser!
            }
            if self.createUserName != nil {
                map["CreateUserName"] = self.createUserName!
            }
            if self.dataRange != nil {
                map["DataRange"] = self.dataRange?.toMap()
            }
            if self.modifyUser != nil {
                map["ModifyUser"] = self.modifyUser!
            }
            if self.moduleName != nil {
                map["ModuleName"] = self.moduleName!
            }
            if self.showName != nil {
                map["ShowName"] = self.showName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AgentName"] as? String {
                self.agentName = value
            }
            if let value = dict["CopilotId"] as? String {
                self.copilotId = value
            }
            if let value = dict["CreateUser"] as? String {
                self.createUser = value
            }
            if let value = dict["CreateUserName"] as? String {
                self.createUserName = value
            }
            if let value = dict["DataRange"] as? [String: Any?] {
                var model = QueryCopilotEmbedConfigResponseBody.Result.DataRange()
                model.fromMap(value)
                self.dataRange = model
            }
            if let value = dict["ModifyUser"] as? String {
                self.modifyUser = value
            }
            if let value = dict["ModuleName"] as? String {
                self.moduleName = value
            }
            if let value = dict["ShowName"] as? String {
                self.showName = value
            }
        }
    }
    public var requestId: String?

    public var result: [QueryCopilotEmbedConfigResponseBody.Result]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [Any?] {
            var tmp : [QueryCopilotEmbedConfigResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = QueryCopilotEmbedConfigResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryCopilotEmbedConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryCopilotEmbedConfigResponseBody?

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
            var model = QueryCopilotEmbedConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryCubeOptimizationRequest : Tea.TeaModel {
    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class QueryCubeOptimizationResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class CubePerformanceDiagnoseModel : Tea.TeaModel {
            public var cacheCostTimeAvg: Double?

            public var cacheQueryCount: Int32?

            public var costTimeAvg: Double?

            public var cubeId: String?

            public var cubeName: String?

            public var queryCount: Int32?

            public var queryCountAvg: Double?

            public var queryOverFivePercentNum: Double?

            public var queryOverFiveSecPercent: String?

            public var queryOverTenSecPercent: String?

            public var queryOverTenSecPercentNum: Double?

            public var queryTimeoutCount: Int32?

            public var queryTimeoutCountPercent: Double?

            public var quickIndexCostTimeAvg: Double?

            public var quickIndexQueryCount: Int32?

            public var repeatQueryPercent: String?

            public var repeatQueryPercentNum: Double?

            public var repeatSqlQueryCount: Int32?

            public var repeatSqlQueryPercent: String?

            public var workspaceId: String?

            public var workspaceName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cacheCostTimeAvg != nil {
                    map["CacheCostTimeAvg"] = self.cacheCostTimeAvg!
                }
                if self.cacheQueryCount != nil {
                    map["CacheQueryCount"] = self.cacheQueryCount!
                }
                if self.costTimeAvg != nil {
                    map["CostTimeAvg"] = self.costTimeAvg!
                }
                if self.cubeId != nil {
                    map["CubeId"] = self.cubeId!
                }
                if self.cubeName != nil {
                    map["CubeName"] = self.cubeName!
                }
                if self.queryCount != nil {
                    map["QueryCount"] = self.queryCount!
                }
                if self.queryCountAvg != nil {
                    map["QueryCountAvg"] = self.queryCountAvg!
                }
                if self.queryOverFivePercentNum != nil {
                    map["QueryOverFivePercentNum"] = self.queryOverFivePercentNum!
                }
                if self.queryOverFiveSecPercent != nil {
                    map["QueryOverFiveSecPercent"] = self.queryOverFiveSecPercent!
                }
                if self.queryOverTenSecPercent != nil {
                    map["QueryOverTenSecPercent"] = self.queryOverTenSecPercent!
                }
                if self.queryOverTenSecPercentNum != nil {
                    map["QueryOverTenSecPercentNum"] = self.queryOverTenSecPercentNum!
                }
                if self.queryTimeoutCount != nil {
                    map["QueryTimeoutCount"] = self.queryTimeoutCount!
                }
                if self.queryTimeoutCountPercent != nil {
                    map["QueryTimeoutCountPercent"] = self.queryTimeoutCountPercent!
                }
                if self.quickIndexCostTimeAvg != nil {
                    map["QuickIndexCostTimeAvg"] = self.quickIndexCostTimeAvg!
                }
                if self.quickIndexQueryCount != nil {
                    map["QuickIndexQueryCount"] = self.quickIndexQueryCount!
                }
                if self.repeatQueryPercent != nil {
                    map["RepeatQueryPercent"] = self.repeatQueryPercent!
                }
                if self.repeatQueryPercentNum != nil {
                    map["RepeatQueryPercentNum"] = self.repeatQueryPercentNum!
                }
                if self.repeatSqlQueryCount != nil {
                    map["RepeatSqlQueryCount"] = self.repeatSqlQueryCount!
                }
                if self.repeatSqlQueryPercent != nil {
                    map["RepeatSqlQueryPercent"] = self.repeatSqlQueryPercent!
                }
                if self.workspaceId != nil {
                    map["WorkspaceId"] = self.workspaceId!
                }
                if self.workspaceName != nil {
                    map["WorkspaceName"] = self.workspaceName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CacheCostTimeAvg"] as? Double {
                    self.cacheCostTimeAvg = value
                }
                if let value = dict["CacheQueryCount"] as? Int32 {
                    self.cacheQueryCount = value
                }
                if let value = dict["CostTimeAvg"] as? Double {
                    self.costTimeAvg = value
                }
                if let value = dict["CubeId"] as? String {
                    self.cubeId = value
                }
                if let value = dict["CubeName"] as? String {
                    self.cubeName = value
                }
                if let value = dict["QueryCount"] as? Int32 {
                    self.queryCount = value
                }
                if let value = dict["QueryCountAvg"] as? Double {
                    self.queryCountAvg = value
                }
                if let value = dict["QueryOverFivePercentNum"] as? Double {
                    self.queryOverFivePercentNum = value
                }
                if let value = dict["QueryOverFiveSecPercent"] as? String {
                    self.queryOverFiveSecPercent = value
                }
                if let value = dict["QueryOverTenSecPercent"] as? String {
                    self.queryOverTenSecPercent = value
                }
                if let value = dict["QueryOverTenSecPercentNum"] as? Double {
                    self.queryOverTenSecPercentNum = value
                }
                if let value = dict["QueryTimeoutCount"] as? Int32 {
                    self.queryTimeoutCount = value
                }
                if let value = dict["QueryTimeoutCountPercent"] as? Double {
                    self.queryTimeoutCountPercent = value
                }
                if let value = dict["QuickIndexCostTimeAvg"] as? Double {
                    self.quickIndexCostTimeAvg = value
                }
                if let value = dict["QuickIndexQueryCount"] as? Int32 {
                    self.quickIndexQueryCount = value
                }
                if let value = dict["RepeatQueryPercent"] as? String {
                    self.repeatQueryPercent = value
                }
                if let value = dict["RepeatQueryPercentNum"] as? Double {
                    self.repeatQueryPercentNum = value
                }
                if let value = dict["RepeatSqlQueryCount"] as? Int32 {
                    self.repeatSqlQueryCount = value
                }
                if let value = dict["RepeatSqlQueryPercent"] as? String {
                    self.repeatSqlQueryPercent = value
                }
                if let value = dict["WorkspaceId"] as? String {
                    self.workspaceId = value
                }
                if let value = dict["WorkspaceName"] as? String {
                    self.workspaceName = value
                }
            }
        }
        public var adviceType: String?

        public var cubePerformanceDiagnoseModel: QueryCubeOptimizationResponseBody.Result.CubePerformanceDiagnoseModel?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.cubePerformanceDiagnoseModel?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.adviceType != nil {
                map["AdviceType"] = self.adviceType!
            }
            if self.cubePerformanceDiagnoseModel != nil {
                map["CubePerformanceDiagnoseModel"] = self.cubePerformanceDiagnoseModel?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AdviceType"] as? String {
                self.adviceType = value
            }
            if let value = dict["CubePerformanceDiagnoseModel"] as? [String: Any?] {
                var model = QueryCubeOptimizationResponseBody.Result.CubePerformanceDiagnoseModel()
                model.fromMap(value)
                self.cubePerformanceDiagnoseModel = model
            }
        }
    }
    public var requestId: String?

    public var result: [QueryCubeOptimizationResponseBody.Result]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [Any?] {
            var tmp : [QueryCubeOptimizationResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = QueryCubeOptimizationResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryCubeOptimizationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryCubeOptimizationResponseBody?

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
            var model = QueryCubeOptimizationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryCubePerformanceRequest : Tea.TeaModel {
    public var costTimeAvgMin: Int32?

    public var cubeId: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var queryType: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.costTimeAvgMin != nil {
            map["CostTimeAvgMin"] = self.costTimeAvgMin!
        }
        if self.cubeId != nil {
            map["CubeId"] = self.cubeId!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queryType != nil {
            map["QueryType"] = self.queryType!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CostTimeAvgMin"] as? Int32 {
            self.costTimeAvgMin = value
        }
        if let value = dict["CubeId"] as? String {
            self.cubeId = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["QueryType"] as? String {
            self.queryType = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class QueryCubePerformanceResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var cacheCostTimeAvg: Double?

        public var cacheQueryCount: Int32?

        public var costTimeAvg: Double?

        public var cubeId: String?

        public var cubeName: String?

        public var queryCount: Int32?

        public var queryCountAvg: Double?

        public var queryOverFivePercentNum: Double?

        public var queryOverFiveSecPercent: String?

        public var queryOverTenSecPercent: String?

        public var queryOverTenSecPercentNum: Double?

        public var queryTimeoutCount: Int32?

        public var queryTimeoutCountPercent: Double?

        public var quickIndexCostTimeAvg: Double?

        public var quickIndexQueryCount: Int32?

        public var repeatQueryPercent: String?

        public var repeatQueryPercentNum: Double?

        public var repeatSqlQueryCount: Int32?

        public var repeatSqlQueryPercent: String?

        public var workspaceId: String?

        public var workspaceName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cacheCostTimeAvg != nil {
                map["CacheCostTimeAvg"] = self.cacheCostTimeAvg!
            }
            if self.cacheQueryCount != nil {
                map["CacheQueryCount"] = self.cacheQueryCount!
            }
            if self.costTimeAvg != nil {
                map["CostTimeAvg"] = self.costTimeAvg!
            }
            if self.cubeId != nil {
                map["CubeId"] = self.cubeId!
            }
            if self.cubeName != nil {
                map["CubeName"] = self.cubeName!
            }
            if self.queryCount != nil {
                map["QueryCount"] = self.queryCount!
            }
            if self.queryCountAvg != nil {
                map["QueryCountAvg"] = self.queryCountAvg!
            }
            if self.queryOverFivePercentNum != nil {
                map["QueryOverFivePercentNum"] = self.queryOverFivePercentNum!
            }
            if self.queryOverFiveSecPercent != nil {
                map["QueryOverFiveSecPercent"] = self.queryOverFiveSecPercent!
            }
            if self.queryOverTenSecPercent != nil {
                map["QueryOverTenSecPercent"] = self.queryOverTenSecPercent!
            }
            if self.queryOverTenSecPercentNum != nil {
                map["QueryOverTenSecPercentNum"] = self.queryOverTenSecPercentNum!
            }
            if self.queryTimeoutCount != nil {
                map["QueryTimeoutCount"] = self.queryTimeoutCount!
            }
            if self.queryTimeoutCountPercent != nil {
                map["QueryTimeoutCountPercent"] = self.queryTimeoutCountPercent!
            }
            if self.quickIndexCostTimeAvg != nil {
                map["QuickIndexCostTimeAvg"] = self.quickIndexCostTimeAvg!
            }
            if self.quickIndexQueryCount != nil {
                map["QuickIndexQueryCount"] = self.quickIndexQueryCount!
            }
            if self.repeatQueryPercent != nil {
                map["RepeatQueryPercent"] = self.repeatQueryPercent!
            }
            if self.repeatQueryPercentNum != nil {
                map["RepeatQueryPercentNum"] = self.repeatQueryPercentNum!
            }
            if self.repeatSqlQueryCount != nil {
                map["RepeatSqlQueryCount"] = self.repeatSqlQueryCount!
            }
            if self.repeatSqlQueryPercent != nil {
                map["RepeatSqlQueryPercent"] = self.repeatSqlQueryPercent!
            }
            if self.workspaceId != nil {
                map["WorkspaceId"] = self.workspaceId!
            }
            if self.workspaceName != nil {
                map["WorkspaceName"] = self.workspaceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CacheCostTimeAvg"] as? Double {
                self.cacheCostTimeAvg = value
            }
            if let value = dict["CacheQueryCount"] as? Int32 {
                self.cacheQueryCount = value
            }
            if let value = dict["CostTimeAvg"] as? Double {
                self.costTimeAvg = value
            }
            if let value = dict["CubeId"] as? String {
                self.cubeId = value
            }
            if let value = dict["CubeName"] as? String {
                self.cubeName = value
            }
            if let value = dict["QueryCount"] as? Int32 {
                self.queryCount = value
            }
            if let value = dict["QueryCountAvg"] as? Double {
                self.queryCountAvg = value
            }
            if let value = dict["QueryOverFivePercentNum"] as? Double {
                self.queryOverFivePercentNum = value
            }
            if let value = dict["QueryOverFiveSecPercent"] as? String {
                self.queryOverFiveSecPercent = value
            }
            if let value = dict["QueryOverTenSecPercent"] as? String {
                self.queryOverTenSecPercent = value
            }
            if let value = dict["QueryOverTenSecPercentNum"] as? Double {
                self.queryOverTenSecPercentNum = value
            }
            if let value = dict["QueryTimeoutCount"] as? Int32 {
                self.queryTimeoutCount = value
            }
            if let value = dict["QueryTimeoutCountPercent"] as? Double {
                self.queryTimeoutCountPercent = value
            }
            if let value = dict["QuickIndexCostTimeAvg"] as? Double {
                self.quickIndexCostTimeAvg = value
            }
            if let value = dict["QuickIndexQueryCount"] as? Int32 {
                self.quickIndexQueryCount = value
            }
            if let value = dict["RepeatQueryPercent"] as? String {
                self.repeatQueryPercent = value
            }
            if let value = dict["RepeatQueryPercentNum"] as? Double {
                self.repeatQueryPercentNum = value
            }
            if let value = dict["RepeatSqlQueryCount"] as? Int32 {
                self.repeatSqlQueryCount = value
            }
            if let value = dict["RepeatSqlQueryPercent"] as? String {
                self.repeatSqlQueryPercent = value
            }
            if let value = dict["WorkspaceId"] as? String {
                self.workspaceId = value
            }
            if let value = dict["WorkspaceName"] as? String {
                self.workspaceName = value
            }
        }
    }
    public var requestId: String?

    public var result: [QueryCubePerformanceResponseBody.Result]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [Any?] {
            var tmp : [QueryCubePerformanceResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = QueryCubePerformanceResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryCubePerformanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryCubePerformanceResponseBody?

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
            var model = QueryCubePerformanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryDashboardNl2sqlRequest : Tea.TeaModel {
    public var userId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class QueryDashboardNl2sqlResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var authorities: [String]?

        public var dashboardName: String?

        public var dashboardNl2sqlId: String?

        public var ownerId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authorities != nil {
                map["Authorities"] = self.authorities!
            }
            if self.dashboardName != nil {
                map["DashboardName"] = self.dashboardName!
            }
            if self.dashboardNl2sqlId != nil {
                map["DashboardNl2sqlId"] = self.dashboardNl2sqlId!
            }
            if self.ownerId != nil {
                map["OwnerId"] = self.ownerId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Authorities"] as? [String] {
                self.authorities = value
            }
            if let value = dict["DashboardName"] as? String {
                self.dashboardName = value
            }
            if let value = dict["DashboardNl2sqlId"] as? String {
                self.dashboardNl2sqlId = value
            }
            if let value = dict["OwnerId"] as? String {
                self.ownerId = value
            }
        }
    }
    public var requestId: String?

    public var result: [QueryDashboardNl2sqlResponseBody.Result]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [Any?] {
            var tmp : [QueryDashboardNl2sqlResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = QueryDashboardNl2sqlResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryDashboardNl2sqlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDashboardNl2sqlResponseBody?

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
            var model = QueryDashboardNl2sqlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryDataRequest : Tea.TeaModel {
    public var apiId: String?

    public var conditions: String?

    public var returnFields: String?

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
        if self.apiId != nil {
            map["ApiId"] = self.apiId!
        }
        if self.conditions != nil {
            map["Conditions"] = self.conditions!
        }
        if self.returnFields != nil {
            map["ReturnFields"] = self.returnFields!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiId"] as? String {
            self.apiId = value
        }
        if let value = dict["Conditions"] as? String {
            self.conditions = value
        }
        if let value = dict["ReturnFields"] as? String {
            self.returnFields = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class QueryDataResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Headers : Tea.TeaModel {
            public var aggregator: String?

            public var column: String?

            public var dataType: String?

            public var granularity: String?

            public var label: String?

            public var originalColumn: String?

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
                if self.aggregator != nil {
                    map["Aggregator"] = self.aggregator!
                }
                if self.column != nil {
                    map["Column"] = self.column!
                }
                if self.dataType != nil {
                    map["DataType"] = self.dataType!
                }
                if self.granularity != nil {
                    map["Granularity"] = self.granularity!
                }
                if self.label != nil {
                    map["Label"] = self.label!
                }
                if self.originalColumn != nil {
                    map["OriginalColumn"] = self.originalColumn!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Aggregator"] as? String {
                    self.aggregator = value
                }
                if let value = dict["Column"] as? String {
                    self.column = value
                }
                if let value = dict["DataType"] as? String {
                    self.dataType = value
                }
                if let value = dict["Granularity"] as? String {
                    self.granularity = value
                }
                if let value = dict["Label"] as? String {
                    self.label = value
                }
                if let value = dict["OriginalColumn"] as? String {
                    self.originalColumn = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public var headers: [QueryDataResponseBody.Result.Headers]?

        public var sql: String?

        public var values: [[String: Any]]?

        public override init() {
            super.init()
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
                var tmp : [Any] = []
                for k in self.headers! {
                    tmp.append(k.toMap())
                }
                map["Headers"] = tmp
            }
            if self.sql != nil {
                map["Sql"] = self.sql!
            }
            if self.values != nil {
                map["Values"] = self.values!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Headers"] as? [Any?] {
                var tmp : [QueryDataResponseBody.Result.Headers] = []
                for v in value {
                    if v != nil {
                        var model = QueryDataResponseBody.Result.Headers()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.headers = tmp
            }
            if let value = dict["Sql"] as? String {
                self.sql = value
            }
            if let value = dict["Values"] as? [[String: Any]] {
                self.values = value
            }
        }
    }
    public var requestId: String?

    public var result: QueryDataResponseBody.Result?

    public var success: Bool?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = QueryDataResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDataResponseBody?

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
            var model = QueryDataResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryDataRangeRequest : Tea.TeaModel {
    public var keyword: String?

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
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class QueryDataRangeResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class ApiCopilotLlmCubeModels : Tea.TeaModel {
            public var alias: String?

            public var createUser: String?

            public var llmCubeId: String?

            public override init() {
                super.init()
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
                if self.createUser != nil {
                    map["CreateUser"] = self.createUser!
                }
                if self.llmCubeId != nil {
                    map["LlmCubeId"] = self.llmCubeId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Alias"] as? String {
                    self.alias = value
                }
                if let value = dict["CreateUser"] as? String {
                    self.createUser = value
                }
                if let value = dict["LlmCubeId"] as? String {
                    self.llmCubeId = value
                }
            }
        }
        public class ApiCopilotThemeModels : Tea.TeaModel {
            public class ApiCopilotLlmCubeModels : Tea.TeaModel {
                public var alias: String?

                public var createUser: String?

                public var llmCubeId: String?

                public override init() {
                    super.init()
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
                    if self.createUser != nil {
                        map["CreateUser"] = self.createUser!
                    }
                    if self.llmCubeId != nil {
                        map["LlmCubeId"] = self.llmCubeId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Alias"] as? String {
                        self.alias = value
                    }
                    if let value = dict["CreateUser"] as? String {
                        self.createUser = value
                    }
                    if let value = dict["LlmCubeId"] as? String {
                        self.llmCubeId = value
                    }
                }
            }
            public var apiCopilotLlmCubeModels: [QueryDataRangeResponseBody.Result.ApiCopilotThemeModels.ApiCopilotLlmCubeModels]?

            public var createUser: String?

            public var themeId: String?

            public var themeName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.apiCopilotLlmCubeModels != nil {
                    var tmp : [Any] = []
                    for k in self.apiCopilotLlmCubeModels! {
                        tmp.append(k.toMap())
                    }
                    map["ApiCopilotLlmCubeModels"] = tmp
                }
                if self.createUser != nil {
                    map["CreateUser"] = self.createUser!
                }
                if self.themeId != nil {
                    map["ThemeId"] = self.themeId!
                }
                if self.themeName != nil {
                    map["ThemeName"] = self.themeName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ApiCopilotLlmCubeModels"] as? [Any?] {
                    var tmp : [QueryDataRangeResponseBody.Result.ApiCopilotThemeModels.ApiCopilotLlmCubeModels] = []
                    for v in value {
                        if v != nil {
                            var model = QueryDataRangeResponseBody.Result.ApiCopilotThemeModels.ApiCopilotLlmCubeModels()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.apiCopilotLlmCubeModels = tmp
                }
                if let value = dict["CreateUser"] as? String {
                    self.createUser = value
                }
                if let value = dict["ThemeId"] as? String {
                    self.themeId = value
                }
                if let value = dict["ThemeName"] as? String {
                    self.themeName = value
                }
            }
        }
        public var apiCopilotLlmCubeModels: [QueryDataRangeResponseBody.Result.ApiCopilotLlmCubeModels]?

        public var apiCopilotThemeModels: [QueryDataRangeResponseBody.Result.ApiCopilotThemeModels]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.apiCopilotLlmCubeModels != nil {
                var tmp : [Any] = []
                for k in self.apiCopilotLlmCubeModels! {
                    tmp.append(k.toMap())
                }
                map["ApiCopilotLlmCubeModels"] = tmp
            }
            if self.apiCopilotThemeModels != nil {
                var tmp : [Any] = []
                for k in self.apiCopilotThemeModels! {
                    tmp.append(k.toMap())
                }
                map["ApiCopilotThemeModels"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ApiCopilotLlmCubeModels"] as? [Any?] {
                var tmp : [QueryDataRangeResponseBody.Result.ApiCopilotLlmCubeModels] = []
                for v in value {
                    if v != nil {
                        var model = QueryDataRangeResponseBody.Result.ApiCopilotLlmCubeModels()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.apiCopilotLlmCubeModels = tmp
            }
            if let value = dict["ApiCopilotThemeModels"] as? [Any?] {
                var tmp : [QueryDataRangeResponseBody.Result.ApiCopilotThemeModels] = []
                for v in value {
                    if v != nil {
                        var model = QueryDataRangeResponseBody.Result.ApiCopilotThemeModels()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.apiCopilotThemeModels = tmp
            }
        }
    }
    public var requestId: String?

    public var result: QueryDataRangeResponseBody.Result?

    public var success: Bool?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = QueryDataRangeResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryDataRangeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDataRangeResponseBody?

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
            var model = QueryDataRangeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryDataServiceRequest : Tea.TeaModel {
    public var apiId: String?

    public var conditions: String?

    public var returnFields: String?

    public override init() {
        super.init()
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
        if self.conditions != nil {
            map["Conditions"] = self.conditions!
        }
        if self.returnFields != nil {
            map["ReturnFields"] = self.returnFields!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApiId"] as? String {
            self.apiId = value
        }
        if let value = dict["Conditions"] as? String {
            self.conditions = value
        }
        if let value = dict["ReturnFields"] as? String {
            self.returnFields = value
        }
    }
}

public class QueryDataServiceResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Headers : Tea.TeaModel {
            public var aggregator: String?

            public var column: String?

            public var dataType: String?

            public var granularity: String?

            public var label: String?

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
                if self.aggregator != nil {
                    map["Aggregator"] = self.aggregator!
                }
                if self.column != nil {
                    map["Column"] = self.column!
                }
                if self.dataType != nil {
                    map["DataType"] = self.dataType!
                }
                if self.granularity != nil {
                    map["Granularity"] = self.granularity!
                }
                if self.label != nil {
                    map["Label"] = self.label!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Aggregator"] as? String {
                    self.aggregator = value
                }
                if let value = dict["Column"] as? String {
                    self.column = value
                }
                if let value = dict["DataType"] as? String {
                    self.dataType = value
                }
                if let value = dict["Granularity"] as? String {
                    self.granularity = value
                }
                if let value = dict["Label"] as? String {
                    self.label = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public var headers: [QueryDataServiceResponseBody.Result.Headers]?

        public var sql: String?

        public var values: [[String: Any]]?

        public override init() {
            super.init()
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
                var tmp : [Any] = []
                for k in self.headers! {
                    tmp.append(k.toMap())
                }
                map["Headers"] = tmp
            }
            if self.sql != nil {
                map["Sql"] = self.sql!
            }
            if self.values != nil {
                map["Values"] = self.values!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Headers"] as? [Any?] {
                var tmp : [QueryDataServiceResponseBody.Result.Headers] = []
                for v in value {
                    if v != nil {
                        var model = QueryDataServiceResponseBody.Result.Headers()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.headers = tmp
            }
            if let value = dict["Sql"] as? String {
                self.sql = value
            }
            if let value = dict["Values"] as? [[String: Any]] {
                self.values = value
            }
        }
    }
    public var requestId: String?

    public var result: QueryDataServiceResponseBody.Result?

    public var success: Bool?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = QueryDataServiceResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryDataServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDataServiceResponseBody?

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
            var model = QueryDataServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryDataServiceListRequest : Tea.TeaModel {
    public var name: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PageNo"] as? Int32 {
            self.pageNo = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class QueryDataServiceListResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public class Content : Tea.TeaModel {
                public class Filter : Tea.TeaModel {
                    public var filters: [[String: Any]]?

                    public var logicalOperator: String?

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
                        if self.filters != nil {
                            map["Filters"] = self.filters!
                        }
                        if self.logicalOperator != nil {
                            map["LogicalOperator"] = self.logicalOperator!
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Filters"] as? [[String: Any]] {
                            self.filters = value
                        }
                        if let value = dict["LogicalOperator"] as? String {
                            self.logicalOperator = value
                        }
                        if let value = dict["Type"] as? String {
                            self.type = value
                        }
                    }
                }
                public class ReturnFields : Tea.TeaModel {
                    public class Field : Tea.TeaModel {
                        public var caption: String?

                        public var column: String?

                        public var dataType: String?

                        public var fid: String?

                        public var granularity: String?

                        public var name: String?

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
                            if self.caption != nil {
                                map["Caption"] = self.caption!
                            }
                            if self.column != nil {
                                map["Column"] = self.column!
                            }
                            if self.dataType != nil {
                                map["DataType"] = self.dataType!
                            }
                            if self.fid != nil {
                                map["Fid"] = self.fid!
                            }
                            if self.granularity != nil {
                                map["Granularity"] = self.granularity!
                            }
                            if self.name != nil {
                                map["Name"] = self.name!
                            }
                            if self.type != nil {
                                map["Type"] = self.type!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Caption"] as? String {
                                self.caption = value
                            }
                            if let value = dict["Column"] as? String {
                                self.column = value
                            }
                            if let value = dict["DataType"] as? String {
                                self.dataType = value
                            }
                            if let value = dict["Fid"] as? String {
                                self.fid = value
                            }
                            if let value = dict["Granularity"] as? String {
                                self.granularity = value
                            }
                            if let value = dict["Name"] as? String {
                                self.name = value
                            }
                            if let value = dict["Type"] as? String {
                                self.type = value
                            }
                        }
                    }
                    public var aggregator: String?

                    public var alias: String?

                    public var desc: String?

                    public var field: QueryDataServiceListResponseBody.Result.Data.Content.ReturnFields.Field?

                    public var orderby: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.field?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.aggregator != nil {
                            map["Aggregator"] = self.aggregator!
                        }
                        if self.alias != nil {
                            map["Alias"] = self.alias!
                        }
                        if self.desc != nil {
                            map["Desc"] = self.desc!
                        }
                        if self.field != nil {
                            map["Field"] = self.field?.toMap()
                        }
                        if self.orderby != nil {
                            map["Orderby"] = self.orderby!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Aggregator"] as? String {
                            self.aggregator = value
                        }
                        if let value = dict["Alias"] as? String {
                            self.alias = value
                        }
                        if let value = dict["Desc"] as? String {
                            self.desc = value
                        }
                        if let value = dict["Field"] as? [String: Any?] {
                            var model = QueryDataServiceListResponseBody.Result.Data.Content.ReturnFields.Field()
                            model.fromMap(value)
                            self.field = model
                        }
                        if let value = dict["Orderby"] as? String {
                            self.orderby = value
                        }
                    }
                }
                public var cubeId: String?

                public var cubeName: String?

                public var detail: Bool?

                public var filter: QueryDataServiceListResponseBody.Result.Data.Content.Filter?

                public var returnFields: [QueryDataServiceListResponseBody.Result.Data.Content.ReturnFields]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.filter?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.cubeId != nil {
                        map["CubeId"] = self.cubeId!
                    }
                    if self.cubeName != nil {
                        map["CubeName"] = self.cubeName!
                    }
                    if self.detail != nil {
                        map["Detail"] = self.detail!
                    }
                    if self.filter != nil {
                        map["Filter"] = self.filter?.toMap()
                    }
                    if self.returnFields != nil {
                        var tmp : [Any] = []
                        for k in self.returnFields! {
                            tmp.append(k.toMap())
                        }
                        map["ReturnFields"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CubeId"] as? String {
                        self.cubeId = value
                    }
                    if let value = dict["CubeName"] as? String {
                        self.cubeName = value
                    }
                    if let value = dict["Detail"] as? Bool {
                        self.detail = value
                    }
                    if let value = dict["Filter"] as? [String: Any?] {
                        var model = QueryDataServiceListResponseBody.Result.Data.Content.Filter()
                        model.fromMap(value)
                        self.filter = model
                    }
                    if let value = dict["ReturnFields"] as? [Any?] {
                        var tmp : [QueryDataServiceListResponseBody.Result.Data.Content.ReturnFields] = []
                        for v in value {
                            if v != nil {
                                var model = QueryDataServiceListResponseBody.Result.Data.Content.ReturnFields()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.returnFields = tmp
                    }
                }
            }
            public var content: QueryDataServiceListResponseBody.Result.Data.Content?

            public var creatorId: String?

            public var creatorName: String?

            public var cubeId: String?

            public var cubeName: String?

            public var desc: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var modifierId: String?

            public var modifierName: String?

            public var name: String?

            public var ownerId: String?

            public var ownerName: String?

            public var sid: String?

            public var workspaceId: String?

            public var workspaceName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.content?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.content != nil {
                    map["Content"] = self.content?.toMap()
                }
                if self.creatorId != nil {
                    map["CreatorId"] = self.creatorId!
                }
                if self.creatorName != nil {
                    map["CreatorName"] = self.creatorName!
                }
                if self.cubeId != nil {
                    map["CubeId"] = self.cubeId!
                }
                if self.cubeName != nil {
                    map["CubeName"] = self.cubeName!
                }
                if self.desc != nil {
                    map["Desc"] = self.desc!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.modifierId != nil {
                    map["ModifierId"] = self.modifierId!
                }
                if self.modifierName != nil {
                    map["ModifierName"] = self.modifierName!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.ownerId != nil {
                    map["OwnerId"] = self.ownerId!
                }
                if self.ownerName != nil {
                    map["OwnerName"] = self.ownerName!
                }
                if self.sid != nil {
                    map["Sid"] = self.sid!
                }
                if self.workspaceId != nil {
                    map["WorkspaceId"] = self.workspaceId!
                }
                if self.workspaceName != nil {
                    map["WorkspaceName"] = self.workspaceName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Content"] as? [String: Any?] {
                    var model = QueryDataServiceListResponseBody.Result.Data.Content()
                    model.fromMap(value)
                    self.content = model
                }
                if let value = dict["CreatorId"] as? String {
                    self.creatorId = value
                }
                if let value = dict["CreatorName"] as? String {
                    self.creatorName = value
                }
                if let value = dict["CubeId"] as? String {
                    self.cubeId = value
                }
                if let value = dict["CubeName"] as? String {
                    self.cubeName = value
                }
                if let value = dict["Desc"] as? String {
                    self.desc = value
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["GmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["ModifierId"] as? String {
                    self.modifierId = value
                }
                if let value = dict["ModifierName"] as? String {
                    self.modifierName = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["OwnerId"] as? String {
                    self.ownerId = value
                }
                if let value = dict["OwnerName"] as? String {
                    self.ownerName = value
                }
                if let value = dict["Sid"] as? String {
                    self.sid = value
                }
                if let value = dict["WorkspaceId"] as? String {
                    self.workspaceId = value
                }
                if let value = dict["WorkspaceName"] as? String {
                    self.workspaceName = value
                }
            }
        }
        public var data: [QueryDataServiceListResponseBody.Result.Data]?

        public var pageNum: Int32?

        public var pageSize: Int32?

        public var totalNum: Int32?

        public var totalPages: Int32?

        public override init() {
            super.init()
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
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["Data"] = tmp
            }
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalNum != nil {
                map["TotalNum"] = self.totalNum!
            }
            if self.totalPages != nil {
                map["TotalPages"] = self.totalPages!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? [Any?] {
                var tmp : [QueryDataServiceListResponseBody.Result.Data] = []
                for v in value {
                    if v != nil {
                        var model = QueryDataServiceListResponseBody.Result.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["PageNum"] as? Int32 {
                self.pageNum = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalNum"] as? Int32 {
                self.totalNum = value
            }
            if let value = dict["TotalPages"] as? Int32 {
                self.totalPages = value
            }
        }
    }
    public var requestId: String?

    public var result: QueryDataServiceListResponseBody.Result?

    public var success: Bool?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = QueryDataServiceListResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryDataServiceListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDataServiceListResponseBody?

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
            var model = QueryDataServiceListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryDatasetDetailInfoRequest : Tea.TeaModel {
    public var datasetId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetId != nil {
            map["DatasetId"] = self.datasetId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetId"] as? String {
            self.datasetId = value
        }
    }
}

public class QueryDatasetDetailInfoResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? String {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryDatasetDetailInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDatasetDetailInfoResponseBody?

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
            var model = QueryDatasetDetailInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryDatasetInfoRequest : Tea.TeaModel {
    public var datasetId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasetId != nil {
            map["DatasetId"] = self.datasetId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DatasetId"] as? String {
            self.datasetId = value
        }
    }
}

public class QueryDatasetInfoResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class CubeTableList : Tea.TeaModel {
            public var caption: String?

            public var customsql: Bool?

            public var datasourceId: String?

            public var dsType: String?

            public var factTable: Bool?

            public var sql: String?

            public var tableName: String?

            public var uniqueId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.caption != nil {
                    map["Caption"] = self.caption!
                }
                if self.customsql != nil {
                    map["Customsql"] = self.customsql!
                }
                if self.datasourceId != nil {
                    map["DatasourceId"] = self.datasourceId!
                }
                if self.dsType != nil {
                    map["DsType"] = self.dsType!
                }
                if self.factTable != nil {
                    map["FactTable"] = self.factTable!
                }
                if self.sql != nil {
                    map["Sql"] = self.sql!
                }
                if self.tableName != nil {
                    map["TableName"] = self.tableName!
                }
                if self.uniqueId != nil {
                    map["UniqueId"] = self.uniqueId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Caption"] as? String {
                    self.caption = value
                }
                if let value = dict["Customsql"] as? Bool {
                    self.customsql = value
                }
                if let value = dict["DatasourceId"] as? String {
                    self.datasourceId = value
                }
                if let value = dict["DsType"] as? String {
                    self.dsType = value
                }
                if let value = dict["FactTable"] as? Bool {
                    self.factTable = value
                }
                if let value = dict["Sql"] as? String {
                    self.sql = value
                }
                if let value = dict["TableName"] as? String {
                    self.tableName = value
                }
                if let value = dict["UniqueId"] as? String {
                    self.uniqueId = value
                }
            }
        }
        public class DimensionList : Tea.TeaModel {
            public var caption: String?

            public var dataType: String?

            public var dimensionType: String?

            public var expression: String?

            public var expressionV2: String?

            public var factColumn: String?

            public var fieldDescription: String?

            public var granularity: String?

            public var refUid: String?

            public var tableUniqueId: String?

            public var uid: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.caption != nil {
                    map["Caption"] = self.caption!
                }
                if self.dataType != nil {
                    map["DataType"] = self.dataType!
                }
                if self.dimensionType != nil {
                    map["DimensionType"] = self.dimensionType!
                }
                if self.expression != nil {
                    map["Expression"] = self.expression!
                }
                if self.expressionV2 != nil {
                    map["ExpressionV2"] = self.expressionV2!
                }
                if self.factColumn != nil {
                    map["FactColumn"] = self.factColumn!
                }
                if self.fieldDescription != nil {
                    map["FieldDescription"] = self.fieldDescription!
                }
                if self.granularity != nil {
                    map["Granularity"] = self.granularity!
                }
                if self.refUid != nil {
                    map["RefUid"] = self.refUid!
                }
                if self.tableUniqueId != nil {
                    map["TableUniqueId"] = self.tableUniqueId!
                }
                if self.uid != nil {
                    map["Uid"] = self.uid!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Caption"] as? String {
                    self.caption = value
                }
                if let value = dict["DataType"] as? String {
                    self.dataType = value
                }
                if let value = dict["DimensionType"] as? String {
                    self.dimensionType = value
                }
                if let value = dict["Expression"] as? String {
                    self.expression = value
                }
                if let value = dict["ExpressionV2"] as? String {
                    self.expressionV2 = value
                }
                if let value = dict["FactColumn"] as? String {
                    self.factColumn = value
                }
                if let value = dict["FieldDescription"] as? String {
                    self.fieldDescription = value
                }
                if let value = dict["Granularity"] as? String {
                    self.granularity = value
                }
                if let value = dict["RefUid"] as? String {
                    self.refUid = value
                }
                if let value = dict["TableUniqueId"] as? String {
                    self.tableUniqueId = value
                }
                if let value = dict["Uid"] as? String {
                    self.uid = value
                }
            }
        }
        public class Directory : Tea.TeaModel {
            public var id: String?

            public var name: String?

            public var pathId: String?

            public var pathName: String?

            public override init() {
                super.init()
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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.pathId != nil {
                    map["PathId"] = self.pathId!
                }
                if self.pathName != nil {
                    map["PathName"] = self.pathName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["PathId"] as? String {
                    self.pathId = value
                }
                if let value = dict["PathName"] as? String {
                    self.pathName = value
                }
            }
        }
        public class MeasureList : Tea.TeaModel {
            public var caption: String?

            public var dataType: String?

            public var expression: String?

            public var expressionV2: String?

            public var factColumn: String?

            public var fieldDescription: String?

            public var measureType: String?

            public var tableUniqueId: String?

            public var uid: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.caption != nil {
                    map["Caption"] = self.caption!
                }
                if self.dataType != nil {
                    map["DataType"] = self.dataType!
                }
                if self.expression != nil {
                    map["Expression"] = self.expression!
                }
                if self.expressionV2 != nil {
                    map["ExpressionV2"] = self.expressionV2!
                }
                if self.factColumn != nil {
                    map["FactColumn"] = self.factColumn!
                }
                if self.fieldDescription != nil {
                    map["FieldDescription"] = self.fieldDescription!
                }
                if self.measureType != nil {
                    map["MeasureType"] = self.measureType!
                }
                if self.tableUniqueId != nil {
                    map["TableUniqueId"] = self.tableUniqueId!
                }
                if self.uid != nil {
                    map["Uid"] = self.uid!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Caption"] as? String {
                    self.caption = value
                }
                if let value = dict["DataType"] as? String {
                    self.dataType = value
                }
                if let value = dict["Expression"] as? String {
                    self.expression = value
                }
                if let value = dict["ExpressionV2"] as? String {
                    self.expressionV2 = value
                }
                if let value = dict["FactColumn"] as? String {
                    self.factColumn = value
                }
                if let value = dict["FieldDescription"] as? String {
                    self.fieldDescription = value
                }
                if let value = dict["MeasureType"] as? String {
                    self.measureType = value
                }
                if let value = dict["TableUniqueId"] as? String {
                    self.tableUniqueId = value
                }
                if let value = dict["Uid"] as? String {
                    self.uid = value
                }
            }
        }
        public var cubeTableList: [QueryDatasetInfoResponseBody.Result.CubeTableList]?

        public var custimzeSql: Bool?

        public var datasetId: String?

        public var datasetName: String?

        public var dimensionList: [QueryDatasetInfoResponseBody.Result.DimensionList]?

        public var directory: QueryDatasetInfoResponseBody.Result.Directory?

        public var dsId: String?

        public var dsName: String?

        public var dsType: String?

        public var gmtCreate: String?

        public var gmtModify: String?

        public var measureList: [QueryDatasetInfoResponseBody.Result.MeasureList]?

        public var openOfflineAcceleration: Bool?

        public var ownerId: String?

        public var ownerName: String?

        public var rowLevel: Bool?

        public var workspaceId: String?

        public var workspaceName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.directory?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cubeTableList != nil {
                var tmp : [Any] = []
                for k in self.cubeTableList! {
                    tmp.append(k.toMap())
                }
                map["CubeTableList"] = tmp
            }
            if self.custimzeSql != nil {
                map["CustimzeSql"] = self.custimzeSql!
            }
            if self.datasetId != nil {
                map["DatasetId"] = self.datasetId!
            }
            if self.datasetName != nil {
                map["DatasetName"] = self.datasetName!
            }
            if self.dimensionList != nil {
                var tmp : [Any] = []
                for k in self.dimensionList! {
                    tmp.append(k.toMap())
                }
                map["DimensionList"] = tmp
            }
            if self.directory != nil {
                map["Directory"] = self.directory?.toMap()
            }
            if self.dsId != nil {
                map["DsId"] = self.dsId!
            }
            if self.dsName != nil {
                map["DsName"] = self.dsName!
            }
            if self.dsType != nil {
                map["DsType"] = self.dsType!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModify != nil {
                map["GmtModify"] = self.gmtModify!
            }
            if self.measureList != nil {
                var tmp : [Any] = []
                for k in self.measureList! {
                    tmp.append(k.toMap())
                }
                map["MeasureList"] = tmp
            }
            if self.openOfflineAcceleration != nil {
                map["OpenOfflineAcceleration"] = self.openOfflineAcceleration!
            }
            if self.ownerId != nil {
                map["OwnerId"] = self.ownerId!
            }
            if self.ownerName != nil {
                map["OwnerName"] = self.ownerName!
            }
            if self.rowLevel != nil {
                map["RowLevel"] = self.rowLevel!
            }
            if self.workspaceId != nil {
                map["WorkspaceId"] = self.workspaceId!
            }
            if self.workspaceName != nil {
                map["WorkspaceName"] = self.workspaceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CubeTableList"] as? [Any?] {
                var tmp : [QueryDatasetInfoResponseBody.Result.CubeTableList] = []
                for v in value {
                    if v != nil {
                        var model = QueryDatasetInfoResponseBody.Result.CubeTableList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.cubeTableList = tmp
            }
            if let value = dict["CustimzeSql"] as? Bool {
                self.custimzeSql = value
            }
            if let value = dict["DatasetId"] as? String {
                self.datasetId = value
            }
            if let value = dict["DatasetName"] as? String {
                self.datasetName = value
            }
            if let value = dict["DimensionList"] as? [Any?] {
                var tmp : [QueryDatasetInfoResponseBody.Result.DimensionList] = []
                for v in value {
                    if v != nil {
                        var model = QueryDatasetInfoResponseBody.Result.DimensionList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.dimensionList = tmp
            }
            if let value = dict["Directory"] as? [String: Any?] {
                var model = QueryDatasetInfoResponseBody.Result.Directory()
                model.fromMap(value)
                self.directory = model
            }
            if let value = dict["DsId"] as? String {
                self.dsId = value
            }
            if let value = dict["DsName"] as? String {
                self.dsName = value
            }
            if let value = dict["DsType"] as? String {
                self.dsType = value
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtModify"] as? String {
                self.gmtModify = value
            }
            if let value = dict["MeasureList"] as? [Any?] {
                var tmp : [QueryDatasetInfoResponseBody.Result.MeasureList] = []
                for v in value {
                    if v != nil {
                        var model = QueryDatasetInfoResponseBody.Result.MeasureList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.measureList = tmp
            }
            if let value = dict["OpenOfflineAcceleration"] as? Bool {
                self.openOfflineAcceleration = value
            }
            if let value = dict["OwnerId"] as? String {
                self.ownerId = value
            }
            if let value = dict["OwnerName"] as? String {
                self.ownerName = value
            }
            if let value = dict["RowLevel"] as? Bool {
                self.rowLevel = value
            }
            if let value = dict["WorkspaceId"] as? String {
                self.workspaceId = value
            }
            if let value = dict["WorkspaceName"] as? String {
                self.workspaceName = value
            }
        }
    }
    public var requestId: String?

    public var result: QueryDatasetInfoResponseBody.Result?

    public var success: Bool?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = QueryDatasetInfoResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryDatasetInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDatasetInfoResponseBody?

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
            var model = QueryDatasetInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryDatasetListRequest : Tea.TeaModel {
    public var directoryId: String?

    public var keyword: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var withChildren: Bool?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.withChildren != nil {
            map["WithChildren"] = self.withChildren!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["WithChildren"] as? Bool {
            self.withChildren = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class QueryDatasetListResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public class DataSource : Tea.TeaModel {
                public var dsId: String?

                public var dsName: String?

                public var dsType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.dsId != nil {
                        map["DsId"] = self.dsId!
                    }
                    if self.dsName != nil {
                        map["DsName"] = self.dsName!
                    }
                    if self.dsType != nil {
                        map["DsType"] = self.dsType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["DsId"] as? String {
                        self.dsId = value
                    }
                    if let value = dict["DsName"] as? String {
                        self.dsName = value
                    }
                    if let value = dict["DsType"] as? String {
                        self.dsType = value
                    }
                }
            }
            public class Directory : Tea.TeaModel {
                public var id: String?

                public var name: String?

                public var pathId: String?

                public var pathName: String?

                public override init() {
                    super.init()
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
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.pathId != nil {
                        map["PathId"] = self.pathId!
                    }
                    if self.pathName != nil {
                        map["PathName"] = self.pathName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Id"] as? String {
                        self.id = value
                    }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["PathId"] as? String {
                        self.pathId = value
                    }
                    if let value = dict["PathName"] as? String {
                        self.pathName = value
                    }
                }
            }
            public var createTime: String?

            public var dataSource: QueryDatasetListResponseBody.Result.Data.DataSource?

            public var datasetId: String?

            public var datasetName: String?

            public var description_: String?

            public var directory: QueryDatasetListResponseBody.Result.Data.Directory?

            public var modifyTime: String?

            public var openOfflineAcceleration: Bool?

            public var ownerId: String?

            public var ownerName: String?

            public var rowLevel: Bool?

            public var workspaceId: String?

            public var workspaceName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.dataSource?.validate()
                try self.directory?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.dataSource != nil {
                    map["DataSource"] = self.dataSource?.toMap()
                }
                if self.datasetId != nil {
                    map["DatasetId"] = self.datasetId!
                }
                if self.datasetName != nil {
                    map["DatasetName"] = self.datasetName!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.directory != nil {
                    map["Directory"] = self.directory?.toMap()
                }
                if self.modifyTime != nil {
                    map["ModifyTime"] = self.modifyTime!
                }
                if self.openOfflineAcceleration != nil {
                    map["OpenOfflineAcceleration"] = self.openOfflineAcceleration!
                }
                if self.ownerId != nil {
                    map["OwnerId"] = self.ownerId!
                }
                if self.ownerName != nil {
                    map["OwnerName"] = self.ownerName!
                }
                if self.rowLevel != nil {
                    map["RowLevel"] = self.rowLevel!
                }
                if self.workspaceId != nil {
                    map["WorkspaceId"] = self.workspaceId!
                }
                if self.workspaceName != nil {
                    map["WorkspaceName"] = self.workspaceName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["DataSource"] as? [String: Any?] {
                    var model = QueryDatasetListResponseBody.Result.Data.DataSource()
                    model.fromMap(value)
                    self.dataSource = model
                }
                if let value = dict["DatasetId"] as? String {
                    self.datasetId = value
                }
                if let value = dict["DatasetName"] as? String {
                    self.datasetName = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["Directory"] as? [String: Any?] {
                    var model = QueryDatasetListResponseBody.Result.Data.Directory()
                    model.fromMap(value)
                    self.directory = model
                }
                if let value = dict["ModifyTime"] as? String {
                    self.modifyTime = value
                }
                if let value = dict["OpenOfflineAcceleration"] as? Bool {
                    self.openOfflineAcceleration = value
                }
                if let value = dict["OwnerId"] as? String {
                    self.ownerId = value
                }
                if let value = dict["OwnerName"] as? String {
                    self.ownerName = value
                }
                if let value = dict["RowLevel"] as? Bool {
                    self.rowLevel = value
                }
                if let value = dict["WorkspaceId"] as? String {
                    self.workspaceId = value
                }
                if let value = dict["WorkspaceName"] as? String {
                    self.workspaceName = value
                }
            }
        }
        public var data: [QueryDatasetListResponseBody.Result.Data]?

        public var pageNum: Int32?

        public var pageSize: Int32?

        public var totalNum: Int32?

        public var totalPages: Int32?

        public override init() {
            super.init()
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
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["Data"] = tmp
            }
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalNum != nil {
                map["TotalNum"] = self.totalNum!
            }
            if self.totalPages != nil {
                map["TotalPages"] = self.totalPages!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? [Any?] {
                var tmp : [QueryDatasetListResponseBody.Result.Data] = []
                for v in value {
                    if v != nil {
                        var model = QueryDatasetListResponseBody.Result.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["PageNum"] as? Int32 {
                self.pageNum = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalNum"] as? Int32 {
                self.totalNum = value
            }
            if let value = dict["TotalPages"] as? Int32 {
                self.totalPages = value
            }
        }
    }
    public var requestId: String?

    public var result: QueryDatasetListResponseBody.Result?

    public var success: Bool?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = QueryDatasetListResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryDatasetListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDatasetListResponseBody?

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
            var model = QueryDatasetListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryDatasetSmartqStatusRequest : Tea.TeaModel {
    public var cubeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cubeId != nil {
            map["CubeId"] = self.cubeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CubeId"] as? String {
            self.cubeId = value
        }
    }
}

public class QueryDatasetSmartqStatusResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryDatasetSmartqStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDatasetSmartqStatusResponseBody?

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
            var model = QueryDatasetSmartqStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryDatasetSwitchInfoRequest : Tea.TeaModel {
    public var cubeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cubeId != nil {
            map["CubeId"] = self.cubeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CubeId"] as? String {
            self.cubeId = value
        }
    }
}

public class QueryDatasetSwitchInfoResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var cubeId: String?

        public var isOpenColumnLevelPermission: Int32?

        public var isOpenRowLevelPermission: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cubeId != nil {
                map["CubeId"] = self.cubeId!
            }
            if self.isOpenColumnLevelPermission != nil {
                map["IsOpenColumnLevelPermission"] = self.isOpenColumnLevelPermission!
            }
            if self.isOpenRowLevelPermission != nil {
                map["IsOpenRowLevelPermission"] = self.isOpenRowLevelPermission!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CubeId"] as? String {
                self.cubeId = value
            }
            if let value = dict["IsOpenColumnLevelPermission"] as? Int32 {
                self.isOpenColumnLevelPermission = value
            }
            if let value = dict["IsOpenRowLevelPermission"] as? Int32 {
                self.isOpenRowLevelPermission = value
            }
        }
    }
    public var requestId: String?

    public var result: QueryDatasetSwitchInfoResponseBody.Result?

    public var success: Bool?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = QueryDatasetSwitchInfoResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryDatasetSwitchInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDatasetSwitchInfoResponseBody?

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
            var model = QueryDatasetSwitchInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryEmbeddedInfoResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Detail : Tea.TeaModel {
            public var dashboardOfflineQuery: Int32?

            public var page: Int32?

            public var report: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dashboardOfflineQuery != nil {
                    map["DashboardOfflineQuery"] = self.dashboardOfflineQuery!
                }
                if self.page != nil {
                    map["Page"] = self.page!
                }
                if self.report != nil {
                    map["Report"] = self.report!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DashboardOfflineQuery"] as? Int32 {
                    self.dashboardOfflineQuery = value
                }
                if let value = dict["Page"] as? Int32 {
                    self.page = value
                }
                if let value = dict["Report"] as? Int32 {
                    self.report = value
                }
            }
        }
        public var detail: QueryEmbeddedInfoResponseBody.Result.Detail?

        public var embeddedCount: Int32?

        public var maxCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.detail?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.detail != nil {
                map["Detail"] = self.detail?.toMap()
            }
            if self.embeddedCount != nil {
                map["EmbeddedCount"] = self.embeddedCount!
            }
            if self.maxCount != nil {
                map["MaxCount"] = self.maxCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Detail"] as? [String: Any?] {
                var model = QueryEmbeddedInfoResponseBody.Result.Detail()
                model.fromMap(value)
                self.detail = model
            }
            if let value = dict["EmbeddedCount"] as? Int32 {
                self.embeddedCount = value
            }
            if let value = dict["MaxCount"] as? Int32 {
                self.maxCount = value
            }
        }
    }
    public var requestId: String?

    public var result: QueryEmbeddedInfoResponseBody.Result?

    public var success: Bool?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = QueryEmbeddedInfoResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryEmbeddedInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryEmbeddedInfoResponseBody?

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
            var model = QueryEmbeddedInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryEmbeddedStatusRequest : Tea.TeaModel {
    public var worksId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.worksId != nil {
            map["WorksId"] = self.worksId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["WorksId"] as? String {
            self.worksId = value
        }
    }
}

public class QueryEmbeddedStatusResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryEmbeddedStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryEmbeddedStatusResponseBody?

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
            var model = QueryEmbeddedStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryLastAccelerationEngineJobRequest : Tea.TeaModel {
    public var cubeId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cubeId != nil {
            map["CubeId"] = self.cubeId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CubeId"] as? String {
            self.cubeId = value
        }
    }
}

public class QueryLastAccelerationEngineJobResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var gmtCreate: String?

        public var gmtModified: String?

        public var jobHistoryId: String?

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
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.jobHistoryId != nil {
                map["JobHistoryId"] = self.jobHistoryId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["JobHistoryId"] as? String {
                self.jobHistoryId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var requestId: String?

    public var result: QueryLastAccelerationEngineJobResponseBody.Result?

    public var success: Bool?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = QueryLastAccelerationEngineJobResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryLastAccelerationEngineJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryLastAccelerationEngineJobResponseBody?

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
            var model = QueryLastAccelerationEngineJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryLlmCubeWithThemeListByUserIdRequest : Tea.TeaModel {
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
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class QueryLlmCubeWithThemeListByUserIdResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var cubeIds: [String: String]?

        public var themeIds: [String: String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cubeIds != nil {
                map["CubeIds"] = self.cubeIds!
            }
            if self.themeIds != nil {
                map["ThemeIds"] = self.themeIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CubeIds"] as? [String: String] {
                self.cubeIds = value
            }
            if let value = dict["ThemeIds"] as? [String: String] {
                self.themeIds = value
            }
        }
    }
    public var requestId: String?

    public var result: QueryLlmCubeWithThemeListByUserIdResponseBody.Result?

    public var success: Bool?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = QueryLlmCubeWithThemeListByUserIdResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryLlmCubeWithThemeListByUserIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryLlmCubeWithThemeListByUserIdResponseBody?

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
            var model = QueryLlmCubeWithThemeListByUserIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryOrganizationRoleConfigRequest : Tea.TeaModel {
    public var roleId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.roleId != nil {
            map["RoleId"] = self.roleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RoleId"] as? Int64 {
            self.roleId = value
        }
    }
}

public class QueryOrganizationRoleConfigResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class AuthConfigList : Tea.TeaModel {
            public var authKey: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.authKey != nil {
                    map["AuthKey"] = self.authKey!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AuthKey"] as? String {
                    self.authKey = value
                }
            }
        }
        public var authConfigList: [QueryOrganizationRoleConfigResponseBody.Result.AuthConfigList]?

        public var isSystemRole: Bool?

        public var roleId: Int64?

        public var roleName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authConfigList != nil {
                var tmp : [Any] = []
                for k in self.authConfigList! {
                    tmp.append(k.toMap())
                }
                map["AuthConfigList"] = tmp
            }
            if self.isSystemRole != nil {
                map["IsSystemRole"] = self.isSystemRole!
            }
            if self.roleId != nil {
                map["RoleId"] = self.roleId!
            }
            if self.roleName != nil {
                map["RoleName"] = self.roleName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AuthConfigList"] as? [Any?] {
                var tmp : [QueryOrganizationRoleConfigResponseBody.Result.AuthConfigList] = []
                for v in value {
                    if v != nil {
                        var model = QueryOrganizationRoleConfigResponseBody.Result.AuthConfigList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.authConfigList = tmp
            }
            if let value = dict["IsSystemRole"] as? Bool {
                self.isSystemRole = value
            }
            if let value = dict["RoleId"] as? Int64 {
                self.roleId = value
            }
            if let value = dict["RoleName"] as? String {
                self.roleName = value
            }
        }
    }
    public var requestId: String?

    public var result: QueryOrganizationRoleConfigResponseBody.Result?

    public var success: Bool?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = QueryOrganizationRoleConfigResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryOrganizationRoleConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryOrganizationRoleConfigResponseBody?

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
            var model = QueryOrganizationRoleConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryOrganizationWorkspaceListRequest : Tea.TeaModel {
    public var keyword: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

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
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class QueryOrganizationWorkspaceListResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var allowPublishOperation: Bool?

            public var allowShareOperation: Bool?

            public var createTime: String?

            public var createUser: String?

            public var createUserAccountName: String?

            public var modifiedTime: String?

            public var modifyUser: String?

            public var modifyUserAccountName: String?

            public var organizationId: String?

            public var owner: String?

            public var ownerAccountName: String?

            public var workspaceDescription: String?

            public var workspaceId: String?

            public var workspaceName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allowPublishOperation != nil {
                    map["AllowPublishOperation"] = self.allowPublishOperation!
                }
                if self.allowShareOperation != nil {
                    map["AllowShareOperation"] = self.allowShareOperation!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.createUser != nil {
                    map["CreateUser"] = self.createUser!
                }
                if self.createUserAccountName != nil {
                    map["CreateUserAccountName"] = self.createUserAccountName!
                }
                if self.modifiedTime != nil {
                    map["ModifiedTime"] = self.modifiedTime!
                }
                if self.modifyUser != nil {
                    map["ModifyUser"] = self.modifyUser!
                }
                if self.modifyUserAccountName != nil {
                    map["ModifyUserAccountName"] = self.modifyUserAccountName!
                }
                if self.organizationId != nil {
                    map["OrganizationId"] = self.organizationId!
                }
                if self.owner != nil {
                    map["Owner"] = self.owner!
                }
                if self.ownerAccountName != nil {
                    map["OwnerAccountName"] = self.ownerAccountName!
                }
                if self.workspaceDescription != nil {
                    map["WorkspaceDescription"] = self.workspaceDescription!
                }
                if self.workspaceId != nil {
                    map["WorkspaceId"] = self.workspaceId!
                }
                if self.workspaceName != nil {
                    map["WorkspaceName"] = self.workspaceName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AllowPublishOperation"] as? Bool {
                    self.allowPublishOperation = value
                }
                if let value = dict["AllowShareOperation"] as? Bool {
                    self.allowShareOperation = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["CreateUser"] as? String {
                    self.createUser = value
                }
                if let value = dict["CreateUserAccountName"] as? String {
                    self.createUserAccountName = value
                }
                if let value = dict["ModifiedTime"] as? String {
                    self.modifiedTime = value
                }
                if let value = dict["ModifyUser"] as? String {
                    self.modifyUser = value
                }
                if let value = dict["ModifyUserAccountName"] as? String {
                    self.modifyUserAccountName = value
                }
                if let value = dict["OrganizationId"] as? String {
                    self.organizationId = value
                }
                if let value = dict["Owner"] as? String {
                    self.owner = value
                }
                if let value = dict["OwnerAccountName"] as? String {
                    self.ownerAccountName = value
                }
                if let value = dict["WorkspaceDescription"] as? String {
                    self.workspaceDescription = value
                }
                if let value = dict["WorkspaceId"] as? String {
                    self.workspaceId = value
                }
                if let value = dict["WorkspaceName"] as? String {
                    self.workspaceName = value
                }
            }
        }
        public var data: [QueryOrganizationWorkspaceListResponseBody.Result.Data]?

        public var pageNum: Int32?

        public var pageSize: Int32?

        public var totalNum: Int32?

        public var totalPages: Int32?

        public override init() {
            super.init()
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
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["Data"] = tmp
            }
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalNum != nil {
                map["TotalNum"] = self.totalNum!
            }
            if self.totalPages != nil {
                map["TotalPages"] = self.totalPages!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? [Any?] {
                var tmp : [QueryOrganizationWorkspaceListResponseBody.Result.Data] = []
                for v in value {
                    if v != nil {
                        var model = QueryOrganizationWorkspaceListResponseBody.Result.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["PageNum"] as? Int32 {
                self.pageNum = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalNum"] as? Int32 {
                self.totalNum = value
            }
            if let value = dict["TotalPages"] as? Int32 {
                self.totalPages = value
            }
        }
    }
    public var requestId: String?

    public var result: QueryOrganizationWorkspaceListResponseBody.Result?

    public var success: Bool?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = QueryOrganizationWorkspaceListResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryOrganizationWorkspaceListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryOrganizationWorkspaceListResponseBody?

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
            var model = QueryOrganizationWorkspaceListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryReadableResourcesListByUserIdRequest : Tea.TeaModel {
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
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class QueryReadableResourcesListByUserIdResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Directory : Tea.TeaModel {
            public var id: String?

            public var name: String?

            public var pathId: String?

            public var pathName: String?

            public override init() {
                super.init()
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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.pathId != nil {
                    map["PathId"] = self.pathId!
                }
                if self.pathName != nil {
                    map["PathName"] = self.pathName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["PathId"] as? String {
                    self.pathId = value
                }
                if let value = dict["PathName"] as? String {
                    self.pathName = value
                }
            }
        }
        public var createTime: String?

        public var description_: String?

        public var directory: QueryReadableResourcesListByUserIdResponseBody.Result.Directory?

        public var modifyName: String?

        public var modifyTime: String?

        public var ownerId: String?

        public var ownerName: String?

        public var securityLevel: String?

        public var status: Int32?

        public var thirdPartAuthFlag: Int32?

        public var workName: String?

        public var workType: String?

        public var worksId: String?

        public var workspaceId: String?

        public var workspaceName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.directory?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.directory != nil {
                map["Directory"] = self.directory?.toMap()
            }
            if self.modifyName != nil {
                map["ModifyName"] = self.modifyName!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.ownerId != nil {
                map["OwnerId"] = self.ownerId!
            }
            if self.ownerName != nil {
                map["OwnerName"] = self.ownerName!
            }
            if self.securityLevel != nil {
                map["SecurityLevel"] = self.securityLevel!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.thirdPartAuthFlag != nil {
                map["ThirdPartAuthFlag"] = self.thirdPartAuthFlag!
            }
            if self.workName != nil {
                map["WorkName"] = self.workName!
            }
            if self.workType != nil {
                map["WorkType"] = self.workType!
            }
            if self.worksId != nil {
                map["WorksId"] = self.worksId!
            }
            if self.workspaceId != nil {
                map["WorkspaceId"] = self.workspaceId!
            }
            if self.workspaceName != nil {
                map["WorkspaceName"] = self.workspaceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Directory"] as? [String: Any?] {
                var model = QueryReadableResourcesListByUserIdResponseBody.Result.Directory()
                model.fromMap(value)
                self.directory = model
            }
            if let value = dict["ModifyName"] as? String {
                self.modifyName = value
            }
            if let value = dict["ModifyTime"] as? String {
                self.modifyTime = value
            }
            if let value = dict["OwnerId"] as? String {
                self.ownerId = value
            }
            if let value = dict["OwnerName"] as? String {
                self.ownerName = value
            }
            if let value = dict["SecurityLevel"] as? String {
                self.securityLevel = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
            if let value = dict["ThirdPartAuthFlag"] as? Int32 {
                self.thirdPartAuthFlag = value
            }
            if let value = dict["WorkName"] as? String {
                self.workName = value
            }
            if let value = dict["WorkType"] as? String {
                self.workType = value
            }
            if let value = dict["WorksId"] as? String {
                self.worksId = value
            }
            if let value = dict["WorkspaceId"] as? String {
                self.workspaceId = value
            }
            if let value = dict["WorkspaceName"] as? String {
                self.workspaceName = value
            }
        }
    }
    public var requestId: String?

    public var result: [QueryReadableResourcesListByUserIdResponseBody.Result]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [Any?] {
            var tmp : [QueryReadableResourcesListByUserIdResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = QueryReadableResourcesListByUserIdResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryReadableResourcesListByUserIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryReadableResourcesListByUserIdResponseBody?

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
            var model = QueryReadableResourcesListByUserIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryReadableResourcesListByUserIdV2Request : Tea.TeaModel {
    public var userId: String?

    public var workType: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.workType != nil {
            map["WorkType"] = self.workType!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["WorkType"] as? String {
            self.workType = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class QueryReadableResourcesListByUserIdV2ResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Directory : Tea.TeaModel {
            public var id: String?

            public var name: String?

            public var pathId: String?

            public var pathName: String?

            public override init() {
                super.init()
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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.pathId != nil {
                    map["PathId"] = self.pathId!
                }
                if self.pathName != nil {
                    map["PathName"] = self.pathName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["PathId"] as? String {
                    self.pathId = value
                }
                if let value = dict["PathName"] as? String {
                    self.pathName = value
                }
            }
        }
        public var createTime: String?

        public var description_: String?

        public var directory: QueryReadableResourcesListByUserIdV2ResponseBody.Result.Directory?

        public var modifyName: String?

        public var modifyTime: String?

        public var ownerId: String?

        public var ownerName: String?

        public var securityLevel: String?

        public var status: Int32?

        public var thirdPartAuthFlag: Int32?

        public var workName: String?

        public var workType: String?

        public var worksId: String?

        public var workspaceId: String?

        public var workspaceName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.directory?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.directory != nil {
                map["Directory"] = self.directory?.toMap()
            }
            if self.modifyName != nil {
                map["ModifyName"] = self.modifyName!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.ownerId != nil {
                map["OwnerId"] = self.ownerId!
            }
            if self.ownerName != nil {
                map["OwnerName"] = self.ownerName!
            }
            if self.securityLevel != nil {
                map["SecurityLevel"] = self.securityLevel!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.thirdPartAuthFlag != nil {
                map["ThirdPartAuthFlag"] = self.thirdPartAuthFlag!
            }
            if self.workName != nil {
                map["WorkName"] = self.workName!
            }
            if self.workType != nil {
                map["WorkType"] = self.workType!
            }
            if self.worksId != nil {
                map["WorksId"] = self.worksId!
            }
            if self.workspaceId != nil {
                map["WorkspaceId"] = self.workspaceId!
            }
            if self.workspaceName != nil {
                map["WorkspaceName"] = self.workspaceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Directory"] as? [String: Any?] {
                var model = QueryReadableResourcesListByUserIdV2ResponseBody.Result.Directory()
                model.fromMap(value)
                self.directory = model
            }
            if let value = dict["ModifyName"] as? String {
                self.modifyName = value
            }
            if let value = dict["ModifyTime"] as? String {
                self.modifyTime = value
            }
            if let value = dict["OwnerId"] as? String {
                self.ownerId = value
            }
            if let value = dict["OwnerName"] as? String {
                self.ownerName = value
            }
            if let value = dict["SecurityLevel"] as? String {
                self.securityLevel = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
            if let value = dict["ThirdPartAuthFlag"] as? Int32 {
                self.thirdPartAuthFlag = value
            }
            if let value = dict["WorkName"] as? String {
                self.workName = value
            }
            if let value = dict["WorkType"] as? String {
                self.workType = value
            }
            if let value = dict["WorksId"] as? String {
                self.worksId = value
            }
            if let value = dict["WorkspaceId"] as? String {
                self.workspaceId = value
            }
            if let value = dict["WorkspaceName"] as? String {
                self.workspaceName = value
            }
        }
    }
    public var requestId: String?

    public var result: [QueryReadableResourcesListByUserIdV2ResponseBody.Result]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [Any?] {
            var tmp : [QueryReadableResourcesListByUserIdV2ResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = QueryReadableResourcesListByUserIdV2ResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryReadableResourcesListByUserIdV2Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryReadableResourcesListByUserIdV2ResponseBody?

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
            var model = QueryReadableResourcesListByUserIdV2ResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryReportPerformanceRequest : Tea.TeaModel {
    public var costTimeAvgMin: Int32?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var queryType: String?

    public var reportId: String?

    public var resourceType: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.costTimeAvgMin != nil {
            map["CostTimeAvgMin"] = self.costTimeAvgMin!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queryType != nil {
            map["QueryType"] = self.queryType!
        }
        if self.reportId != nil {
            map["ReportId"] = self.reportId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CostTimeAvgMin"] as? Int32 {
            self.costTimeAvgMin = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["QueryType"] as? String {
            self.queryType = value
        }
        if let value = dict["ReportId"] as? String {
            self.reportId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class QueryReportPerformanceResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var cacheCostTimeAvg: Double?

        public var cacheQueryCount: Int32?

        public var componentQueryCount: Int32?

        public var componentQueryCountAvg: Double?

        public var costTimeAvg: Double?

        public var queryCount: Int32?

        public var queryCountAvg: Double?

        public var queryOverFivePercentNum: Double?

        public var queryOverFiveSecPercent: String?

        public var queryOverTenSecPercent: String?

        public var queryOverTenSecPercentNum: Double?

        public var queryTimeoutCount: Int32?

        public var queryTimeoutCountPercent: Double?

        public var quickIndexCostTimeAvg: Double?

        public var quickIndexQueryCount: Int32?

        public var repeatQueryPercent: String?

        public var repeatQueryPercentNum: Double?

        public var repeatSqlQueryCount: Int32?

        public var repeatSqlQueryPercent: String?

        public var reportId: String?

        public var reportName: String?

        public var reportType: String?

        public var workspaceId: String?

        public var workspaceName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cacheCostTimeAvg != nil {
                map["CacheCostTimeAvg"] = self.cacheCostTimeAvg!
            }
            if self.cacheQueryCount != nil {
                map["CacheQueryCount"] = self.cacheQueryCount!
            }
            if self.componentQueryCount != nil {
                map["ComponentQueryCount"] = self.componentQueryCount!
            }
            if self.componentQueryCountAvg != nil {
                map["ComponentQueryCountAvg"] = self.componentQueryCountAvg!
            }
            if self.costTimeAvg != nil {
                map["CostTimeAvg"] = self.costTimeAvg!
            }
            if self.queryCount != nil {
                map["QueryCount"] = self.queryCount!
            }
            if self.queryCountAvg != nil {
                map["QueryCountAvg"] = self.queryCountAvg!
            }
            if self.queryOverFivePercentNum != nil {
                map["QueryOverFivePercentNum"] = self.queryOverFivePercentNum!
            }
            if self.queryOverFiveSecPercent != nil {
                map["QueryOverFiveSecPercent"] = self.queryOverFiveSecPercent!
            }
            if self.queryOverTenSecPercent != nil {
                map["QueryOverTenSecPercent"] = self.queryOverTenSecPercent!
            }
            if self.queryOverTenSecPercentNum != nil {
                map["QueryOverTenSecPercentNum"] = self.queryOverTenSecPercentNum!
            }
            if self.queryTimeoutCount != nil {
                map["QueryTimeoutCount"] = self.queryTimeoutCount!
            }
            if self.queryTimeoutCountPercent != nil {
                map["QueryTimeoutCountPercent"] = self.queryTimeoutCountPercent!
            }
            if self.quickIndexCostTimeAvg != nil {
                map["QuickIndexCostTimeAvg"] = self.quickIndexCostTimeAvg!
            }
            if self.quickIndexQueryCount != nil {
                map["QuickIndexQueryCount"] = self.quickIndexQueryCount!
            }
            if self.repeatQueryPercent != nil {
                map["RepeatQueryPercent"] = self.repeatQueryPercent!
            }
            if self.repeatQueryPercentNum != nil {
                map["RepeatQueryPercentNum"] = self.repeatQueryPercentNum!
            }
            if self.repeatSqlQueryCount != nil {
                map["RepeatSqlQueryCount"] = self.repeatSqlQueryCount!
            }
            if self.repeatSqlQueryPercent != nil {
                map["RepeatSqlQueryPercent"] = self.repeatSqlQueryPercent!
            }
            if self.reportId != nil {
                map["ReportId"] = self.reportId!
            }
            if self.reportName != nil {
                map["ReportName"] = self.reportName!
            }
            if self.reportType != nil {
                map["ReportType"] = self.reportType!
            }
            if self.workspaceId != nil {
                map["WorkspaceId"] = self.workspaceId!
            }
            if self.workspaceName != nil {
                map["WorkspaceName"] = self.workspaceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CacheCostTimeAvg"] as? Double {
                self.cacheCostTimeAvg = value
            }
            if let value = dict["CacheQueryCount"] as? Int32 {
                self.cacheQueryCount = value
            }
            if let value = dict["ComponentQueryCount"] as? Int32 {
                self.componentQueryCount = value
            }
            if let value = dict["ComponentQueryCountAvg"] as? Double {
                self.componentQueryCountAvg = value
            }
            if let value = dict["CostTimeAvg"] as? Double {
                self.costTimeAvg = value
            }
            if let value = dict["QueryCount"] as? Int32 {
                self.queryCount = value
            }
            if let value = dict["QueryCountAvg"] as? Double {
                self.queryCountAvg = value
            }
            if let value = dict["QueryOverFivePercentNum"] as? Double {
                self.queryOverFivePercentNum = value
            }
            if let value = dict["QueryOverFiveSecPercent"] as? String {
                self.queryOverFiveSecPercent = value
            }
            if let value = dict["QueryOverTenSecPercent"] as? String {
                self.queryOverTenSecPercent = value
            }
            if let value = dict["QueryOverTenSecPercentNum"] as? Double {
                self.queryOverTenSecPercentNum = value
            }
            if let value = dict["QueryTimeoutCount"] as? Int32 {
                self.queryTimeoutCount = value
            }
            if let value = dict["QueryTimeoutCountPercent"] as? Double {
                self.queryTimeoutCountPercent = value
            }
            if let value = dict["QuickIndexCostTimeAvg"] as? Double {
                self.quickIndexCostTimeAvg = value
            }
            if let value = dict["QuickIndexQueryCount"] as? Int32 {
                self.quickIndexQueryCount = value
            }
            if let value = dict["RepeatQueryPercent"] as? String {
                self.repeatQueryPercent = value
            }
            if let value = dict["RepeatQueryPercentNum"] as? Double {
                self.repeatQueryPercentNum = value
            }
            if let value = dict["RepeatSqlQueryCount"] as? Int32 {
                self.repeatSqlQueryCount = value
            }
            if let value = dict["RepeatSqlQueryPercent"] as? String {
                self.repeatSqlQueryPercent = value
            }
            if let value = dict["ReportId"] as? String {
                self.reportId = value
            }
            if let value = dict["ReportName"] as? String {
                self.reportName = value
            }
            if let value = dict["ReportType"] as? String {
                self.reportType = value
            }
            if let value = dict["WorkspaceId"] as? String {
                self.workspaceId = value
            }
            if let value = dict["WorkspaceName"] as? String {
                self.workspaceName = value
            }
        }
    }
    public var requestId: String?

    public var result: [QueryReportPerformanceResponseBody.Result]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [Any?] {
            var tmp : [QueryReportPerformanceResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = QueryReportPerformanceResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryReportPerformanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryReportPerformanceResponseBody?

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
            var model = QueryReportPerformanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryShareListRequest : Tea.TeaModel {
    public var reportId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.reportId != nil {
            map["ReportId"] = self.reportId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ReportId"] as? String {
            self.reportId = value
        }
    }
}

public class QueryShareListResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var authPoint: Int32?

        public var expireDate: Int64?

        public var reportId: String?

        public var shareId: String?

        public var shareToId: String?

        public var shareToName: String?

        public var shareToType: Int32?

        public var shareType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authPoint != nil {
                map["AuthPoint"] = self.authPoint!
            }
            if self.expireDate != nil {
                map["ExpireDate"] = self.expireDate!
            }
            if self.reportId != nil {
                map["ReportId"] = self.reportId!
            }
            if self.shareId != nil {
                map["ShareId"] = self.shareId!
            }
            if self.shareToId != nil {
                map["ShareToId"] = self.shareToId!
            }
            if self.shareToName != nil {
                map["ShareToName"] = self.shareToName!
            }
            if self.shareToType != nil {
                map["ShareToType"] = self.shareToType!
            }
            if self.shareType != nil {
                map["ShareType"] = self.shareType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AuthPoint"] as? Int32 {
                self.authPoint = value
            }
            if let value = dict["ExpireDate"] as? Int64 {
                self.expireDate = value
            }
            if let value = dict["ReportId"] as? String {
                self.reportId = value
            }
            if let value = dict["ShareId"] as? String {
                self.shareId = value
            }
            if let value = dict["ShareToId"] as? String {
                self.shareToId = value
            }
            if let value = dict["ShareToName"] as? String {
                self.shareToName = value
            }
            if let value = dict["ShareToType"] as? Int32 {
                self.shareToType = value
            }
            if let value = dict["ShareType"] as? String {
                self.shareType = value
            }
        }
    }
    public var requestId: String?

    public var result: [QueryShareListResponseBody.Result]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [Any?] {
            var tmp : [QueryShareListResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = QueryShareListResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryShareListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryShareListResponseBody?

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
            var model = QueryShareListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QuerySharesToUserListRequest : Tea.TeaModel {
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
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class QuerySharesToUserListResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Directory : Tea.TeaModel {
            public var id: String?

            public var name: String?

            public var pathId: String?

            public var pathName: String?

            public override init() {
                super.init()
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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.pathId != nil {
                    map["PathId"] = self.pathId!
                }
                if self.pathName != nil {
                    map["PathName"] = self.pathName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["PathId"] as? String {
                    self.pathId = value
                }
                if let value = dict["PathName"] as? String {
                    self.pathName = value
                }
            }
        }
        public var createTime: String?

        public var description_: String?

        public var directory: QuerySharesToUserListResponseBody.Result.Directory?

        public var modifyName: String?

        public var modifyTime: String?

        public var ownerId: String?

        public var ownerName: String?

        public var securityLevel: String?

        public var status: Int32?

        public var thirdPartAuthFlag: Int32?

        public var workName: String?

        public var workType: String?

        public var worksId: String?

        public var workspaceId: String?

        public var workspaceName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.directory?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.directory != nil {
                map["Directory"] = self.directory?.toMap()
            }
            if self.modifyName != nil {
                map["ModifyName"] = self.modifyName!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.ownerId != nil {
                map["OwnerId"] = self.ownerId!
            }
            if self.ownerName != nil {
                map["OwnerName"] = self.ownerName!
            }
            if self.securityLevel != nil {
                map["SecurityLevel"] = self.securityLevel!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.thirdPartAuthFlag != nil {
                map["ThirdPartAuthFlag"] = self.thirdPartAuthFlag!
            }
            if self.workName != nil {
                map["WorkName"] = self.workName!
            }
            if self.workType != nil {
                map["WorkType"] = self.workType!
            }
            if self.worksId != nil {
                map["WorksId"] = self.worksId!
            }
            if self.workspaceId != nil {
                map["WorkspaceId"] = self.workspaceId!
            }
            if self.workspaceName != nil {
                map["WorkspaceName"] = self.workspaceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Directory"] as? [String: Any?] {
                var model = QuerySharesToUserListResponseBody.Result.Directory()
                model.fromMap(value)
                self.directory = model
            }
            if let value = dict["ModifyName"] as? String {
                self.modifyName = value
            }
            if let value = dict["ModifyTime"] as? String {
                self.modifyTime = value
            }
            if let value = dict["OwnerId"] as? String {
                self.ownerId = value
            }
            if let value = dict["OwnerName"] as? String {
                self.ownerName = value
            }
            if let value = dict["SecurityLevel"] as? String {
                self.securityLevel = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
            if let value = dict["ThirdPartAuthFlag"] as? Int32 {
                self.thirdPartAuthFlag = value
            }
            if let value = dict["WorkName"] as? String {
                self.workName = value
            }
            if let value = dict["WorkType"] as? String {
                self.workType = value
            }
            if let value = dict["WorksId"] as? String {
                self.worksId = value
            }
            if let value = dict["WorkspaceId"] as? String {
                self.workspaceId = value
            }
            if let value = dict["WorkspaceName"] as? String {
                self.workspaceName = value
            }
        }
    }
    public var requestId: String?

    public var result: [QuerySharesToUserListResponseBody.Result]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [Any?] {
            var tmp : [QuerySharesToUserListResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = QuerySharesToUserListResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QuerySharesToUserListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySharesToUserListResponseBody?

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
            var model = QuerySharesToUserListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QuerySmartqPermissionByCubeIdRequest : Tea.TeaModel {
    public var cubeId: String?

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
        if self.cubeId != nil {
            map["CubeId"] = self.cubeId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CubeId"] as? String {
            self.cubeId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class QuerySmartqPermissionByCubeIdResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var cubeId: String?

        public var cubeName: String?

        public var hasPerssion: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cubeId != nil {
                map["CubeId"] = self.cubeId!
            }
            if self.cubeName != nil {
                map["CubeName"] = self.cubeName!
            }
            if self.hasPerssion != nil {
                map["HasPerssion"] = self.hasPerssion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CubeId"] as? String {
                self.cubeId = value
            }
            if let value = dict["CubeName"] as? String {
                self.cubeName = value
            }
            if let value = dict["HasPerssion"] as? Bool {
                self.hasPerssion = value
            }
        }
    }
    public var requestId: String?

    public var result: QuerySmartqPermissionByCubeIdResponseBody.Result?

    public var success: Bool?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = QuerySmartqPermissionByCubeIdResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QuerySmartqPermissionByCubeIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySmartqPermissionByCubeIdResponseBody?

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
            var model = QuerySmartqPermissionByCubeIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryTicketInfoRequest : Tea.TeaModel {
    public var ticket: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ticket != nil {
            map["Ticket"] = self.ticket!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Ticket"] as? String {
            self.ticket = value
        }
    }
}

public class QueryTicketInfoResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var accessTicket: String?

        public var cmptId: String?

        public var globalParam: String?

        public var invalidTime: String?

        public var maxTicketNum: Int32?

        public var organizationId: String?

        public var registerTime: String?

        public var usedTicketNum: Int32?

        public var userId: String?

        public var watermarkParam: String?

        public var worksId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessTicket != nil {
                map["AccessTicket"] = self.accessTicket!
            }
            if self.cmptId != nil {
                map["CmptId"] = self.cmptId!
            }
            if self.globalParam != nil {
                map["GlobalParam"] = self.globalParam!
            }
            if self.invalidTime != nil {
                map["InvalidTime"] = self.invalidTime!
            }
            if self.maxTicketNum != nil {
                map["MaxTicketNum"] = self.maxTicketNum!
            }
            if self.organizationId != nil {
                map["OrganizationId"] = self.organizationId!
            }
            if self.registerTime != nil {
                map["RegisterTime"] = self.registerTime!
            }
            if self.usedTicketNum != nil {
                map["UsedTicketNum"] = self.usedTicketNum!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.watermarkParam != nil {
                map["WatermarkParam"] = self.watermarkParam!
            }
            if self.worksId != nil {
                map["WorksId"] = self.worksId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessTicket"] as? String {
                self.accessTicket = value
            }
            if let value = dict["CmptId"] as? String {
                self.cmptId = value
            }
            if let value = dict["GlobalParam"] as? String {
                self.globalParam = value
            }
            if let value = dict["InvalidTime"] as? String {
                self.invalidTime = value
            }
            if let value = dict["MaxTicketNum"] as? Int32 {
                self.maxTicketNum = value
            }
            if let value = dict["OrganizationId"] as? String {
                self.organizationId = value
            }
            if let value = dict["RegisterTime"] as? String {
                self.registerTime = value
            }
            if let value = dict["UsedTicketNum"] as? Int32 {
                self.usedTicketNum = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
            if let value = dict["WatermarkParam"] as? String {
                self.watermarkParam = value
            }
            if let value = dict["WorksId"] as? String {
                self.worksId = value
            }
        }
    }
    public var requestId: String?

    public var result: QueryTicketInfoResponseBody.Result?

    public var success: Bool?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = QueryTicketInfoResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryTicketInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryTicketInfoResponseBody?

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
            var model = QueryTicketInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryUserGroupListByParentIdRequest : Tea.TeaModel {
    public var parentUserGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.parentUserGroupId != nil {
            map["ParentUserGroupId"] = self.parentUserGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ParentUserGroupId"] as? String {
            self.parentUserGroupId = value
        }
    }
}

public class QueryUserGroupListByParentIdResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var createTime: String?

        public var createUser: String?

        public var identifiedPath: String?

        public var modifiedTime: String?

        public var modifyUser: String?

        public var parentUserGroupId: String?

        public var userGroupDescription: String?

        public var userGroupId: String?

        public var userGroupName: String?

        public override init() {
            super.init()
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
            if self.createUser != nil {
                map["CreateUser"] = self.createUser!
            }
            if self.identifiedPath != nil {
                map["IdentifiedPath"] = self.identifiedPath!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.modifyUser != nil {
                map["ModifyUser"] = self.modifyUser!
            }
            if self.parentUserGroupId != nil {
                map["ParentUserGroupId"] = self.parentUserGroupId!
            }
            if self.userGroupDescription != nil {
                map["UserGroupDescription"] = self.userGroupDescription!
            }
            if self.userGroupId != nil {
                map["UserGroupId"] = self.userGroupId!
            }
            if self.userGroupName != nil {
                map["UserGroupName"] = self.userGroupName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["CreateUser"] as? String {
                self.createUser = value
            }
            if let value = dict["IdentifiedPath"] as? String {
                self.identifiedPath = value
            }
            if let value = dict["ModifiedTime"] as? String {
                self.modifiedTime = value
            }
            if let value = dict["ModifyUser"] as? String {
                self.modifyUser = value
            }
            if let value = dict["ParentUserGroupId"] as? String {
                self.parentUserGroupId = value
            }
            if let value = dict["UserGroupDescription"] as? String {
                self.userGroupDescription = value
            }
            if let value = dict["UserGroupId"] as? String {
                self.userGroupId = value
            }
            if let value = dict["UserGroupName"] as? String {
                self.userGroupName = value
            }
        }
    }
    public var requestId: String?

    public var result: [QueryUserGroupListByParentIdResponseBody.Result]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [Any?] {
            var tmp : [QueryUserGroupListByParentIdResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = QueryUserGroupListByParentIdResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryUserGroupListByParentIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryUserGroupListByParentIdResponseBody?

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
            var model = QueryUserGroupListByParentIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryUserGroupMemberRequest : Tea.TeaModel {
    public var keyword: String?

    public var userGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.userGroupId != nil {
            map["UserGroupId"] = self.userGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["UserGroupId"] as? String {
            self.userGroupId = value
        }
    }
}

public class QueryUserGroupMemberResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var id: String?

        public var isUserGroup: Bool?

        public var name: String?

        public var parentUserGroupId: String?

        public var parentUserGroupName: String?

        public override init() {
            super.init()
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
            if self.isUserGroup != nil {
                map["IsUserGroup"] = self.isUserGroup!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.parentUserGroupId != nil {
                map["ParentUserGroupId"] = self.parentUserGroupId!
            }
            if self.parentUserGroupName != nil {
                map["ParentUserGroupName"] = self.parentUserGroupName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["IsUserGroup"] as? Bool {
                self.isUserGroup = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ParentUserGroupId"] as? String {
                self.parentUserGroupId = value
            }
            if let value = dict["ParentUserGroupName"] as? String {
                self.parentUserGroupName = value
            }
        }
    }
    public var requestId: String?

    public var result: [QueryUserGroupMemberResponseBody.Result]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [Any?] {
            var tmp : [QueryUserGroupMemberResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = QueryUserGroupMemberResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryUserGroupMemberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryUserGroupMemberResponseBody?

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
            var model = QueryUserGroupMemberResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryUserInfoByAccountRequest : Tea.TeaModel {
    public var account: String?

    public var parentAccountName: String?

    public override init() {
        super.init()
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
        if self.parentAccountName != nil {
            map["ParentAccountName"] = self.parentAccountName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Account"] as? String {
            self.account = value
        }
        if let value = dict["ParentAccountName"] as? String {
            self.parentAccountName = value
        }
    }
}

public class QueryUserInfoByAccountResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var accountId: String?

        public var accountName: String?

        public var adminUser: Bool?

        public var authAdminUser: Bool?

        public var email: String?

        public var nickName: String?

        public var phone: String?

        public var roleIdList: [Int64]?

        public var userId: String?

        public var userType: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.accountName != nil {
                map["AccountName"] = self.accountName!
            }
            if self.adminUser != nil {
                map["AdminUser"] = self.adminUser!
            }
            if self.authAdminUser != nil {
                map["AuthAdminUser"] = self.authAdminUser!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.nickName != nil {
                map["NickName"] = self.nickName!
            }
            if self.phone != nil {
                map["Phone"] = self.phone!
            }
            if self.roleIdList != nil {
                map["RoleIdList"] = self.roleIdList!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.userType != nil {
                map["UserType"] = self.userType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
            if let value = dict["AccountName"] as? String {
                self.accountName = value
            }
            if let value = dict["AdminUser"] as? Bool {
                self.adminUser = value
            }
            if let value = dict["AuthAdminUser"] as? Bool {
                self.authAdminUser = value
            }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["NickName"] as? String {
                self.nickName = value
            }
            if let value = dict["Phone"] as? String {
                self.phone = value
            }
            if let value = dict["RoleIdList"] as? [Int64] {
                self.roleIdList = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
            if let value = dict["UserType"] as? Int32 {
                self.userType = value
            }
        }
    }
    public var requestId: String?

    public var result: QueryUserInfoByAccountResponseBody.Result?

    public var success: Bool?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = QueryUserInfoByAccountResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryUserInfoByAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryUserInfoByAccountResponseBody?

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
            var model = QueryUserInfoByAccountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryUserInfoByUserIdRequest : Tea.TeaModel {
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
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class QueryUserInfoByUserIdResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var accountId: String?

        public var accountName: String?

        public var adminUser: Bool?

        public var authAdminUser: Bool?

        public var email: String?

        public var nickName: String?

        public var phone: String?

        public var roleIdList: [Int64]?

        public var userId: String?

        public var userType: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.accountName != nil {
                map["AccountName"] = self.accountName!
            }
            if self.adminUser != nil {
                map["AdminUser"] = self.adminUser!
            }
            if self.authAdminUser != nil {
                map["AuthAdminUser"] = self.authAdminUser!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.nickName != nil {
                map["NickName"] = self.nickName!
            }
            if self.phone != nil {
                map["Phone"] = self.phone!
            }
            if self.roleIdList != nil {
                map["RoleIdList"] = self.roleIdList!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.userType != nil {
                map["UserType"] = self.userType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
            if let value = dict["AccountName"] as? String {
                self.accountName = value
            }
            if let value = dict["AdminUser"] as? Bool {
                self.adminUser = value
            }
            if let value = dict["AuthAdminUser"] as? Bool {
                self.authAdminUser = value
            }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["NickName"] as? String {
                self.nickName = value
            }
            if let value = dict["Phone"] as? String {
                self.phone = value
            }
            if let value = dict["RoleIdList"] as? [Int64] {
                self.roleIdList = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
            if let value = dict["UserType"] as? Int32 {
                self.userType = value
            }
        }
    }
    public var requestId: String?

    public var result: QueryUserInfoByUserIdResponseBody.Result?

    public var success: Bool?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = QueryUserInfoByUserIdResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryUserInfoByUserIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryUserInfoByUserIdResponseBody?

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
            var model = QueryUserInfoByUserIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryUserListRequest : Tea.TeaModel {
    public var keyword: String?

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
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
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
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class QueryUserListResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var accountId: String?

            public var accountName: String?

            public var adminUser: Bool?

            public var authAdminUser: Bool?

            public var isDeleted: Bool?

            public var joinedDate: Int64?

            public var lastLoginTime: Int64?

            public var nickName: String?

            public var roleIdList: [Int64]?

            public var userId: String?

            public var userType: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accountId != nil {
                    map["AccountId"] = self.accountId!
                }
                if self.accountName != nil {
                    map["AccountName"] = self.accountName!
                }
                if self.adminUser != nil {
                    map["AdminUser"] = self.adminUser!
                }
                if self.authAdminUser != nil {
                    map["AuthAdminUser"] = self.authAdminUser!
                }
                if self.isDeleted != nil {
                    map["IsDeleted"] = self.isDeleted!
                }
                if self.joinedDate != nil {
                    map["JoinedDate"] = self.joinedDate!
                }
                if self.lastLoginTime != nil {
                    map["LastLoginTime"] = self.lastLoginTime!
                }
                if self.nickName != nil {
                    map["NickName"] = self.nickName!
                }
                if self.roleIdList != nil {
                    map["RoleIdList"] = self.roleIdList!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                if self.userType != nil {
                    map["UserType"] = self.userType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccountId"] as? String {
                    self.accountId = value
                }
                if let value = dict["AccountName"] as? String {
                    self.accountName = value
                }
                if let value = dict["AdminUser"] as? Bool {
                    self.adminUser = value
                }
                if let value = dict["AuthAdminUser"] as? Bool {
                    self.authAdminUser = value
                }
                if let value = dict["IsDeleted"] as? Bool {
                    self.isDeleted = value
                }
                if let value = dict["JoinedDate"] as? Int64 {
                    self.joinedDate = value
                }
                if let value = dict["LastLoginTime"] as? Int64 {
                    self.lastLoginTime = value
                }
                if let value = dict["NickName"] as? String {
                    self.nickName = value
                }
                if let value = dict["RoleIdList"] as? [Int64] {
                    self.roleIdList = value
                }
                if let value = dict["UserId"] as? String {
                    self.userId = value
                }
                if let value = dict["UserType"] as? Int32 {
                    self.userType = value
                }
            }
        }
        public var data: [QueryUserListResponseBody.Result.Data]?

        public var pageNum: Int32?

        public var pageSize: Int32?

        public var totalNum: Int32?

        public var totalPages: Int32?

        public override init() {
            super.init()
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
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["Data"] = tmp
            }
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalNum != nil {
                map["TotalNum"] = self.totalNum!
            }
            if self.totalPages != nil {
                map["TotalPages"] = self.totalPages!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? [Any?] {
                var tmp : [QueryUserListResponseBody.Result.Data] = []
                for v in value {
                    if v != nil {
                        var model = QueryUserListResponseBody.Result.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["PageNum"] as? Int32 {
                self.pageNum = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalNum"] as? Int32 {
                self.totalNum = value
            }
            if let value = dict["TotalPages"] as? Int32 {
                self.totalPages = value
            }
        }
    }
    public var requestId: String?

    public var result: QueryUserListResponseBody.Result?

    public var success: Bool?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = QueryUserListResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryUserListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryUserListResponseBody?

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
            var model = QueryUserListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryUserRoleInfoInWorkspaceRequest : Tea.TeaModel {
    public var userId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class QueryUserRoleInfoInWorkspaceResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var roleCode: String?

        public var roleId: Int64?

        public var roleName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.roleCode != nil {
                map["RoleCode"] = self.roleCode!
            }
            if self.roleId != nil {
                map["RoleId"] = self.roleId!
            }
            if self.roleName != nil {
                map["RoleName"] = self.roleName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RoleCode"] as? String {
                self.roleCode = value
            }
            if let value = dict["RoleId"] as? Int64 {
                self.roleId = value
            }
            if let value = dict["RoleName"] as? String {
                self.roleName = value
            }
        }
    }
    public var requestId: String?

    public var result: QueryUserRoleInfoInWorkspaceResponseBody.Result?

    public var success: Bool?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = QueryUserRoleInfoInWorkspaceResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryUserRoleInfoInWorkspaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryUserRoleInfoInWorkspaceResponseBody?

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
            var model = QueryUserRoleInfoInWorkspaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryUserTagMetaListResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var tagDescription: String?

        public var tagId: String?

        public var tagName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tagDescription != nil {
                map["TagDescription"] = self.tagDescription!
            }
            if self.tagId != nil {
                map["TagId"] = self.tagId!
            }
            if self.tagName != nil {
                map["TagName"] = self.tagName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TagDescription"] as? String {
                self.tagDescription = value
            }
            if let value = dict["TagId"] as? String {
                self.tagId = value
            }
            if let value = dict["TagName"] as? String {
                self.tagName = value
            }
        }
    }
    public var requestId: String?

    public var result: [QueryUserTagMetaListResponseBody.Result]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [Any?] {
            var tmp : [QueryUserTagMetaListResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = QueryUserTagMetaListResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryUserTagMetaListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryUserTagMetaListResponseBody?

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
            var model = QueryUserTagMetaListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryUserTagValueListRequest : Tea.TeaModel {
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
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class QueryUserTagValueListResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var tagId: String?

        public var tagName: String?

        public var tagValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tagId != nil {
                map["TagId"] = self.tagId!
            }
            if self.tagName != nil {
                map["TagName"] = self.tagName!
            }
            if self.tagValue != nil {
                map["TagValue"] = self.tagValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TagId"] as? String {
                self.tagId = value
            }
            if let value = dict["TagName"] as? String {
                self.tagName = value
            }
            if let value = dict["TagValue"] as? String {
                self.tagValue = value
            }
        }
    }
    public var requestId: String?

    public var result: [QueryUserTagValueListResponseBody.Result]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [Any?] {
            var tmp : [QueryUserTagValueListResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = QueryUserTagValueListResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryUserTagValueListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryUserTagValueListResponseBody?

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
            var model = QueryUserTagValueListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryWorksRequest : Tea.TeaModel {
    public var worksId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.worksId != nil {
            map["WorksId"] = self.worksId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["WorksId"] as? String {
            self.worksId = value
        }
    }
}

public class QueryWorksResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Directory : Tea.TeaModel {
            public var id: String?

            public var name: String?

            public var pathId: String?

            public var pathName: String?

            public override init() {
                super.init()
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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.pathId != nil {
                    map["PathId"] = self.pathId!
                }
                if self.pathName != nil {
                    map["PathName"] = self.pathName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["PathId"] as? String {
                    self.pathId = value
                }
                if let value = dict["PathName"] as? String {
                    self.pathName = value
                }
            }
        }
        public var auth3rdFlag: Int32?

        public var description_: String?

        public var directory: QueryWorksResponseBody.Result.Directory?

        public var gmtCreate: String?

        public var gmtModify: String?

        public var modifyName: String?

        public var ownerId: String?

        public var ownerName: String?

        public var publicFlag: Bool?

        public var publicInvalidTime: Int64?

        public var securityLevel: String?

        public var status: Int32?

        public var workName: String?

        public var workType: String?

        public var worksId: String?

        public var workspaceId: String?

        public var workspaceName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.directory?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.auth3rdFlag != nil {
                map["Auth3rdFlag"] = self.auth3rdFlag!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.directory != nil {
                map["Directory"] = self.directory?.toMap()
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModify != nil {
                map["GmtModify"] = self.gmtModify!
            }
            if self.modifyName != nil {
                map["ModifyName"] = self.modifyName!
            }
            if self.ownerId != nil {
                map["OwnerId"] = self.ownerId!
            }
            if self.ownerName != nil {
                map["OwnerName"] = self.ownerName!
            }
            if self.publicFlag != nil {
                map["PublicFlag"] = self.publicFlag!
            }
            if self.publicInvalidTime != nil {
                map["PublicInvalidTime"] = self.publicInvalidTime!
            }
            if self.securityLevel != nil {
                map["SecurityLevel"] = self.securityLevel!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.workName != nil {
                map["WorkName"] = self.workName!
            }
            if self.workType != nil {
                map["WorkType"] = self.workType!
            }
            if self.worksId != nil {
                map["WorksId"] = self.worksId!
            }
            if self.workspaceId != nil {
                map["WorkspaceId"] = self.workspaceId!
            }
            if self.workspaceName != nil {
                map["WorkspaceName"] = self.workspaceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Auth3rdFlag"] as? Int32 {
                self.auth3rdFlag = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Directory"] as? [String: Any?] {
                var model = QueryWorksResponseBody.Result.Directory()
                model.fromMap(value)
                self.directory = model
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["GmtModify"] as? String {
                self.gmtModify = value
            }
            if let value = dict["ModifyName"] as? String {
                self.modifyName = value
            }
            if let value = dict["OwnerId"] as? String {
                self.ownerId = value
            }
            if let value = dict["OwnerName"] as? String {
                self.ownerName = value
            }
            if let value = dict["PublicFlag"] as? Bool {
                self.publicFlag = value
            }
            if let value = dict["PublicInvalidTime"] as? Int64 {
                self.publicInvalidTime = value
            }
            if let value = dict["SecurityLevel"] as? String {
                self.securityLevel = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
            if let value = dict["WorkName"] as? String {
                self.workName = value
            }
            if let value = dict["WorkType"] as? String {
                self.workType = value
            }
            if let value = dict["WorksId"] as? String {
                self.worksId = value
            }
            if let value = dict["WorkspaceId"] as? String {
                self.workspaceId = value
            }
            if let value = dict["WorkspaceName"] as? String {
                self.workspaceName = value
            }
        }
    }
    public var requestId: String?

    public var result: QueryWorksResponseBody.Result?

    public var success: Bool?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = QueryWorksResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryWorksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryWorksResponseBody?

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
            var model = QueryWorksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryWorksBloodRelationshipRequest : Tea.TeaModel {
    public var worksId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.worksId != nil {
            map["WorksId"] = self.worksId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["WorksId"] as? String {
            self.worksId = value
        }
    }
}

public class QueryWorksBloodRelationshipResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class QueryParams : Tea.TeaModel {
            public var areaId: String?

            public var areaName: String?

            public var caption: String?

            public var dataType: String?

            public var expression: String?

            public var isMeasure: Bool?

            public var pathId: String?

            public var uid: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.areaId != nil {
                    map["AreaId"] = self.areaId!
                }
                if self.areaName != nil {
                    map["AreaName"] = self.areaName!
                }
                if self.caption != nil {
                    map["Caption"] = self.caption!
                }
                if self.dataType != nil {
                    map["DataType"] = self.dataType!
                }
                if self.expression != nil {
                    map["Expression"] = self.expression!
                }
                if self.isMeasure != nil {
                    map["IsMeasure"] = self.isMeasure!
                }
                if self.pathId != nil {
                    map["PathId"] = self.pathId!
                }
                if self.uid != nil {
                    map["Uid"] = self.uid!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AreaId"] as? String {
                    self.areaId = value
                }
                if let value = dict["AreaName"] as? String {
                    self.areaName = value
                }
                if let value = dict["Caption"] as? String {
                    self.caption = value
                }
                if let value = dict["DataType"] as? String {
                    self.dataType = value
                }
                if let value = dict["Expression"] as? String {
                    self.expression = value
                }
                if let value = dict["IsMeasure"] as? Bool {
                    self.isMeasure = value
                }
                if let value = dict["PathId"] as? String {
                    self.pathId = value
                }
                if let value = dict["Uid"] as? String {
                    self.uid = value
                }
            }
        }
        public var componentId: String?

        public var componentName: String?

        public var componentType: Int32?

        public var componentTypeCnName: String?

        public var componentTypeName: String?

        public var datasetId: String?

        public var queryParams: [QueryWorksBloodRelationshipResponseBody.Result.QueryParams]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.componentId != nil {
                map["ComponentId"] = self.componentId!
            }
            if self.componentName != nil {
                map["ComponentName"] = self.componentName!
            }
            if self.componentType != nil {
                map["ComponentType"] = self.componentType!
            }
            if self.componentTypeCnName != nil {
                map["ComponentTypeCnName"] = self.componentTypeCnName!
            }
            if self.componentTypeName != nil {
                map["ComponentTypeName"] = self.componentTypeName!
            }
            if self.datasetId != nil {
                map["DatasetId"] = self.datasetId!
            }
            if self.queryParams != nil {
                var tmp : [Any] = []
                for k in self.queryParams! {
                    tmp.append(k.toMap())
                }
                map["QueryParams"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ComponentId"] as? String {
                self.componentId = value
            }
            if let value = dict["ComponentName"] as? String {
                self.componentName = value
            }
            if let value = dict["ComponentType"] as? Int32 {
                self.componentType = value
            }
            if let value = dict["ComponentTypeCnName"] as? String {
                self.componentTypeCnName = value
            }
            if let value = dict["ComponentTypeName"] as? String {
                self.componentTypeName = value
            }
            if let value = dict["DatasetId"] as? String {
                self.datasetId = value
            }
            if let value = dict["QueryParams"] as? [Any?] {
                var tmp : [QueryWorksBloodRelationshipResponseBody.Result.QueryParams] = []
                for v in value {
                    if v != nil {
                        var model = QueryWorksBloodRelationshipResponseBody.Result.QueryParams()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.queryParams = tmp
            }
        }
    }
    public var requestId: String?

    public var result: [QueryWorksBloodRelationshipResponseBody.Result]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [Any?] {
            var tmp : [QueryWorksBloodRelationshipResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = QueryWorksBloodRelationshipResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryWorksBloodRelationshipResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryWorksBloodRelationshipResponseBody?

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
            var model = QueryWorksBloodRelationshipResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryWorksByOrganizationRequest : Tea.TeaModel {
    public var pageNum: Int32?

    public var pageSize: Int32?

    public var status: Int32?

    public var thirdPartAuthFlag: Int32?

    public var worksType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.thirdPartAuthFlag != nil {
            map["ThirdPartAuthFlag"] = self.thirdPartAuthFlag!
        }
        if self.worksType != nil {
            map["WorksType"] = self.worksType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
        if let value = dict["ThirdPartAuthFlag"] as? Int32 {
            self.thirdPartAuthFlag = value
        }
        if let value = dict["WorksType"] as? String {
            self.worksType = value
        }
    }
}

public class QueryWorksByOrganizationResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public class Directory : Tea.TeaModel {
                public var id: String?

                public var name: String?

                public var pathId: String?

                public var pathName: String?

                public override init() {
                    super.init()
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
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.pathId != nil {
                        map["PathId"] = self.pathId!
                    }
                    if self.pathName != nil {
                        map["PathName"] = self.pathName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Id"] as? String {
                        self.id = value
                    }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["PathId"] as? String {
                        self.pathId = value
                    }
                    if let value = dict["PathName"] as? String {
                        self.pathName = value
                    }
                }
            }
            public var auth3rdFlag: Int32?

            public var description_: String?

            public var directory: QueryWorksByOrganizationResponseBody.Result.Data.Directory?

            public var gmtCreate: String?

            public var gmtModify: String?

            public var modifyName: String?

            public var ownerId: String?

            public var ownerName: String?

            public var publicFlag: Bool?

            public var publicInvalidTime: Int64?

            public var securityLevel: String?

            public var status: Int32?

            public var workName: String?

            public var workType: String?

            public var worksId: String?

            public var workspaceId: String?

            public var workspaceName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.directory?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.auth3rdFlag != nil {
                    map["Auth3rdFlag"] = self.auth3rdFlag!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.directory != nil {
                    map["Directory"] = self.directory?.toMap()
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModify != nil {
                    map["GmtModify"] = self.gmtModify!
                }
                if self.modifyName != nil {
                    map["ModifyName"] = self.modifyName!
                }
                if self.ownerId != nil {
                    map["OwnerId"] = self.ownerId!
                }
                if self.ownerName != nil {
                    map["OwnerName"] = self.ownerName!
                }
                if self.publicFlag != nil {
                    map["PublicFlag"] = self.publicFlag!
                }
                if self.publicInvalidTime != nil {
                    map["PublicInvalidTime"] = self.publicInvalidTime!
                }
                if self.securityLevel != nil {
                    map["SecurityLevel"] = self.securityLevel!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.workName != nil {
                    map["WorkName"] = self.workName!
                }
                if self.workType != nil {
                    map["WorkType"] = self.workType!
                }
                if self.worksId != nil {
                    map["WorksId"] = self.worksId!
                }
                if self.workspaceId != nil {
                    map["WorkspaceId"] = self.workspaceId!
                }
                if self.workspaceName != nil {
                    map["WorkspaceName"] = self.workspaceName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Auth3rdFlag"] as? Int32 {
                    self.auth3rdFlag = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["Directory"] as? [String: Any?] {
                    var model = QueryWorksByOrganizationResponseBody.Result.Data.Directory()
                    model.fromMap(value)
                    self.directory = model
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["GmtModify"] as? String {
                    self.gmtModify = value
                }
                if let value = dict["ModifyName"] as? String {
                    self.modifyName = value
                }
                if let value = dict["OwnerId"] as? String {
                    self.ownerId = value
                }
                if let value = dict["OwnerName"] as? String {
                    self.ownerName = value
                }
                if let value = dict["PublicFlag"] as? Bool {
                    self.publicFlag = value
                }
                if let value = dict["PublicInvalidTime"] as? Int64 {
                    self.publicInvalidTime = value
                }
                if let value = dict["SecurityLevel"] as? String {
                    self.securityLevel = value
                }
                if let value = dict["Status"] as? Int32 {
                    self.status = value
                }
                if let value = dict["WorkName"] as? String {
                    self.workName = value
                }
                if let value = dict["WorkType"] as? String {
                    self.workType = value
                }
                if let value = dict["WorksId"] as? String {
                    self.worksId = value
                }
                if let value = dict["WorkspaceId"] as? String {
                    self.workspaceId = value
                }
                if let value = dict["WorkspaceName"] as? String {
                    self.workspaceName = value
                }
            }
        }
        public var data: [QueryWorksByOrganizationResponseBody.Result.Data]?

        public var pageNum: Int32?

        public var pageSize: Int32?

        public var totalNum: Int32?

        public var totalPages: Int32?

        public override init() {
            super.init()
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
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["Data"] = tmp
            }
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalNum != nil {
                map["TotalNum"] = self.totalNum!
            }
            if self.totalPages != nil {
                map["TotalPages"] = self.totalPages!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? [Any?] {
                var tmp : [QueryWorksByOrganizationResponseBody.Result.Data] = []
                for v in value {
                    if v != nil {
                        var model = QueryWorksByOrganizationResponseBody.Result.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["PageNum"] as? Int32 {
                self.pageNum = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalNum"] as? Int32 {
                self.totalNum = value
            }
            if let value = dict["TotalPages"] as? Int32 {
                self.totalPages = value
            }
        }
    }
    public var requestId: String?

    public var result: QueryWorksByOrganizationResponseBody.Result?

    public var success: Bool?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = QueryWorksByOrganizationResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryWorksByOrganizationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryWorksByOrganizationResponseBody?

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
            var model = QueryWorksByOrganizationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryWorksByWorkspaceRequest : Tea.TeaModel {
    public var pageNum: Int32?

    public var pageSize: Int32?

    public var status: Int32?

    public var thirdPartAuthFlag: Int32?

    public var worksType: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.thirdPartAuthFlag != nil {
            map["ThirdPartAuthFlag"] = self.thirdPartAuthFlag!
        }
        if self.worksType != nil {
            map["WorksType"] = self.worksType!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
        if let value = dict["ThirdPartAuthFlag"] as? Int32 {
            self.thirdPartAuthFlag = value
        }
        if let value = dict["WorksType"] as? String {
            self.worksType = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class QueryWorksByWorkspaceResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public class Directory : Tea.TeaModel {
                public var id: String?

                public var name: String?

                public var pathId: String?

                public var pathName: String?

                public override init() {
                    super.init()
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
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.pathId != nil {
                        map["PathId"] = self.pathId!
                    }
                    if self.pathName != nil {
                        map["PathName"] = self.pathName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Id"] as? String {
                        self.id = value
                    }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["PathId"] as? String {
                        self.pathId = value
                    }
                    if let value = dict["PathName"] as? String {
                        self.pathName = value
                    }
                }
            }
            public var auth3rdFlag: Int32?

            public var description_: String?

            public var directory: QueryWorksByWorkspaceResponseBody.Result.Data.Directory?

            public var gmtCreate: String?

            public var gmtModify: String?

            public var modifyName: String?

            public var ownerId: String?

            public var ownerName: String?

            public var publicFlag: Bool?

            public var publicInvalidTime: Int64?

            public var securityLevel: String?

            public var status: Int32?

            public var workName: String?

            public var workType: String?

            public var worksId: String?

            public var workspaceId: String?

            public var workspaceName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.directory?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.auth3rdFlag != nil {
                    map["Auth3rdFlag"] = self.auth3rdFlag!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.directory != nil {
                    map["Directory"] = self.directory?.toMap()
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModify != nil {
                    map["GmtModify"] = self.gmtModify!
                }
                if self.modifyName != nil {
                    map["ModifyName"] = self.modifyName!
                }
                if self.ownerId != nil {
                    map["OwnerId"] = self.ownerId!
                }
                if self.ownerName != nil {
                    map["OwnerName"] = self.ownerName!
                }
                if self.publicFlag != nil {
                    map["PublicFlag"] = self.publicFlag!
                }
                if self.publicInvalidTime != nil {
                    map["PublicInvalidTime"] = self.publicInvalidTime!
                }
                if self.securityLevel != nil {
                    map["SecurityLevel"] = self.securityLevel!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.workName != nil {
                    map["WorkName"] = self.workName!
                }
                if self.workType != nil {
                    map["WorkType"] = self.workType!
                }
                if self.worksId != nil {
                    map["WorksId"] = self.worksId!
                }
                if self.workspaceId != nil {
                    map["WorkspaceId"] = self.workspaceId!
                }
                if self.workspaceName != nil {
                    map["WorkspaceName"] = self.workspaceName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Auth3rdFlag"] as? Int32 {
                    self.auth3rdFlag = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["Directory"] as? [String: Any?] {
                    var model = QueryWorksByWorkspaceResponseBody.Result.Data.Directory()
                    model.fromMap(value)
                    self.directory = model
                }
                if let value = dict["GmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["GmtModify"] as? String {
                    self.gmtModify = value
                }
                if let value = dict["ModifyName"] as? String {
                    self.modifyName = value
                }
                if let value = dict["OwnerId"] as? String {
                    self.ownerId = value
                }
                if let value = dict["OwnerName"] as? String {
                    self.ownerName = value
                }
                if let value = dict["PublicFlag"] as? Bool {
                    self.publicFlag = value
                }
                if let value = dict["PublicInvalidTime"] as? Int64 {
                    self.publicInvalidTime = value
                }
                if let value = dict["SecurityLevel"] as? String {
                    self.securityLevel = value
                }
                if let value = dict["Status"] as? Int32 {
                    self.status = value
                }
                if let value = dict["WorkName"] as? String {
                    self.workName = value
                }
                if let value = dict["WorkType"] as? String {
                    self.workType = value
                }
                if let value = dict["WorksId"] as? String {
                    self.worksId = value
                }
                if let value = dict["WorkspaceId"] as? String {
                    self.workspaceId = value
                }
                if let value = dict["WorkspaceName"] as? String {
                    self.workspaceName = value
                }
            }
        }
        public var data: [QueryWorksByWorkspaceResponseBody.Result.Data]?

        public var pageNum: Int32?

        public var pageSize: Int32?

        public var totalNum: Int32?

        public var totalPages: Int32?

        public override init() {
            super.init()
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
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["Data"] = tmp
            }
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalNum != nil {
                map["TotalNum"] = self.totalNum!
            }
            if self.totalPages != nil {
                map["TotalPages"] = self.totalPages!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? [Any?] {
                var tmp : [QueryWorksByWorkspaceResponseBody.Result.Data] = []
                for v in value {
                    if v != nil {
                        var model = QueryWorksByWorkspaceResponseBody.Result.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["PageNum"] as? Int32 {
                self.pageNum = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalNum"] as? Int32 {
                self.totalNum = value
            }
            if let value = dict["TotalPages"] as? Int32 {
                self.totalPages = value
            }
        }
    }
    public var requestId: String?

    public var result: QueryWorksByWorkspaceResponseBody.Result?

    public var success: Bool?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = QueryWorksByWorkspaceResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryWorksByWorkspaceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryWorksByWorkspaceResponseBody?

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
            var model = QueryWorksByWorkspaceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryWorkspaceRoleConfigRequest : Tea.TeaModel {
    public var roleId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.roleId != nil {
            map["RoleId"] = self.roleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RoleId"] as? Int64 {
            self.roleId = value
        }
    }
}

public class QueryWorkspaceRoleConfigResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class AuthConfigList : Tea.TeaModel {
            public var actionAuthKeys: [String]?

            public var authKey: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.actionAuthKeys != nil {
                    map["ActionAuthKeys"] = self.actionAuthKeys!
                }
                if self.authKey != nil {
                    map["AuthKey"] = self.authKey!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ActionAuthKeys"] as? [String] {
                    self.actionAuthKeys = value
                }
                if let value = dict["AuthKey"] as? String {
                    self.authKey = value
                }
            }
        }
        public var authConfigList: [QueryWorkspaceRoleConfigResponseBody.Result.AuthConfigList]?

        public var isSystemRole: Bool?

        public var roleId: Int64?

        public var roleName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authConfigList != nil {
                var tmp : [Any] = []
                for k in self.authConfigList! {
                    tmp.append(k.toMap())
                }
                map["AuthConfigList"] = tmp
            }
            if self.isSystemRole != nil {
                map["IsSystemRole"] = self.isSystemRole!
            }
            if self.roleId != nil {
                map["RoleId"] = self.roleId!
            }
            if self.roleName != nil {
                map["RoleName"] = self.roleName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AuthConfigList"] as? [Any?] {
                var tmp : [QueryWorkspaceRoleConfigResponseBody.Result.AuthConfigList] = []
                for v in value {
                    if v != nil {
                        var model = QueryWorkspaceRoleConfigResponseBody.Result.AuthConfigList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.authConfigList = tmp
            }
            if let value = dict["IsSystemRole"] as? Bool {
                self.isSystemRole = value
            }
            if let value = dict["RoleId"] as? Int64 {
                self.roleId = value
            }
            if let value = dict["RoleName"] as? String {
                self.roleName = value
            }
        }
    }
    public var requestId: String?

    public var result: QueryWorkspaceRoleConfigResponseBody.Result?

    public var success: Bool?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = QueryWorkspaceRoleConfigResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryWorkspaceRoleConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryWorkspaceRoleConfigResponseBody?

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
            var model = QueryWorkspaceRoleConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryWorkspaceUserListRequest : Tea.TeaModel {
    public var keyword: String?

    public var pageNum: Int32?

    public var pageSize: Int32?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["PageNum"] as? Int32 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class QueryWorkspaceUserListResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public class Role : Tea.TeaModel {
                public var roleCode: String?

                public var roleId: Int64?

                public var roleName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.roleCode != nil {
                        map["RoleCode"] = self.roleCode!
                    }
                    if self.roleId != nil {
                        map["RoleId"] = self.roleId!
                    }
                    if self.roleName != nil {
                        map["RoleName"] = self.roleName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["RoleCode"] as? String {
                        self.roleCode = value
                    }
                    if let value = dict["RoleId"] as? Int64 {
                        self.roleId = value
                    }
                    if let value = dict["RoleName"] as? String {
                        self.roleName = value
                    }
                }
            }
            public var accountId: String?

            public var accountName: String?

            public var nickName: String?

            public var role: QueryWorkspaceUserListResponseBody.Result.Data.Role?

            public var userId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.role?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accountId != nil {
                    map["AccountId"] = self.accountId!
                }
                if self.accountName != nil {
                    map["AccountName"] = self.accountName!
                }
                if self.nickName != nil {
                    map["NickName"] = self.nickName!
                }
                if self.role != nil {
                    map["Role"] = self.role?.toMap()
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccountId"] as? String {
                    self.accountId = value
                }
                if let value = dict["AccountName"] as? String {
                    self.accountName = value
                }
                if let value = dict["NickName"] as? String {
                    self.nickName = value
                }
                if let value = dict["Role"] as? [String: Any?] {
                    var model = QueryWorkspaceUserListResponseBody.Result.Data.Role()
                    model.fromMap(value)
                    self.role = model
                }
                if let value = dict["UserId"] as? String {
                    self.userId = value
                }
            }
        }
        public var data: [QueryWorkspaceUserListResponseBody.Result.Data]?

        public var pageNum: Int32?

        public var pageSize: Int32?

        public var totalNum: Int32?

        public var totalPages: Int32?

        public override init() {
            super.init()
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
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["Data"] = tmp
            }
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalNum != nil {
                map["TotalNum"] = self.totalNum!
            }
            if self.totalPages != nil {
                map["TotalPages"] = self.totalPages!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? [Any?] {
                var tmp : [QueryWorkspaceUserListResponseBody.Result.Data] = []
                for v in value {
                    if v != nil {
                        var model = QueryWorkspaceUserListResponseBody.Result.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["PageNum"] as? Int32 {
                self.pageNum = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["TotalNum"] as? Int32 {
                self.totalNum = value
            }
            if let value = dict["TotalPages"] as? Int32 {
                self.totalPages = value
            }
        }
    }
    public var requestId: String?

    public var result: QueryWorkspaceUserListResponseBody.Result?

    public var success: Bool?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = QueryWorkspaceUserListResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryWorkspaceUserListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryWorkspaceUserListResponseBody?

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
            var model = QueryWorkspaceUserListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ResultCallbackRequest : Tea.TeaModel {
    public var applicationId: String?

    public var handleReason: String?

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
        if self.applicationId != nil {
            map["ApplicationId"] = self.applicationId!
        }
        if self.handleReason != nil {
            map["HandleReason"] = self.handleReason!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ApplicationId"] as? String {
            self.applicationId = value
        }
        if let value = dict["HandleReason"] as? String {
            self.handleReason = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
    }
}

public class ResultCallbackResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ResultCallbackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResultCallbackResponseBody?

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
            var model = ResultCallbackResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SaveFavoritesRequest : Tea.TeaModel {
    public var userId: String?

    public var worksId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.worksId != nil {
            map["WorksId"] = self.worksId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["WorksId"] as? String {
            self.worksId = value
        }
    }
}

public class SaveFavoritesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SaveFavoritesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SaveFavoritesResponseBody?

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
            var model = SaveFavoritesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetDataLevelPermissionExtraConfigRequest : Tea.TeaModel {
    public var cubeId: String?

    public var missHitPolicy: String?

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
        if self.cubeId != nil {
            map["CubeId"] = self.cubeId!
        }
        if self.missHitPolicy != nil {
            map["MissHitPolicy"] = self.missHitPolicy!
        }
        if self.ruleType != nil {
            map["RuleType"] = self.ruleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CubeId"] as? String {
            self.cubeId = value
        }
        if let value = dict["MissHitPolicy"] as? String {
            self.missHitPolicy = value
        }
        if let value = dict["RuleType"] as? String {
            self.ruleType = value
        }
    }
}

public class SetDataLevelPermissionExtraConfigResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SetDataLevelPermissionExtraConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetDataLevelPermissionExtraConfigResponseBody?

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
            var model = SetDataLevelPermissionExtraConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetDataLevelPermissionRuleConfigRequest : Tea.TeaModel {
    public var ruleModel: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ruleModel != nil {
            map["RuleModel"] = self.ruleModel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RuleModel"] as? String {
            self.ruleModel = value
        }
    }
}

public class SetDataLevelPermissionRuleConfigResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? String {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SetDataLevelPermissionRuleConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetDataLevelPermissionRuleConfigResponseBody?

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
            var model = SetDataLevelPermissionRuleConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetDataLevelPermissionWhiteListRequest : Tea.TeaModel {
    public var whiteListModel: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.whiteListModel != nil {
            map["WhiteListModel"] = self.whiteListModel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["WhiteListModel"] as? String {
            self.whiteListModel = value
        }
    }
}

public class SetDataLevelPermissionWhiteListResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SetDataLevelPermissionWhiteListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetDataLevelPermissionWhiteListResponseBody?

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
            var model = SetDataLevelPermissionWhiteListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SmartqAuthTransferRequest : Tea.TeaModel {
    public var originUserId: String?

    public var targetUserIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.originUserId != nil {
            map["OriginUserId"] = self.originUserId!
        }
        if self.targetUserIds != nil {
            map["TargetUserIds"] = self.targetUserIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OriginUserId"] as? String {
            self.originUserId = value
        }
        if let value = dict["TargetUserIds"] as? String {
            self.targetUserIds = value
        }
    }
}

public class SmartqAuthTransferResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SmartqAuthTransferResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SmartqAuthTransferResponseBody?

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
            var model = SmartqAuthTransferResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SmartqAuthorizeRequest : Tea.TeaModel {
    public var cubeIds: String?

    public var expireDay: String?

    public var llmCubeThemes: String?

    public var llmCubes: String?

    public var operationType: Int32?

    public var userIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cubeIds != nil {
            map["CubeIds"] = self.cubeIds!
        }
        if self.expireDay != nil {
            map["ExpireDay"] = self.expireDay!
        }
        if self.llmCubeThemes != nil {
            map["LlmCubeThemes"] = self.llmCubeThemes!
        }
        if self.llmCubes != nil {
            map["LlmCubes"] = self.llmCubes!
        }
        if self.operationType != nil {
            map["OperationType"] = self.operationType!
        }
        if self.userIds != nil {
            map["UserIds"] = self.userIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CubeIds"] as? String {
            self.cubeIds = value
        }
        if let value = dict["ExpireDay"] as? String {
            self.expireDay = value
        }
        if let value = dict["LlmCubeThemes"] as? String {
            self.llmCubeThemes = value
        }
        if let value = dict["LlmCubes"] as? String {
            self.llmCubes = value
        }
        if let value = dict["OperationType"] as? Int32 {
            self.operationType = value
        }
        if let value = dict["UserIds"] as? String {
            self.userIds = value
        }
    }
}

public class SmartqAuthorizeResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var detailMessage: String?

        public var llmCube: String?

        public var llmCubeTheme: String?

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
            if self.detailMessage != nil {
                map["DetailMessage"] = self.detailMessage!
            }
            if self.llmCube != nil {
                map["LlmCube"] = self.llmCube!
            }
            if self.llmCubeTheme != nil {
                map["LlmCubeTheme"] = self.llmCubeTheme!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DetailMessage"] as? String {
                self.detailMessage = value
            }
            if let value = dict["LlmCube"] as? String {
                self.llmCube = value
            }
            if let value = dict["LlmCubeTheme"] as? String {
                self.llmCubeTheme = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
        }
    }
    public var requestId: String?

    public var result: [SmartqAuthorizeResponseBody.Result]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            var tmp : [Any] = []
            for k in self.result! {
                tmp.append(k.toMap())
            }
            map["Result"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [Any?] {
            var tmp : [SmartqAuthorizeResponseBody.Result] = []
            for v in value {
                if v != nil {
                    var model = SmartqAuthorizeResponseBody.Result()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.result = tmp
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SmartqAuthorizeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SmartqAuthorizeResponseBody?

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
            var model = SmartqAuthorizeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SmartqQueryAbilityRequest : Tea.TeaModel {
    public var cubeId: String?

    public var multipleCubeIds: String?

    public var userId: String?

    public var userQuestion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cubeId != nil {
            map["CubeId"] = self.cubeId!
        }
        if self.multipleCubeIds != nil {
            map["MultipleCubeIds"] = self.multipleCubeIds!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.userQuestion != nil {
            map["UserQuestion"] = self.userQuestion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CubeId"] as? String {
            self.cubeId = value
        }
        if let value = dict["MultipleCubeIds"] as? String {
            self.multipleCubeIds = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["UserQuestion"] as? String {
            self.userQuestion = value
        }
    }
}

public class SmartqQueryAbilityResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class MetaType : Tea.TeaModel {
            public var key: String?

            public var type: String?

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
                if let value = dict["Key"] as? String {
                    self.key = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
            }
        }
        public class Values : Tea.TeaModel {
            public var row: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.row != nil {
                    map["Row"] = self.row!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Row"] as? [String] {
                    self.row = value
                }
            }
        }
        public var chartType: String?

        public var conclusionText: String?

        public var dataList: [String]?

        public var logicSql: String?

        public var metaType: [SmartqQueryAbilityResponseBody.Result.MetaType]?

        public var values: [SmartqQueryAbilityResponseBody.Result.Values]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chartType != nil {
                map["ChartType"] = self.chartType!
            }
            if self.conclusionText != nil {
                map["ConclusionText"] = self.conclusionText!
            }
            if self.dataList != nil {
                map["DataList"] = self.dataList!
            }
            if self.logicSql != nil {
                map["LogicSql"] = self.logicSql!
            }
            if self.metaType != nil {
                var tmp : [Any] = []
                for k in self.metaType! {
                    tmp.append(k.toMap())
                }
                map["MetaType"] = tmp
            }
            if self.values != nil {
                var tmp : [Any] = []
                for k in self.values! {
                    tmp.append(k.toMap())
                }
                map["Values"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ChartType"] as? String {
                self.chartType = value
            }
            if let value = dict["ConclusionText"] as? String {
                self.conclusionText = value
            }
            if let value = dict["DataList"] as? [String] {
                self.dataList = value
            }
            if let value = dict["LogicSql"] as? String {
                self.logicSql = value
            }
            if let value = dict["MetaType"] as? [Any?] {
                var tmp : [SmartqQueryAbilityResponseBody.Result.MetaType] = []
                for v in value {
                    if v != nil {
                        var model = SmartqQueryAbilityResponseBody.Result.MetaType()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.metaType = tmp
            }
            if let value = dict["Values"] as? [Any?] {
                var tmp : [SmartqQueryAbilityResponseBody.Result.Values] = []
                for v in value {
                    if v != nil {
                        var model = SmartqQueryAbilityResponseBody.Result.Values()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.values = tmp
            }
        }
    }
    public var requestId: String?

    public var result: SmartqQueryAbilityResponseBody.Result?

    public var success: Bool?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = SmartqQueryAbilityResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SmartqQueryAbilityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SmartqQueryAbilityResponseBody?

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
            var model = SmartqQueryAbilityResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateCubeBySqlRequest : Tea.TeaModel {
    public var cubeId: String?

    public var customSql: String?

    public var dsId: String?

    public var userId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cubeId != nil {
            map["CubeId"] = self.cubeId!
        }
        if self.customSql != nil {
            map["CustomSql"] = self.customSql!
        }
        if self.dsId != nil {
            map["DsId"] = self.dsId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CubeId"] as? String {
            self.cubeId = value
        }
        if let value = dict["CustomSql"] as? String {
            self.customSql = value
        }
        if let value = dict["DsId"] as? String {
            self.dsId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class UpdateCubeBySqlResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateCubeBySqlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateCubeBySqlResponseBody?

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
            var model = UpdateCubeBySqlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDataLevelPermissionStatusRequest : Tea.TeaModel {
    public var cubeId: String?

    public var isOpen: Int32?

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
        if self.cubeId != nil {
            map["CubeId"] = self.cubeId!
        }
        if self.isOpen != nil {
            map["IsOpen"] = self.isOpen!
        }
        if self.ruleType != nil {
            map["RuleType"] = self.ruleType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CubeId"] as? String {
            self.cubeId = value
        }
        if let value = dict["IsOpen"] as? Int32 {
            self.isOpen = value
        }
        if let value = dict["RuleType"] as? String {
            self.ruleType = value
        }
    }
}

public class UpdateDataLevelPermissionStatusResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateDataLevelPermissionStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDataLevelPermissionStatusResponseBody?

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
            var model = UpdateDataLevelPermissionStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDataSourceRequest : Tea.TeaModel {
    public var updateModel: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.updateModel != nil {
            map["UpdateModel"] = self.updateModel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UpdateModel"] as? String {
            self.updateModel = value
        }
    }
}

public class UpdateDataSourceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateDataSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDataSourceResponseBody?

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
            var model = UpdateDataSourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateEmbeddedStatusRequest : Tea.TeaModel {
    public var thirdPartAuthFlag: Bool?

    public var worksId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.thirdPartAuthFlag != nil {
            map["ThirdPartAuthFlag"] = self.thirdPartAuthFlag!
        }
        if self.worksId != nil {
            map["WorksId"] = self.worksId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ThirdPartAuthFlag"] as? Bool {
            self.thirdPartAuthFlag = value
        }
        if let value = dict["WorksId"] as? String {
            self.worksId = value
        }
    }
}

public class UpdateEmbeddedStatusResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Int32?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Int32 {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateEmbeddedStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateEmbeddedStatusResponseBody?

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
            var model = UpdateEmbeddedStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateTicketNumRequest : Tea.TeaModel {
    public var ticket: String?

    public var ticketNum: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ticket != nil {
            map["Ticket"] = self.ticket!
        }
        if self.ticketNum != nil {
            map["TicketNum"] = self.ticketNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Ticket"] as? String {
            self.ticket = value
        }
        if let value = dict["TicketNum"] as? Int32 {
            self.ticketNum = value
        }
    }
}

public class UpdateTicketNumResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateTicketNumResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTicketNumResponseBody?

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
            var model = UpdateTicketNumResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateUserRequest : Tea.TeaModel {
    public var adminUser: Bool?

    public var authAdminUser: Bool?

    public var isDeleted: Bool?

    public var nickName: String?

    public var roleIds: String?

    public var userId: String?

    public var userType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.adminUser != nil {
            map["AdminUser"] = self.adminUser!
        }
        if self.authAdminUser != nil {
            map["AuthAdminUser"] = self.authAdminUser!
        }
        if self.isDeleted != nil {
            map["IsDeleted"] = self.isDeleted!
        }
        if self.nickName != nil {
            map["NickName"] = self.nickName!
        }
        if self.roleIds != nil {
            map["RoleIds"] = self.roleIds!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.userType != nil {
            map["UserType"] = self.userType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AdminUser"] as? Bool {
            self.adminUser = value
        }
        if let value = dict["AuthAdminUser"] as? Bool {
            self.authAdminUser = value
        }
        if let value = dict["IsDeleted"] as? Bool {
            self.isDeleted = value
        }
        if let value = dict["NickName"] as? String {
            self.nickName = value
        }
        if let value = dict["RoleIds"] as? String {
            self.roleIds = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["UserType"] as? Int32 {
            self.userType = value
        }
    }
}

public class UpdateUserResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateUserResponseBody?

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
            var model = UpdateUserResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateUserGroupRequest : Tea.TeaModel {
    public var userGroupDescription: String?

    public var userGroupId: String?

    public var userGroupName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userGroupDescription != nil {
            map["UserGroupDescription"] = self.userGroupDescription!
        }
        if self.userGroupId != nil {
            map["UserGroupId"] = self.userGroupId!
        }
        if self.userGroupName != nil {
            map["UserGroupName"] = self.userGroupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserGroupDescription"] as? String {
            self.userGroupDescription = value
        }
        if let value = dict["UserGroupId"] as? String {
            self.userGroupId = value
        }
        if let value = dict["UserGroupName"] as? String {
            self.userGroupName = value
        }
    }
}

public class UpdateUserGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateUserGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateUserGroupResponseBody?

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
            var model = UpdateUserGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateUserTagMetaRequest : Tea.TeaModel {
    public var tagDescription: String?

    public var tagId: String?

    public var tagName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.tagDescription != nil {
            map["TagDescription"] = self.tagDescription!
        }
        if self.tagId != nil {
            map["TagId"] = self.tagId!
        }
        if self.tagName != nil {
            map["TagName"] = self.tagName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["TagDescription"] as? String {
            self.tagDescription = value
        }
        if let value = dict["TagId"] as? String {
            self.tagId = value
        }
        if let value = dict["TagName"] as? String {
            self.tagName = value
        }
    }
}

public class UpdateUserTagMetaResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateUserTagMetaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateUserTagMetaResponseBody?

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
            var model = UpdateUserTagMetaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateUserTagValueRequest : Tea.TeaModel {
    public var tagId: String?

    public var tagValue: String?

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
        if self.tagId != nil {
            map["TagId"] = self.tagId!
        }
        if self.tagValue != nil {
            map["TagValue"] = self.tagValue!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["TagId"] as? String {
            self.tagId = value
        }
        if let value = dict["TagValue"] as? String {
            self.tagValue = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class UpdateUserTagValueResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateUserTagValueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateUserTagValueResponseBody?

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
            var model = UpdateUserTagValueResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateWorkspaceUserRoleRequest : Tea.TeaModel {
    public var roleId: Int64?

    public var roleIds: String?

    public var userId: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.roleId != nil {
            map["RoleId"] = self.roleId!
        }
        if self.roleIds != nil {
            map["RoleIds"] = self.roleIds!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RoleId"] as? Int64 {
            self.roleId = value
        }
        if let value = dict["RoleIds"] as? String {
            self.roleIds = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class UpdateWorkspaceUserRoleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateWorkspaceUserRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateWorkspaceUserRoleResponseBody?

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
            var model = UpdateWorkspaceUserRoleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateWorkspaceUsersRoleRequest : Tea.TeaModel {
    public var roleId: Int64?

    public var userIds: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.roleId != nil {
            map["RoleId"] = self.roleId!
        }
        if self.userIds != nil {
            map["UserIds"] = self.userIds!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RoleId"] as? Int64 {
            self.roleId = value
        }
        if let value = dict["UserIds"] as? String {
            self.userIds = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class UpdateWorkspaceUsersRoleResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var failure: Int32?

        public var failureDetail: [String: Any]?

        public var success: Int32?

        public var total: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.failure != nil {
                map["Failure"] = self.failure!
            }
            if self.failureDetail != nil {
                map["FailureDetail"] = self.failureDetail!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Failure"] as? Int32 {
                self.failure = value
            }
            if let value = dict["FailureDetail"] as? [String: Any] {
                self.failureDetail = value
            }
            if let value = dict["Success"] as? Int32 {
                self.success = value
            }
            if let value = dict["Total"] as? Int32 {
                self.total = value
            }
        }
    }
    public var requestId: String?

    public var result: UpdateWorkspaceUsersRoleResponseBody.Result?

    public var success: Bool?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = UpdateWorkspaceUsersRoleResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateWorkspaceUsersRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateWorkspaceUsersRoleResponseBody?

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
            var model = UpdateWorkspaceUsersRoleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class WithdrawAllUserGroupsRequest : Tea.TeaModel {
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
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class WithdrawAllUserGroupsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class WithdrawAllUserGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: WithdrawAllUserGroupsResponseBody?

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
            var model = WithdrawAllUserGroupsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
