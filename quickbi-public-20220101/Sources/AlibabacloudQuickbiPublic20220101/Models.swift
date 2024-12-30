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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AddUserModel") {
            self.addUserModel = dict["AddUserModel"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AddDataLevelPermissionRuleUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CubeId") {
            self.cubeId = dict["CubeId"] as! String
        }
        if dict.keys.contains("OperateType") {
            self.operateType = dict["OperateType"] as! String
        }
        if dict.keys.contains("RuleType") {
            self.ruleType = dict["RuleType"] as! String
        }
        if dict.keys.contains("TargetIds") {
            self.targetIds = dict["TargetIds"] as! String
        }
        if dict.keys.contains("TargetType") {
            self.targetType = dict["TargetType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AddDataLevelPermissionWhiteListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthPoint") {
            self.authPoint = dict["AuthPoint"] as! Int32
        }
        if dict.keys.contains("ExpireDate") {
            self.expireDate = dict["ExpireDate"] as! Int64
        }
        if dict.keys.contains("ShareToId") {
            self.shareToId = dict["ShareToId"] as! String
        }
        if dict.keys.contains("ShareToType") {
            self.shareToType = dict["ShareToType"] as! Int32
        }
        if dict.keys.contains("WorksId") {
            self.worksId = dict["WorksId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AddShareReportResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountId") {
            self.accountId = dict["AccountId"] as! String
        }
        if dict.keys.contains("AccountName") {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("AdminUser") {
            self.adminUser = dict["AdminUser"] as! Bool
        }
        if dict.keys.contains("AuthAdminUser") {
            self.authAdminUser = dict["AuthAdminUser"] as! Bool
        }
        if dict.keys.contains("NickName") {
            self.nickName = dict["NickName"] as! String
        }
        if dict.keys.contains("RoleIds") {
            self.roleIds = dict["RoleIds"] as! String
        }
        if dict.keys.contains("UserType") {
            self.userType = dict["UserType"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountName") {
                self.accountName = dict["AccountName"] as! String
            }
            if dict.keys.contains("AdminUser") {
                self.adminUser = dict["AdminUser"] as! Bool
            }
            if dict.keys.contains("AuthAdminUser") {
                self.authAdminUser = dict["AuthAdminUser"] as! Bool
            }
            if dict.keys.contains("NickName") {
                self.nickName = dict["NickName"] as! String
            }
            if dict.keys.contains("RoleIdList") {
                self.roleIdList = dict["RoleIdList"] as! [Int64]
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
            if dict.keys.contains("UserType") {
                self.userType = dict["UserType"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = AddUserResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AddUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserGroupId") {
            self.userGroupId = dict["UserGroupId"] as! String
        }
        if dict.keys.contains("UserIdList") {
            self.userIdList = dict["UserIdList"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AddUserGroupMemberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserGroupIds") {
            self.userGroupIds = dict["UserGroupIds"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AddUserGroupMembersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TagDescription") {
            self.tagDescription = dict["TagDescription"] as! String
        }
        if dict.keys.contains("TagName") {
            self.tagName = dict["TagName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AddUserTagMetaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RoleId") {
            self.roleId = dict["RoleId"] as! Int64
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AddUserToWorkspaceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RoleId") {
            self.roleId = dict["RoleId"] as! Int64
        }
        if dict.keys.contains("UserIds") {
            self.userIds = dict["UserIds"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Failure") {
                self.failure = dict["Failure"] as! Int32
            }
            if dict.keys.contains("FailureDetail") {
                self.failureDetail = dict["FailureDetail"] as! [String: Any]
            }
            if dict.keys.contains("Success") {
                self.success = dict["Success"] as! Int32
            }
            if dict.keys.contains("Total") {
                self.total = dict["Total"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = AddWorkspaceUsersResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AddWorkspaceUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CubeId") {
            self.cubeId = dict["CubeId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AllotDatasetAccelerationTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthPointsValue") {
            self.authPointsValue = dict["AuthPointsValue"] as! Int32
        }
        if dict.keys.contains("DataPortalId") {
            self.dataPortalId = dict["DataPortalId"] as! String
        }
        if dict.keys.contains("MenuIds") {
            self.menuIds = dict["MenuIds"] as! String
        }
        if dict.keys.contains("UserGroupIds") {
            self.userGroupIds = dict["UserGroupIds"] as! String
        }
        if dict.keys.contains("UserIds") {
            self.userIds = dict["UserIds"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Int32
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AuthorizeMenuResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FeishuUsers") {
            self.feishuUsers = dict["FeishuUsers"] as! String
        }
        if dict.keys.contains("IsAdmin") {
            self.isAdmin = dict["IsAdmin"] as! Bool
        }
        if dict.keys.contains("IsAuthAdmin") {
            self.isAuthAdmin = dict["IsAuthAdmin"] as! Bool
        }
        if dict.keys.contains("UserGroupIds") {
            self.userGroupIds = dict["UserGroupIds"] as! String
        }
        if dict.keys.contains("UserType") {
            self.userType = dict["UserType"] as! Int32
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Code") {
                        self.code = dict["Code"] as! String
                    }
                    if dict.keys.contains("CodeDesc") {
                        self.codeDesc = dict["CodeDesc"] as! String
                    }
                    if dict.keys.contains("Input") {
                        self.input = dict["Input"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FailInfos") {
                    var tmp : [BatchAddFeishuUsersResponseBody.Result.FailResults.FailInfos] = []
                    for v in dict["FailInfos"] as! [Any] {
                        var model = BatchAddFeishuUsersResponseBody.Result.FailResults.FailInfos()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FailCount") {
                self.failCount = dict["FailCount"] as! Int32
            }
            if dict.keys.contains("FailResults") {
                var tmp : [BatchAddFeishuUsersResponseBody.Result.FailResults] = []
                for v in dict["FailResults"] as! [Any] {
                    var model = BatchAddFeishuUsersResponseBody.Result.FailResults()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.failResults = tmp
            }
            if dict.keys.contains("OkCount") {
                self.okCount = dict["OkCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = BatchAddFeishuUsersResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = BatchAddFeishuUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataPortalId") {
            self.dataPortalId = dict["DataPortalId"] as! String
        }
        if dict.keys.contains("MenuIds") {
            self.menuIds = dict["MenuIds"] as! String
        }
        if dict.keys.contains("UserGroupIds") {
            self.userGroupIds = dict["UserGroupIds"] as! String
        }
        if dict.keys.contains("UserIds") {
            self.userIds = dict["UserIds"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Int32
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CancelAuthorizationMenuResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("WorksId") {
            self.worksId = dict["WorksId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CancelCollectionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ReportId") {
            self.reportId = dict["ReportId"] as! String
        }
        if dict.keys.contains("ShareToIds") {
            self.shareToIds = dict["ShareToIds"] as! String
        }
        if dict.keys.contains("ShareToType") {
            self.shareToType = dict["ShareToType"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CancelReportShareResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataPortalId") {
            self.dataPortalId = dict["DataPortalId"] as! String
        }
        if dict.keys.contains("MenuIds") {
            self.menuIds = dict["MenuIds"] as! String
        }
        if dict.keys.contains("ShowOnlyWithAccess") {
            self.showOnlyWithAccess = dict["ShowOnlyWithAccess"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Int32
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ChangeVisibilityModelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("WorksId") {
            self.worksId = dict["WorksId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CheckReadableResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountName") {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("AccountType") {
            self.accountType = dict["AccountType"] as! Int32
        }
        if dict.keys.contains("CmptId") {
            self.cmptId = dict["CmptId"] as! String
        }
        if dict.keys.contains("ExpireTime") {
            self.expireTime = dict["ExpireTime"] as! Int32
        }
        if dict.keys.contains("GlobalParam") {
            self.globalParam = dict["GlobalParam"] as! String
        }
        if dict.keys.contains("TicketNum") {
            self.ticketNum = dict["TicketNum"] as! Int32
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("WatermarkParam") {
            self.watermarkParam = dict["WatermarkParam"] as! String
        }
        if dict.keys.contains("WorksId") {
            self.worksId = dict["WorksId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateTicketResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountName") {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("AccountType") {
            self.accountType = dict["AccountType"] as! Int32
        }
        if dict.keys.contains("CopilotId") {
            self.copilotId = dict["CopilotId"] as! String
        }
        if dict.keys.contains("ExpireTime") {
            self.expireTime = dict["ExpireTime"] as! Int32
        }
        if dict.keys.contains("TicketNum") {
            self.ticketNum = dict["TicketNum"] as! Int32
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateTicket4CopilotResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ParentUserGroupId") {
            self.parentUserGroupId = dict["ParentUserGroupId"] as! String
        }
        if dict.keys.contains("UserGroupDescription") {
            self.userGroupDescription = dict["UserGroupDescription"] as! String
        }
        if dict.keys.contains("UserGroupId") {
            self.userGroupId = dict["UserGroupId"] as! String
        }
        if dict.keys.contains("UserGroupName") {
            self.userGroupName = dict["UserGroupName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateUserGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataSetIds") {
            self.dataSetIds = dict["DataSetIds"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("WorksType") {
            self.worksType = dict["WorksType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("WorksId") {
                self.worksId = dict["WorksId"] as! String
            }
            if dict.keys.contains("WorksType") {
                self.worksType = dict["WorksType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var tmp : [DataSetBloodResponseBody.Result] = []
            for v in dict["Result"] as! [Any] {
                var model = DataSetBloodResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DataSetBloodResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataSourceId") {
            self.dataSourceId = dict["DataSourceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! [String]
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DataSourceBloodResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExpireTime") {
            self.expireTime = dict["ExpireTime"] as! Int32
        }
        if dict.keys.contains("Ticket") {
            self.ticket = dict["Ticket"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DelayTicketExpireTimeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeleteUserModel") {
            self.deleteUserModel = dict["DeleteUserModel"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteDataLevelPermissionRuleUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CubeId") {
            self.cubeId = dict["CubeId"] as! String
        }
        if dict.keys.contains("RuleId") {
            self.ruleId = dict["RuleId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteDataLevelRuleConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ticket") {
            self.ticket = dict["Ticket"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteTicketResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TransferUserId") {
            self.transferUserId = dict["TransferUserId"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteUserFromWorkspaceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserGroupId") {
            self.userGroupId = dict["UserGroupId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteUserGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserGroupId") {
            self.userGroupId = dict["UserGroupId"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteUserGroupMemberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserGroupIds") {
            self.userGroupIds = dict["UserGroupIds"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteUserGroupMembersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TagId") {
            self.tagId = dict["TagId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteUserTagMetaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DsId") {
            self.dsId = dict["DsId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Address") {
                self.address = dict["Address"] as! String
            }
            if dict.keys.contains("AuthLevel") {
                self.authLevel = dict["AuthLevel"] as! String
            }
            if dict.keys.contains("CreatorId") {
                self.creatorId = dict["CreatorId"] as! String
            }
            if dict.keys.contains("DsId") {
                self.dsId = dict["DsId"] as! String
            }
            if dict.keys.contains("DsType") {
                self.dsType = dict["DsType"] as! String
            }
            if dict.keys.contains("DsVersion") {
                self.dsVersion = dict["DsVersion"] as! String
            }
            if dict.keys.contains("Instance") {
                self.instance = dict["Instance"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("ModifyUser") {
                self.modifyUser = dict["ModifyUser"] as! String
            }
            if dict.keys.contains("NoSasl") {
                self.noSasl = dict["NoSasl"] as! Bool
            }
            if dict.keys.contains("ParentDsType") {
                self.parentDsType = dict["ParentDsType"] as! String
            }
            if dict.keys.contains("Port") {
                self.port = dict["Port"] as! String
            }
            if dict.keys.contains("Project") {
                self.project = dict["Project"] as! String
            }
            if dict.keys.contains("Schema") {
                self.schema = dict["Schema"] as! String
            }
            if dict.keys.contains("ShowName") {
                self.showName = dict["ShowName"] as! String
            }
            if dict.keys.contains("WorkspaceId") {
                self.workspaceId = dict["WorkspaceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = GetDataSourceConnectionInfoResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetDataSourceConnectionInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MailId") {
            self.mailId = dict["MailId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("execTime") {
                self.execTime = dict["execTime"] as! String
            }
            if dict.keys.contains("mailId") {
                self.mailId = dict["mailId"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("taskId") {
                self.taskId = dict["taskId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var tmp : [GetMailTaskStatusResponseBody.Result] = []
            for v in dict["Result"] as! [Any] {
                var model = GetMailTaskStatusResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetMailTaskStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Keyword") {
            self.keyword = dict["Keyword"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreateUser") {
                self.createUser = dict["CreateUser"] as! String
            }
            if dict.keys.contains("IdentifiedPath") {
                self.identifiedPath = dict["IdentifiedPath"] as! String
            }
            if dict.keys.contains("ModifiedTime") {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("ModifyUser") {
                self.modifyUser = dict["ModifyUser"] as! String
            }
            if dict.keys.contains("ParentUsergroupId") {
                self.parentUsergroupId = dict["ParentUsergroupId"] as! String
            }
            if dict.keys.contains("UsergroupDesc") {
                self.usergroupDesc = dict["UsergroupDesc"] as! String
            }
            if dict.keys.contains("UsergroupId") {
                self.usergroupId = dict["UsergroupId"] as! String
            }
            if dict.keys.contains("UsergroupName") {
                self.usergroupName = dict["UsergroupName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var tmp : [GetUserGroupInfoResponseBody.Result] = []
            for v in dict["Result"] as! [Any] {
                var model = GetUserGroupInfoResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetUserGroupInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Keyword") {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("WorksType") {
            self.worksType = dict["WorksType"] as! String
        }
        if dict.keys.contains("WsId") {
            self.wsId = dict["WsId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EmbedTime") {
                    self.embedTime = dict["EmbedTime"] as! String
                }
                if dict.keys.contains("WorksId") {
                    self.worksId = dict["WorksId"] as! String
                }
                if dict.keys.contains("WorksName") {
                    self.worksName = dict["WorksName"] as! String
                }
                if dict.keys.contains("WorksType") {
                    self.worksType = dict["WorksType"] as! String
                }
                if dict.keys.contains("WorkspaceId") {
                    self.workspaceId = dict["WorkspaceId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Data") {
                var tmp : [GetWorksEmbedListResponseBody.Result.Data] = []
                for v in dict["Data"] as! [Any] {
                    var model = GetWorksEmbedListResponseBody.Result.Data()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.data = tmp
            }
            if dict.keys.contains("PageNo") {
                self.pageNo = dict["PageNo"] as! Int64
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int64
            }
            if dict.keys.contains("TotalNum") {
                self.totalNum = dict["TotalNum"] as! Int64
            }
            if dict.keys.contains("TotalPages") {
                self.totalPages = dict["TotalPages"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = GetWorksEmbedListResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetWorksEmbedListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("KeyWord") {
            self.keyWord = dict["KeyWord"] as! String
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiId") {
                    self.apiId = dict["ApiId"] as! String
                }
                if dict.keys.contains("Body") {
                    self.body = dict["Body"] as! String
                }
                if dict.keys.contains("DataSize") {
                    self.dataSize = dict["DataSize"] as! Double
                }
                if dict.keys.contains("DateUpdateTime") {
                    self.dateUpdateTime = dict["DateUpdateTime"] as! String
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtModified") {
                    self.gmtModified = dict["GmtModified"] as! String
                }
                if dict.keys.contains("JobId") {
                    self.jobId = dict["JobId"] as! String
                }
                if dict.keys.contains("Parameters") {
                    self.parameters = dict["Parameters"] as! String
                }
                if dict.keys.contains("ShowName") {
                    self.showName = dict["ShowName"] as! String
                }
                if dict.keys.contains("StatusType") {
                    self.statusType = dict["StatusType"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Data") {
                var tmp : [ListApiDatasourceResponseBody.Result.Data] = []
                for v in dict["Data"] as! [Any] {
                    var model = ListApiDatasourceResponseBody.Result.Data()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.data = tmp
            }
            if dict.keys.contains("PageNum") {
                self.pageNum = dict["PageNum"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalNum") {
                self.totalNum = dict["TotalNum"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = ListApiDatasourceResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListApiDatasourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserGroupIds") {
            self.userGroupIds = dict["UserGroupIds"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("CreateUser") {
                    self.createUser = dict["CreateUser"] as! String
                }
                if dict.keys.contains("IdentifiedPath") {
                    self.identifiedPath = dict["IdentifiedPath"] as! String
                }
                if dict.keys.contains("ModifiedTime") {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("ModifyUser") {
                    self.modifyUser = dict["ModifyUser"] as! String
                }
                if dict.keys.contains("ParentUsergroupId") {
                    self.parentUsergroupId = dict["ParentUsergroupId"] as! String
                }
                if dict.keys.contains("UsergroupDesc") {
                    self.usergroupDesc = dict["UsergroupDesc"] as! String
                }
                if dict.keys.contains("UsergroupId") {
                    self.usergroupId = dict["UsergroupId"] as! String
                }
                if dict.keys.contains("UsergroupName") {
                    self.usergroupName = dict["UsergroupName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FailedUserGroupIds") {
                self.failedUserGroupIds = dict["FailedUserGroupIds"] as! [String]
            }
            if dict.keys.contains("UserGroupModels") {
                var tmp : [ListByUserGroupIdResponseBody.Result.UserGroupModels] = []
                for v in dict["UserGroupModels"] as! [Any] {
                    var model = ListByUserGroupIdResponseBody.Result.UserGroupModels()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = ListByUserGroupIdResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListByUserGroupIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FavoriteId") {
                self.favoriteId = dict["FavoriteId"] as! Int32
            }
            if dict.keys.contains("OwnerId") {
                self.ownerId = dict["OwnerId"] as! String
            }
            if dict.keys.contains("WorksId") {
                self.worksId = dict["WorksId"] as! String
            }
            if dict.keys.contains("WorksName") {
                self.worksName = dict["WorksName"] as! String
            }
            if dict.keys.contains("WorksType") {
                self.worksType = dict["WorksType"] as! String
            }
            if dict.keys.contains("WorkspaceId") {
                self.workspaceId = dict["WorkspaceId"] as! String
            }
            if dict.keys.contains("WorkspaceName") {
                self.workspaceName = dict["WorkspaceName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var tmp : [ListCollectionsResponseBody.Result] = []
            for v in dict["Result"] as! [Any] {
                var model = ListCollectionsResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListCollectionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CubeId") {
            self.cubeId = dict["CubeId"] as! String
        }
        if dict.keys.contains("RuleType") {
            self.ruleType = dict["RuleType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListCubeDataLevelPermissionConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CubeId") {
            self.cubeId = dict["CubeId"] as! String
        }
        if dict.keys.contains("RuleType") {
            self.ruleType = dict["RuleType"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("UserGroups") {
                    self.userGroups = dict["UserGroups"] as! [String]
                }
                if dict.keys.contains("Users") {
                    self.users = dict["Users"] as! [String]
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CubeId") {
                self.cubeId = dict["CubeId"] as! String
            }
            if dict.keys.contains("RuleType") {
                self.ruleType = dict["RuleType"] as! String
            }
            if dict.keys.contains("UsersModel") {
                var model = ListDataLevelPermissionWhiteListResponseBody.Result.UsersModel()
                model.fromMap(dict["UsersModel"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = ListDataLevelPermissionWhiteListResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListDataLevelPermissionWhiteListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DsType") {
            self.dsType = dict["DsType"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreatorId") {
                self.creatorId = dict["CreatorId"] as! String
            }
            if dict.keys.contains("CreatorName") {
                self.creatorName = dict["CreatorName"] as! String
            }
            if dict.keys.contains("DatasourceId") {
                self.datasourceId = dict["DatasourceId"] as! String
            }
            if dict.keys.contains("DsType") {
                self.dsType = dict["DsType"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("ParentDsType") {
                self.parentDsType = dict["ParentDsType"] as! String
            }
            if dict.keys.contains("ShowName") {
                self.showName = dict["ShowName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var tmp : [ListDataSourceResponseBody.Result] = []
            for v in dict["Result"] as! [Any] {
                var model = ListDataSourceResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListDataSourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Keyword") {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("TreeType") {
            self.treeType = dict["TreeType"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Favorite") {
                    self.favorite = dict["Favorite"] as! Bool
                }
                if dict.keys.contains("FavoriteDate") {
                    self.favoriteDate = dict["FavoriteDate"] as! String
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtModified") {
                    self.gmtModified = dict["GmtModified"] as! String
                }
                if dict.keys.contains("HasEditAuth") {
                    self.hasEditAuth = dict["HasEditAuth"] as! Bool
                }
                if dict.keys.contains("HasViewAuth") {
                    self.hasViewAuth = dict["HasViewAuth"] as! Bool
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("OwnerName") {
                    self.ownerName = dict["OwnerName"] as! String
                }
                if dict.keys.contains("OwnerNum") {
                    self.ownerNum = dict["OwnerNum"] as! String
                }
                if dict.keys.contains("PublishStatus") {
                    self.publishStatus = dict["PublishStatus"] as! Int32
                }
                if dict.keys.contains("TreeId") {
                    self.treeId = dict["TreeId"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("WorkspaceId") {
                    self.workspaceId = dict["WorkspaceId"] as! String
                }
                if dict.keys.contains("WorkspaceName") {
                    self.workspaceName = dict["WorkspaceName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Data") {
                var tmp : [ListFavoriteReportsResponseBody.Result.Data] = []
                for v in dict["Data"] as! [Any] {
                    var model = ListFavoriteReportsResponseBody.Result.Data()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.data = tmp
            }
            if dict.keys.contains("PageNum") {
                self.pageNum = dict["PageNum"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalNum") {
                self.totalNum = dict["TotalNum"] as! Int32
            }
            if dict.keys.contains("TotalPages") {
                self.totalPages = dict["TotalPages"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = ListFavoriteReportsResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListFavoriteReportsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Keyword") {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RoleId") {
            self.roleId = dict["RoleId"] as! Int64
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("NickName") {
                    self.nickName = dict["NickName"] as! String
                }
                if dict.keys.contains("UserId") {
                    self.userId = dict["UserId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Data") {
                var tmp : [ListOrganizationRoleUsersResponseBody.Result.Data] = []
                for v in dict["Data"] as! [Any] {
                    var model = ListOrganizationRoleUsersResponseBody.Result.Data()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.data = tmp
            }
            if dict.keys.contains("PageNum") {
                self.pageNum = dict["PageNum"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalNum") {
                self.totalNum = dict["TotalNum"] as! Int32
            }
            if dict.keys.contains("TotalPages") {
                self.totalPages = dict["TotalPages"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = ListOrganizationRoleUsersResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListOrganizationRoleUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AuthKey") {
                    self.authKey = dict["AuthKey"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthConfigList") {
                var tmp : [ListOrganizationRolesResponseBody.Result.AuthConfigList] = []
                for v in dict["AuthConfigList"] as! [Any] {
                    var model = ListOrganizationRolesResponseBody.Result.AuthConfigList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.authConfigList = tmp
            }
            if dict.keys.contains("IsSystemRole") {
                self.isSystemRole = dict["IsSystemRole"] as! Bool
            }
            if dict.keys.contains("RoleId") {
                self.roleId = dict["RoleId"] as! Int64
            }
            if dict.keys.contains("RoleName") {
                self.roleName = dict["RoleName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var tmp : [ListOrganizationRolesResponseBody.Result] = []
            for v in dict["Result"] as! [Any] {
                var model = ListOrganizationRolesResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListOrganizationRolesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataPortalId") {
            self.dataPortalId = dict["DataPortalId"] as! String
        }
    }
}

public class ListPortalMenuAuthorizationResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class Receivers : Tea.TeaModel {
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
                if self.receiverId != nil {
                    map["ReceiverId"] = self.receiverId!
                }
                if self.receiverType != nil {
                    map["ReceiverType"] = self.receiverType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ReceiverId") {
                    self.receiverId = dict["ReceiverId"] as! String
                }
                if dict.keys.contains("ReceiverType") {
                    self.receiverType = dict["ReceiverType"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MenuId") {
                self.menuId = dict["MenuId"] as! String
            }
            if dict.keys.contains("Receivers") {
                var tmp : [ListPortalMenuAuthorizationResponseBody.Result.Receivers] = []
                for v in dict["Receivers"] as! [Any] {
                    var model = ListPortalMenuAuthorizationResponseBody.Result.Receivers()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.receivers = tmp
            }
            if dict.keys.contains("ShowOnlyWithAccess") {
                self.showOnlyWithAccess = dict["ShowOnlyWithAccess"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var tmp : [ListPortalMenuAuthorizationResponseBody.Result] = []
            for v in dict["Result"] as! [Any] {
                var model = ListPortalMenuAuthorizationResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListPortalMenuAuthorizationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataPortalId") {
            self.dataPortalId = dict["DataPortalId"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListPortalMenusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Keyword") {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("OffsetDay") {
            self.offsetDay = dict["OffsetDay"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("QueryMode") {
            self.queryMode = dict["QueryMode"] as! String
        }
        if dict.keys.contains("TreeType") {
            self.treeType = dict["TreeType"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Favorite") {
                    self.favorite = dict["Favorite"] as! Bool
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtModified") {
                    self.gmtModified = dict["GmtModified"] as! String
                }
                if dict.keys.contains("HasEditAuth") {
                    self.hasEditAuth = dict["HasEditAuth"] as! Bool
                }
                if dict.keys.contains("HasViewAuth") {
                    self.hasViewAuth = dict["HasViewAuth"] as! Bool
                }
                if dict.keys.contains("LatestViewTime") {
                    self.latestViewTime = dict["LatestViewTime"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("OwnerName") {
                    self.ownerName = dict["OwnerName"] as! String
                }
                if dict.keys.contains("OwnerNum") {
                    self.ownerNum = dict["OwnerNum"] as! String
                }
                if dict.keys.contains("PublishStatus") {
                    self.publishStatus = dict["PublishStatus"] as! Int32
                }
                if dict.keys.contains("TreeId") {
                    self.treeId = dict["TreeId"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("ViewCount") {
                    self.viewCount = dict["ViewCount"] as! Int64
                }
                if dict.keys.contains("WorkspaceId") {
                    self.workspaceId = dict["WorkspaceId"] as! String
                }
                if dict.keys.contains("WorkspaceName") {
                    self.workspaceName = dict["WorkspaceName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Attention") {
                self.attention = dict["Attention"] as! String
            }
            if dict.keys.contains("Data") {
                var tmp : [ListRecentViewReportsResponseBody.Result.Data] = []
                for v in dict["Data"] as! [Any] {
                    var model = ListRecentViewReportsResponseBody.Result.Data()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.data = tmp
            }
            if dict.keys.contains("PageNum") {
                self.pageNum = dict["PageNum"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalNum") {
                self.totalNum = dict["TotalNum"] as! Int32
            }
            if dict.keys.contains("TotalPages") {
                self.totalPages = dict["TotalPages"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = ListRecentViewReportsResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListRecentViewReportsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Keyword") {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("TreeType") {
            self.treeType = dict["TreeType"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Favorite") {
                    self.favorite = dict["Favorite"] as! Bool
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtModified") {
                    self.gmtModified = dict["GmtModified"] as! String
                }
                if dict.keys.contains("HasEditAuth") {
                    self.hasEditAuth = dict["HasEditAuth"] as! Bool
                }
                if dict.keys.contains("HasViewAuth") {
                    self.hasViewAuth = dict["HasViewAuth"] as! Bool
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("OwnerName") {
                    self.ownerName = dict["OwnerName"] as! String
                }
                if dict.keys.contains("OwnerNum") {
                    self.ownerNum = dict["OwnerNum"] as! String
                }
                if dict.keys.contains("PublishStatus") {
                    self.publishStatus = dict["PublishStatus"] as! Int32
                }
                if dict.keys.contains("TreeId") {
                    self.treeId = dict["TreeId"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("WorkspaceId") {
                    self.workspaceId = dict["WorkspaceId"] as! String
                }
                if dict.keys.contains("WorkspaceName") {
                    self.workspaceName = dict["WorkspaceName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Data") {
                var tmp : [ListSharedReportsResponseBody.Result.Data] = []
                for v in dict["Data"] as! [Any] {
                    var model = ListSharedReportsResponseBody.Result.Data()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.data = tmp
            }
            if dict.keys.contains("PageNum") {
                self.pageNum = dict["PageNum"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalNum") {
                self.totalNum = dict["TotalNum"] as! Int32
            }
            if dict.keys.contains("TotalPages") {
                self.totalPages = dict["TotalPages"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = ListSharedReportsResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListSharedReportsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreateUser") {
                self.createUser = dict["CreateUser"] as! String
            }
            if dict.keys.contains("IdentifiedPath") {
                self.identifiedPath = dict["IdentifiedPath"] as! String
            }
            if dict.keys.contains("ModifiedTime") {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("ModifyUser") {
                self.modifyUser = dict["ModifyUser"] as! String
            }
            if dict.keys.contains("ParentUsergroupId") {
                self.parentUsergroupId = dict["ParentUsergroupId"] as! String
            }
            if dict.keys.contains("UsergroupDesc") {
                self.usergroupDesc = dict["UsergroupDesc"] as! String
            }
            if dict.keys.contains("UsergroupId") {
                self.usergroupId = dict["UsergroupId"] as! String
            }
            if dict.keys.contains("UsergroupName") {
                self.usergroupName = dict["UsergroupName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var tmp : [ListUserGroupsByUserIdResponseBody.Result] = []
            for v in dict["Result"] as! [Any] {
                var model = ListUserGroupsByUserIdResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListUserGroupsByUserIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Keyword") {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RoleId") {
            self.roleId = dict["RoleId"] as! Int64
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("NickName") {
                    self.nickName = dict["NickName"] as! String
                }
                if dict.keys.contains("UserId") {
                    self.userId = dict["UserId"] as! String
                }
                if dict.keys.contains("WorkspaceId") {
                    self.workspaceId = dict["WorkspaceId"] as! String
                }
                if dict.keys.contains("WorkspaceName") {
                    self.workspaceName = dict["WorkspaceName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Data") {
                var tmp : [ListWorkspaceRoleUsersResponseBody.Result.Data] = []
                for v in dict["Data"] as! [Any] {
                    var model = ListWorkspaceRoleUsersResponseBody.Result.Data()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.data = tmp
            }
            if dict.keys.contains("PageNum") {
                self.pageNum = dict["PageNum"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalNum") {
                self.totalNum = dict["TotalNum"] as! Int32
            }
            if dict.keys.contains("TotalPages") {
                self.totalPages = dict["TotalPages"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = ListWorkspaceRoleUsersResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListWorkspaceRoleUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ActionAuthKeys") {
                    self.actionAuthKeys = dict["ActionAuthKeys"] as! [String]
                }
                if dict.keys.contains("AuthKey") {
                    self.authKey = dict["AuthKey"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthConfigList") {
                var tmp : [ListWorkspaceRolesResponseBody.Result.AuthConfigList] = []
                for v in dict["AuthConfigList"] as! [Any] {
                    var model = ListWorkspaceRolesResponseBody.Result.AuthConfigList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.authConfigList = tmp
            }
            if dict.keys.contains("IsSystemRole") {
                self.isSystemRole = dict["IsSystemRole"] as! Bool
            }
            if dict.keys.contains("RoleId") {
                self.roleId = dict["RoleId"] as! Int64
            }
            if dict.keys.contains("RoleName") {
                self.roleName = dict["RoleName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var tmp : [ListWorkspaceRolesResponseBody.Result] = []
            for v in dict["Result"] as! [Any] {
                var model = ListWorkspaceRolesResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListWorkspaceRolesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MailId") {
            self.mailId = dict["MailId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ManualRunMailTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("Parameters") {
            self.parameters = dict["Parameters"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyApiDatasourceParametersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentName") {
            self.agentName = dict["AgentName"] as! String
        }
        if dict.keys.contains("CopilotId") {
            self.copilotId = dict["CopilotId"] as! String
        }
        if dict.keys.contains("DataRange") {
            self.dataRange = dict["DataRange"] as! String
        }
        if dict.keys.contains("ModuleName") {
            self.moduleName = dict["ModuleName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyCopilotEmbedConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Page") {
            self.page = dict["Page"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApplicantId") {
                    self.applicantId = dict["ApplicantId"] as! String
                }
                if dict.keys.contains("ApplicantName") {
                    self.applicantName = dict["ApplicantName"] as! String
                }
                if dict.keys.contains("ApplicationId") {
                    self.applicationId = dict["ApplicationId"] as! String
                }
                if dict.keys.contains("ApplyReason") {
                    self.applyReason = dict["ApplyReason"] as! String
                }
                if dict.keys.contains("ApproverId") {
                    self.approverId = dict["ApproverId"] as! String
                }
                if dict.keys.contains("ApproverName") {
                    self.approverName = dict["ApproverName"] as! String
                }
                if dict.keys.contains("DeleteFlag") {
                    self.deleteFlag = dict["DeleteFlag"] as! Bool
                }
                if dict.keys.contains("ExpireDate") {
                    self.expireDate = dict["ExpireDate"] as! Int64
                }
                if dict.keys.contains("FlagStatus") {
                    self.flagStatus = dict["FlagStatus"] as! Int32
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! Int64
                }
                if dict.keys.contains("GmtModified") {
                    self.gmtModified = dict["GmtModified"] as! Int64
                }
                if dict.keys.contains("HandleReason") {
                    self.handleReason = dict["HandleReason"] as! String
                }
                if dict.keys.contains("ResourceId") {
                    self.resourceId = dict["ResourceId"] as! String
                }
                if dict.keys.contains("ResourceName") {
                    self.resourceName = dict["ResourceName"] as! String
                }
                if dict.keys.contains("ResourceType") {
                    self.resourceType = dict["ResourceType"] as! String
                }
                if dict.keys.contains("WorkspaceName") {
                    self.workspaceName = dict["WorkspaceName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Data") {
                var tmp : [QueryApprovalInfoResponseBody.Result.Data] = []
                for v in dict["Data"] as! [Any] {
                    var model = QueryApprovalInfoResponseBody.Result.Data()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.data = tmp
            }
            if dict.keys.contains("Page") {
                self.page = dict["Page"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Start") {
                self.start = dict["Start"] as! Int32
            }
            if dict.keys.contains("Total") {
                self.total = dict["Total"] as! Int32
            }
            if dict.keys.contains("TotalPages") {
                self.totalPages = dict["TotalPages"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = QueryApprovalInfoResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryApprovalInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryAuditLogRequest : Tea.TeaModel {
    public var endDate: String?

    public var logType: String?

    public var operatorId: String?

    public var operatorTypes: String?

    public var resourceType: String?

    public var startDate: String?

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
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndDate") {
            self.endDate = dict["EndDate"] as! String
        }
        if dict.keys.contains("LogType") {
            self.logType = dict["LogType"] as! String
        }
        if dict.keys.contains("OperatorId") {
            self.operatorId = dict["OperatorId"] as! String
        }
        if dict.keys.contains("OperatorTypes") {
            self.operatorTypes = dict["OperatorTypes"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("StartDate") {
            self.startDate = dict["StartDate"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("OperatorAccountName") {
                self.operatorAccountName = dict["OperatorAccountName"] as! String
            }
            if dict.keys.contains("OperatorName") {
                self.operatorName = dict["OperatorName"] as! String
            }
            if dict.keys.contains("OperatorType") {
                self.operatorType = dict["OperatorType"] as! String
            }
            if dict.keys.contains("TargetId") {
                self.targetId = dict["TargetId"] as! String
            }
            if dict.keys.contains("TargetName") {
                self.targetName = dict["TargetName"] as! String
            }
            if dict.keys.contains("TargetType") {
                self.targetType = dict["TargetType"] as! String
            }
            if dict.keys.contains("WorkspaceId") {
                self.workspaceId = dict["WorkspaceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var tmp : [QueryAuditLogResponseBody.Result] = []
            for v in dict["Result"] as! [Any] {
                var model = QueryAuditLogResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryAuditLogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CostTimeAvgMin") {
            self.costTimeAvgMin = dict["CostTimeAvgMin"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("QueryType") {
            self.queryType = dict["QueryType"] as! String
        }
        if dict.keys.contains("ReportId") {
            self.reportId = dict["ReportId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CacheCostTimeAvg") {
                self.cacheCostTimeAvg = dict["CacheCostTimeAvg"] as! Double
            }
            if dict.keys.contains("CacheQueryCount") {
                self.cacheQueryCount = dict["CacheQueryCount"] as! Int32
            }
            if dict.keys.contains("ComponentId") {
                self.componentId = dict["ComponentId"] as! String
            }
            if dict.keys.contains("ComponentName") {
                self.componentName = dict["ComponentName"] as! String
            }
            if dict.keys.contains("CostTimeAvg") {
                self.costTimeAvg = dict["CostTimeAvg"] as! Double
            }
            if dict.keys.contains("QueryCount") {
                self.queryCount = dict["QueryCount"] as! Int32
            }
            if dict.keys.contains("QueryCountAvg") {
                self.queryCountAvg = dict["QueryCountAvg"] as! Double
            }
            if dict.keys.contains("QueryOverFivePercentNum") {
                self.queryOverFivePercentNum = dict["QueryOverFivePercentNum"] as! Double
            }
            if dict.keys.contains("QueryOverFiveSecPercent") {
                self.queryOverFiveSecPercent = dict["QueryOverFiveSecPercent"] as! String
            }
            if dict.keys.contains("QueryOverTenSecPercent") {
                self.queryOverTenSecPercent = dict["QueryOverTenSecPercent"] as! String
            }
            if dict.keys.contains("QueryOverTenSecPercentNum") {
                self.queryOverTenSecPercentNum = dict["QueryOverTenSecPercentNum"] as! Double
            }
            if dict.keys.contains("QueryTimeoutCount") {
                self.queryTimeoutCount = dict["QueryTimeoutCount"] as! Int32
            }
            if dict.keys.contains("QueryTimeoutCountPercent") {
                self.queryTimeoutCountPercent = dict["QueryTimeoutCountPercent"] as! Double
            }
            if dict.keys.contains("QuickIndexCostTimeAvg") {
                self.quickIndexCostTimeAvg = dict["QuickIndexCostTimeAvg"] as! Double
            }
            if dict.keys.contains("QuickIndexQueryCount") {
                self.quickIndexQueryCount = dict["QuickIndexQueryCount"] as! Int32
            }
            if dict.keys.contains("RepeatQueryPercent") {
                self.repeatQueryPercent = dict["RepeatQueryPercent"] as! String
            }
            if dict.keys.contains("RepeatQueryPercentNum") {
                self.repeatQueryPercentNum = dict["RepeatQueryPercentNum"] as! Double
            }
            if dict.keys.contains("RepeatSqlQueryCount") {
                self.repeatSqlQueryCount = dict["RepeatSqlQueryCount"] as! Int32
            }
            if dict.keys.contains("RepeatSqlQueryPercent") {
                self.repeatSqlQueryPercent = dict["RepeatSqlQueryPercent"] as! String
            }
            if dict.keys.contains("ReportId") {
                self.reportId = dict["ReportId"] as! String
            }
            if dict.keys.contains("ReportName") {
                self.reportName = dict["ReportName"] as! String
            }
            if dict.keys.contains("ReportType") {
                self.reportType = dict["ReportType"] as! String
            }
            if dict.keys.contains("WorkspaceId") {
                self.workspaceId = dict["WorkspaceId"] as! String
            }
            if dict.keys.contains("WorkspaceName") {
                self.workspaceName = dict["WorkspaceName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var tmp : [QueryComponentPerformanceResponseBody.Result] = []
            for v in dict["Result"] as! [Any] {
                var model = QueryComponentPerformanceResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryComponentPerformanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Keyword") {
            self.keyword = dict["Keyword"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AllCube") {
                    self.allCube = dict["AllCube"] as! Bool
                }
                if dict.keys.contains("AllTheme") {
                    self.allTheme = dict["AllTheme"] as! Bool
                }
                if dict.keys.contains("LlmCubes") {
                    self.llmCubes = dict["LlmCubes"] as! [String]
                }
                if dict.keys.contains("Themes") {
                    self.themes = dict["Themes"] as! [String]
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AgentName") {
                self.agentName = dict["AgentName"] as! String
            }
            if dict.keys.contains("CopilotId") {
                self.copilotId = dict["CopilotId"] as! String
            }
            if dict.keys.contains("CreateUser") {
                self.createUser = dict["CreateUser"] as! String
            }
            if dict.keys.contains("CreateUserName") {
                self.createUserName = dict["CreateUserName"] as! String
            }
            if dict.keys.contains("DataRange") {
                var model = QueryCopilotEmbedConfigResponseBody.Result.DataRange()
                model.fromMap(dict["DataRange"] as! [String: Any])
                self.dataRange = model
            }
            if dict.keys.contains("ModifyUser") {
                self.modifyUser = dict["ModifyUser"] as! String
            }
            if dict.keys.contains("ModuleName") {
                self.moduleName = dict["ModuleName"] as! String
            }
            if dict.keys.contains("ShowName") {
                self.showName = dict["ShowName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var tmp : [QueryCopilotEmbedConfigResponseBody.Result] = []
            for v in dict["Result"] as! [Any] {
                var model = QueryCopilotEmbedConfigResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryCopilotEmbedConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CacheCostTimeAvg") {
                    self.cacheCostTimeAvg = dict["CacheCostTimeAvg"] as! Double
                }
                if dict.keys.contains("CacheQueryCount") {
                    self.cacheQueryCount = dict["CacheQueryCount"] as! Int32
                }
                if dict.keys.contains("CostTimeAvg") {
                    self.costTimeAvg = dict["CostTimeAvg"] as! Double
                }
                if dict.keys.contains("CubeId") {
                    self.cubeId = dict["CubeId"] as! String
                }
                if dict.keys.contains("CubeName") {
                    self.cubeName = dict["CubeName"] as! String
                }
                if dict.keys.contains("QueryCount") {
                    self.queryCount = dict["QueryCount"] as! Int32
                }
                if dict.keys.contains("QueryCountAvg") {
                    self.queryCountAvg = dict["QueryCountAvg"] as! Double
                }
                if dict.keys.contains("QueryOverFivePercentNum") {
                    self.queryOverFivePercentNum = dict["QueryOverFivePercentNum"] as! Double
                }
                if dict.keys.contains("QueryOverFiveSecPercent") {
                    self.queryOverFiveSecPercent = dict["QueryOverFiveSecPercent"] as! String
                }
                if dict.keys.contains("QueryOverTenSecPercent") {
                    self.queryOverTenSecPercent = dict["QueryOverTenSecPercent"] as! String
                }
                if dict.keys.contains("QueryOverTenSecPercentNum") {
                    self.queryOverTenSecPercentNum = dict["QueryOverTenSecPercentNum"] as! Double
                }
                if dict.keys.contains("QueryTimeoutCount") {
                    self.queryTimeoutCount = dict["QueryTimeoutCount"] as! Int32
                }
                if dict.keys.contains("QueryTimeoutCountPercent") {
                    self.queryTimeoutCountPercent = dict["QueryTimeoutCountPercent"] as! Double
                }
                if dict.keys.contains("QuickIndexCostTimeAvg") {
                    self.quickIndexCostTimeAvg = dict["QuickIndexCostTimeAvg"] as! Double
                }
                if dict.keys.contains("QuickIndexQueryCount") {
                    self.quickIndexQueryCount = dict["QuickIndexQueryCount"] as! Int32
                }
                if dict.keys.contains("RepeatQueryPercent") {
                    self.repeatQueryPercent = dict["RepeatQueryPercent"] as! String
                }
                if dict.keys.contains("RepeatQueryPercentNum") {
                    self.repeatQueryPercentNum = dict["RepeatQueryPercentNum"] as! Double
                }
                if dict.keys.contains("RepeatSqlQueryCount") {
                    self.repeatSqlQueryCount = dict["RepeatSqlQueryCount"] as! Int32
                }
                if dict.keys.contains("RepeatSqlQueryPercent") {
                    self.repeatSqlQueryPercent = dict["RepeatSqlQueryPercent"] as! String
                }
                if dict.keys.contains("WorkspaceId") {
                    self.workspaceId = dict["WorkspaceId"] as! String
                }
                if dict.keys.contains("WorkspaceName") {
                    self.workspaceName = dict["WorkspaceName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AdviceType") {
                self.adviceType = dict["AdviceType"] as! String
            }
            if dict.keys.contains("CubePerformanceDiagnoseModel") {
                var model = QueryCubeOptimizationResponseBody.Result.CubePerformanceDiagnoseModel()
                model.fromMap(dict["CubePerformanceDiagnoseModel"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var tmp : [QueryCubeOptimizationResponseBody.Result] = []
            for v in dict["Result"] as! [Any] {
                var model = QueryCubeOptimizationResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryCubeOptimizationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CostTimeAvgMin") {
            self.costTimeAvgMin = dict["CostTimeAvgMin"] as! Int32
        }
        if dict.keys.contains("CubeId") {
            self.cubeId = dict["CubeId"] as! String
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("QueryType") {
            self.queryType = dict["QueryType"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CacheCostTimeAvg") {
                self.cacheCostTimeAvg = dict["CacheCostTimeAvg"] as! Double
            }
            if dict.keys.contains("CacheQueryCount") {
                self.cacheQueryCount = dict["CacheQueryCount"] as! Int32
            }
            if dict.keys.contains("CostTimeAvg") {
                self.costTimeAvg = dict["CostTimeAvg"] as! Double
            }
            if dict.keys.contains("CubeId") {
                self.cubeId = dict["CubeId"] as! String
            }
            if dict.keys.contains("CubeName") {
                self.cubeName = dict["CubeName"] as! String
            }
            if dict.keys.contains("QueryCount") {
                self.queryCount = dict["QueryCount"] as! Int32
            }
            if dict.keys.contains("QueryCountAvg") {
                self.queryCountAvg = dict["QueryCountAvg"] as! Double
            }
            if dict.keys.contains("QueryOverFivePercentNum") {
                self.queryOverFivePercentNum = dict["QueryOverFivePercentNum"] as! Double
            }
            if dict.keys.contains("QueryOverFiveSecPercent") {
                self.queryOverFiveSecPercent = dict["QueryOverFiveSecPercent"] as! String
            }
            if dict.keys.contains("QueryOverTenSecPercent") {
                self.queryOverTenSecPercent = dict["QueryOverTenSecPercent"] as! String
            }
            if dict.keys.contains("QueryOverTenSecPercentNum") {
                self.queryOverTenSecPercentNum = dict["QueryOverTenSecPercentNum"] as! Double
            }
            if dict.keys.contains("QueryTimeoutCount") {
                self.queryTimeoutCount = dict["QueryTimeoutCount"] as! Int32
            }
            if dict.keys.contains("QueryTimeoutCountPercent") {
                self.queryTimeoutCountPercent = dict["QueryTimeoutCountPercent"] as! Double
            }
            if dict.keys.contains("QuickIndexCostTimeAvg") {
                self.quickIndexCostTimeAvg = dict["QuickIndexCostTimeAvg"] as! Double
            }
            if dict.keys.contains("QuickIndexQueryCount") {
                self.quickIndexQueryCount = dict["QuickIndexQueryCount"] as! Int32
            }
            if dict.keys.contains("RepeatQueryPercent") {
                self.repeatQueryPercent = dict["RepeatQueryPercent"] as! String
            }
            if dict.keys.contains("RepeatQueryPercentNum") {
                self.repeatQueryPercentNum = dict["RepeatQueryPercentNum"] as! Double
            }
            if dict.keys.contains("RepeatSqlQueryCount") {
                self.repeatSqlQueryCount = dict["RepeatSqlQueryCount"] as! Int32
            }
            if dict.keys.contains("RepeatSqlQueryPercent") {
                self.repeatSqlQueryPercent = dict["RepeatSqlQueryPercent"] as! String
            }
            if dict.keys.contains("WorkspaceId") {
                self.workspaceId = dict["WorkspaceId"] as! String
            }
            if dict.keys.contains("WorkspaceName") {
                self.workspaceName = dict["WorkspaceName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var tmp : [QueryCubePerformanceResponseBody.Result] = []
            for v in dict["Result"] as! [Any] {
                var model = QueryCubePerformanceResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryCubePerformanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("Conditions") {
            self.conditions = dict["Conditions"] as! String
        }
        if dict.keys.contains("ReturnFields") {
            self.returnFields = dict["ReturnFields"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Aggregator") {
                    self.aggregator = dict["Aggregator"] as! String
                }
                if dict.keys.contains("Column") {
                    self.column = dict["Column"] as! String
                }
                if dict.keys.contains("DataType") {
                    self.dataType = dict["DataType"] as! String
                }
                if dict.keys.contains("Granularity") {
                    self.granularity = dict["Granularity"] as! String
                }
                if dict.keys.contains("Label") {
                    self.label = dict["Label"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Headers") {
                var tmp : [QueryDataResponseBody.Result.Headers] = []
                for v in dict["Headers"] as! [Any] {
                    var model = QueryDataResponseBody.Result.Headers()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.headers = tmp
            }
            if dict.keys.contains("Sql") {
                self.sql = dict["Sql"] as! String
            }
            if dict.keys.contains("Values") {
                self.values = dict["Values"] as! [[String: Any]]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = QueryDataResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryDataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Keyword") {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Alias") {
                    self.alias = dict["Alias"] as! String
                }
                if dict.keys.contains("CreateUser") {
                    self.createUser = dict["CreateUser"] as! String
                }
                if dict.keys.contains("LlmCubeId") {
                    self.llmCubeId = dict["LlmCubeId"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Alias") {
                        self.alias = dict["Alias"] as! String
                    }
                    if dict.keys.contains("CreateUser") {
                        self.createUser = dict["CreateUser"] as! String
                    }
                    if dict.keys.contains("LlmCubeId") {
                        self.llmCubeId = dict["LlmCubeId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApiCopilotLlmCubeModels") {
                    var tmp : [QueryDataRangeResponseBody.Result.ApiCopilotThemeModels.ApiCopilotLlmCubeModels] = []
                    for v in dict["ApiCopilotLlmCubeModels"] as! [Any] {
                        var model = QueryDataRangeResponseBody.Result.ApiCopilotThemeModels.ApiCopilotLlmCubeModels()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.apiCopilotLlmCubeModels = tmp
                }
                if dict.keys.contains("CreateUser") {
                    self.createUser = dict["CreateUser"] as! String
                }
                if dict.keys.contains("ThemeId") {
                    self.themeId = dict["ThemeId"] as! String
                }
                if dict.keys.contains("ThemeName") {
                    self.themeName = dict["ThemeName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApiCopilotLlmCubeModels") {
                var tmp : [QueryDataRangeResponseBody.Result.ApiCopilotLlmCubeModels] = []
                for v in dict["ApiCopilotLlmCubeModels"] as! [Any] {
                    var model = QueryDataRangeResponseBody.Result.ApiCopilotLlmCubeModels()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.apiCopilotLlmCubeModels = tmp
            }
            if dict.keys.contains("ApiCopilotThemeModels") {
                var tmp : [QueryDataRangeResponseBody.Result.ApiCopilotThemeModels] = []
                for v in dict["ApiCopilotThemeModels"] as! [Any] {
                    var model = QueryDataRangeResponseBody.Result.ApiCopilotThemeModels()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = QueryDataRangeResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryDataRangeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApiId") {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("Conditions") {
            self.conditions = dict["Conditions"] as! String
        }
        if dict.keys.contains("ReturnFields") {
            self.returnFields = dict["ReturnFields"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Aggregator") {
                    self.aggregator = dict["Aggregator"] as! String
                }
                if dict.keys.contains("Column") {
                    self.column = dict["Column"] as! String
                }
                if dict.keys.contains("DataType") {
                    self.dataType = dict["DataType"] as! String
                }
                if dict.keys.contains("Granularity") {
                    self.granularity = dict["Granularity"] as! String
                }
                if dict.keys.contains("Label") {
                    self.label = dict["Label"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Headers") {
                var tmp : [QueryDataServiceResponseBody.Result.Headers] = []
                for v in dict["Headers"] as! [Any] {
                    var model = QueryDataServiceResponseBody.Result.Headers()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.headers = tmp
            }
            if dict.keys.contains("Sql") {
                self.sql = dict["Sql"] as! String
            }
            if dict.keys.contains("Values") {
                self.values = dict["Values"] as! [[String: Any]]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = QueryDataServiceResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryDataServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PageNo") {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Filters") {
                            self.filters = dict["Filters"] as! [[String: Any]]
                        }
                        if dict.keys.contains("LogicalOperator") {
                            self.logicalOperator = dict["LogicalOperator"] as! String
                        }
                        if dict.keys.contains("Type") {
                            self.type = dict["Type"] as! String
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

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Caption") {
                                self.caption = dict["Caption"] as! String
                            }
                            if dict.keys.contains("Column") {
                                self.column = dict["Column"] as! String
                            }
                            if dict.keys.contains("DataType") {
                                self.dataType = dict["DataType"] as! String
                            }
                            if dict.keys.contains("Fid") {
                                self.fid = dict["Fid"] as! String
                            }
                            if dict.keys.contains("Granularity") {
                                self.granularity = dict["Granularity"] as! String
                            }
                            if dict.keys.contains("Name") {
                                self.name = dict["Name"] as! String
                            }
                            if dict.keys.contains("Type") {
                                self.type = dict["Type"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Aggregator") {
                            self.aggregator = dict["Aggregator"] as! String
                        }
                        if dict.keys.contains("Alias") {
                            self.alias = dict["Alias"] as! String
                        }
                        if dict.keys.contains("Desc") {
                            self.desc = dict["Desc"] as! String
                        }
                        if dict.keys.contains("Field") {
                            var model = QueryDataServiceListResponseBody.Result.Data.Content.ReturnFields.Field()
                            model.fromMap(dict["Field"] as! [String: Any])
                            self.field = model
                        }
                        if dict.keys.contains("Orderby") {
                            self.orderby = dict["Orderby"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CubeId") {
                        self.cubeId = dict["CubeId"] as! String
                    }
                    if dict.keys.contains("CubeName") {
                        self.cubeName = dict["CubeName"] as! String
                    }
                    if dict.keys.contains("Detail") {
                        self.detail = dict["Detail"] as! Bool
                    }
                    if dict.keys.contains("Filter") {
                        var model = QueryDataServiceListResponseBody.Result.Data.Content.Filter()
                        model.fromMap(dict["Filter"] as! [String: Any])
                        self.filter = model
                    }
                    if dict.keys.contains("ReturnFields") {
                        var tmp : [QueryDataServiceListResponseBody.Result.Data.Content.ReturnFields] = []
                        for v in dict["ReturnFields"] as! [Any] {
                            var model = QueryDataServiceListResponseBody.Result.Data.Content.ReturnFields()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Content") {
                    var model = QueryDataServiceListResponseBody.Result.Data.Content()
                    model.fromMap(dict["Content"] as! [String: Any])
                    self.content = model
                }
                if dict.keys.contains("CreatorId") {
                    self.creatorId = dict["CreatorId"] as! String
                }
                if dict.keys.contains("CreatorName") {
                    self.creatorName = dict["CreatorName"] as! String
                }
                if dict.keys.contains("CubeId") {
                    self.cubeId = dict["CubeId"] as! String
                }
                if dict.keys.contains("CubeName") {
                    self.cubeName = dict["CubeName"] as! String
                }
                if dict.keys.contains("Desc") {
                    self.desc = dict["Desc"] as! String
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtModified") {
                    self.gmtModified = dict["GmtModified"] as! String
                }
                if dict.keys.contains("ModifierId") {
                    self.modifierId = dict["ModifierId"] as! String
                }
                if dict.keys.contains("ModifierName") {
                    self.modifierName = dict["ModifierName"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("OwnerId") {
                    self.ownerId = dict["OwnerId"] as! String
                }
                if dict.keys.contains("OwnerName") {
                    self.ownerName = dict["OwnerName"] as! String
                }
                if dict.keys.contains("Sid") {
                    self.sid = dict["Sid"] as! String
                }
                if dict.keys.contains("WorkspaceId") {
                    self.workspaceId = dict["WorkspaceId"] as! String
                }
                if dict.keys.contains("WorkspaceName") {
                    self.workspaceName = dict["WorkspaceName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Data") {
                var tmp : [QueryDataServiceListResponseBody.Result.Data] = []
                for v in dict["Data"] as! [Any] {
                    var model = QueryDataServiceListResponseBody.Result.Data()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.data = tmp
            }
            if dict.keys.contains("PageNum") {
                self.pageNum = dict["PageNum"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalNum") {
                self.totalNum = dict["TotalNum"] as! Int32
            }
            if dict.keys.contains("TotalPages") {
                self.totalPages = dict["TotalPages"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = QueryDataServiceListResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryDataServiceListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetId") {
            self.datasetId = dict["DatasetId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryDatasetDetailInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DatasetId") {
            self.datasetId = dict["DatasetId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Caption") {
                    self.caption = dict["Caption"] as! String
                }
                if dict.keys.contains("Customsql") {
                    self.customsql = dict["Customsql"] as! Bool
                }
                if dict.keys.contains("DatasourceId") {
                    self.datasourceId = dict["DatasourceId"] as! String
                }
                if dict.keys.contains("DsType") {
                    self.dsType = dict["DsType"] as! String
                }
                if dict.keys.contains("FactTable") {
                    self.factTable = dict["FactTable"] as! Bool
                }
                if dict.keys.contains("Sql") {
                    self.sql = dict["Sql"] as! String
                }
                if dict.keys.contains("TableName") {
                    self.tableName = dict["TableName"] as! String
                }
                if dict.keys.contains("UniqueId") {
                    self.uniqueId = dict["UniqueId"] as! String
                }
            }
        }
        public class DimensionList : Tea.TeaModel {
            public var caption: String?

            public var dataType: String?

            public var dimensionType: String?

            public var expression: String?

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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Caption") {
                    self.caption = dict["Caption"] as! String
                }
                if dict.keys.contains("DataType") {
                    self.dataType = dict["DataType"] as! String
                }
                if dict.keys.contains("DimensionType") {
                    self.dimensionType = dict["DimensionType"] as! String
                }
                if dict.keys.contains("Expression") {
                    self.expression = dict["Expression"] as! String
                }
                if dict.keys.contains("FactColumn") {
                    self.factColumn = dict["FactColumn"] as! String
                }
                if dict.keys.contains("FieldDescription") {
                    self.fieldDescription = dict["FieldDescription"] as! String
                }
                if dict.keys.contains("Granularity") {
                    self.granularity = dict["Granularity"] as! String
                }
                if dict.keys.contains("RefUid") {
                    self.refUid = dict["RefUid"] as! String
                }
                if dict.keys.contains("TableUniqueId") {
                    self.tableUniqueId = dict["TableUniqueId"] as! String
                }
                if dict.keys.contains("Uid") {
                    self.uid = dict["Uid"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("PathId") {
                    self.pathId = dict["PathId"] as! String
                }
                if dict.keys.contains("PathName") {
                    self.pathName = dict["PathName"] as! String
                }
            }
        }
        public class MeasureList : Tea.TeaModel {
            public var caption: String?

            public var dataType: String?

            public var expression: String?

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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Caption") {
                    self.caption = dict["Caption"] as! String
                }
                if dict.keys.contains("DataType") {
                    self.dataType = dict["DataType"] as! String
                }
                if dict.keys.contains("Expression") {
                    self.expression = dict["Expression"] as! String
                }
                if dict.keys.contains("FactColumn") {
                    self.factColumn = dict["FactColumn"] as! String
                }
                if dict.keys.contains("FieldDescription") {
                    self.fieldDescription = dict["FieldDescription"] as! String
                }
                if dict.keys.contains("MeasureType") {
                    self.measureType = dict["MeasureType"] as! String
                }
                if dict.keys.contains("TableUniqueId") {
                    self.tableUniqueId = dict["TableUniqueId"] as! String
                }
                if dict.keys.contains("Uid") {
                    self.uid = dict["Uid"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CubeTableList") {
                var tmp : [QueryDatasetInfoResponseBody.Result.CubeTableList] = []
                for v in dict["CubeTableList"] as! [Any] {
                    var model = QueryDatasetInfoResponseBody.Result.CubeTableList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.cubeTableList = tmp
            }
            if dict.keys.contains("CustimzeSql") {
                self.custimzeSql = dict["CustimzeSql"] as! Bool
            }
            if dict.keys.contains("DatasetId") {
                self.datasetId = dict["DatasetId"] as! String
            }
            if dict.keys.contains("DatasetName") {
                self.datasetName = dict["DatasetName"] as! String
            }
            if dict.keys.contains("DimensionList") {
                var tmp : [QueryDatasetInfoResponseBody.Result.DimensionList] = []
                for v in dict["DimensionList"] as! [Any] {
                    var model = QueryDatasetInfoResponseBody.Result.DimensionList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.dimensionList = tmp
            }
            if dict.keys.contains("Directory") {
                var model = QueryDatasetInfoResponseBody.Result.Directory()
                model.fromMap(dict["Directory"] as! [String: Any])
                self.directory = model
            }
            if dict.keys.contains("DsId") {
                self.dsId = dict["DsId"] as! String
            }
            if dict.keys.contains("DsName") {
                self.dsName = dict["DsName"] as! String
            }
            if dict.keys.contains("DsType") {
                self.dsType = dict["DsType"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModify") {
                self.gmtModify = dict["GmtModify"] as! String
            }
            if dict.keys.contains("MeasureList") {
                var tmp : [QueryDatasetInfoResponseBody.Result.MeasureList] = []
                for v in dict["MeasureList"] as! [Any] {
                    var model = QueryDatasetInfoResponseBody.Result.MeasureList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.measureList = tmp
            }
            if dict.keys.contains("OpenOfflineAcceleration") {
                self.openOfflineAcceleration = dict["OpenOfflineAcceleration"] as! Bool
            }
            if dict.keys.contains("OwnerId") {
                self.ownerId = dict["OwnerId"] as! String
            }
            if dict.keys.contains("OwnerName") {
                self.ownerName = dict["OwnerName"] as! String
            }
            if dict.keys.contains("RowLevel") {
                self.rowLevel = dict["RowLevel"] as! Bool
            }
            if dict.keys.contains("WorkspaceId") {
                self.workspaceId = dict["WorkspaceId"] as! String
            }
            if dict.keys.contains("WorkspaceName") {
                self.workspaceName = dict["WorkspaceName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = QueryDatasetInfoResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryDatasetInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("Keyword") {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("WithChildren") {
            self.withChildren = dict["WithChildren"] as! Bool
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DsId") {
                        self.dsId = dict["DsId"] as! String
                    }
                    if dict.keys.contains("DsName") {
                        self.dsName = dict["DsName"] as! String
                    }
                    if dict.keys.contains("DsType") {
                        self.dsType = dict["DsType"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! String
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("PathId") {
                        self.pathId = dict["PathId"] as! String
                    }
                    if dict.keys.contains("PathName") {
                        self.pathName = dict["PathName"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("DataSource") {
                    var model = QueryDatasetListResponseBody.Result.Data.DataSource()
                    model.fromMap(dict["DataSource"] as! [String: Any])
                    self.dataSource = model
                }
                if dict.keys.contains("DatasetId") {
                    self.datasetId = dict["DatasetId"] as! String
                }
                if dict.keys.contains("DatasetName") {
                    self.datasetName = dict["DatasetName"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Directory") {
                    var model = QueryDatasetListResponseBody.Result.Data.Directory()
                    model.fromMap(dict["Directory"] as! [String: Any])
                    self.directory = model
                }
                if dict.keys.contains("ModifyTime") {
                    self.modifyTime = dict["ModifyTime"] as! String
                }
                if dict.keys.contains("OpenOfflineAcceleration") {
                    self.openOfflineAcceleration = dict["OpenOfflineAcceleration"] as! Bool
                }
                if dict.keys.contains("OwnerId") {
                    self.ownerId = dict["OwnerId"] as! String
                }
                if dict.keys.contains("OwnerName") {
                    self.ownerName = dict["OwnerName"] as! String
                }
                if dict.keys.contains("RowLevel") {
                    self.rowLevel = dict["RowLevel"] as! Bool
                }
                if dict.keys.contains("WorkspaceId") {
                    self.workspaceId = dict["WorkspaceId"] as! String
                }
                if dict.keys.contains("WorkspaceName") {
                    self.workspaceName = dict["WorkspaceName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Data") {
                var tmp : [QueryDatasetListResponseBody.Result.Data] = []
                for v in dict["Data"] as! [Any] {
                    var model = QueryDatasetListResponseBody.Result.Data()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.data = tmp
            }
            if dict.keys.contains("PageNum") {
                self.pageNum = dict["PageNum"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalNum") {
                self.totalNum = dict["TotalNum"] as! Int32
            }
            if dict.keys.contains("TotalPages") {
                self.totalPages = dict["TotalPages"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = QueryDatasetListResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryDatasetListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CubeId") {
            self.cubeId = dict["CubeId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryDatasetSmartqStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CubeId") {
            self.cubeId = dict["CubeId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CubeId") {
                self.cubeId = dict["CubeId"] as! String
            }
            if dict.keys.contains("IsOpenColumnLevelPermission") {
                self.isOpenColumnLevelPermission = dict["IsOpenColumnLevelPermission"] as! Int32
            }
            if dict.keys.contains("IsOpenRowLevelPermission") {
                self.isOpenRowLevelPermission = dict["IsOpenRowLevelPermission"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = QueryDatasetSwitchInfoResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryDatasetSwitchInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DashboardOfflineQuery") {
                    self.dashboardOfflineQuery = dict["DashboardOfflineQuery"] as! Int32
                }
                if dict.keys.contains("Page") {
                    self.page = dict["Page"] as! Int32
                }
                if dict.keys.contains("Report") {
                    self.report = dict["Report"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Detail") {
                var model = QueryEmbeddedInfoResponseBody.Result.Detail()
                model.fromMap(dict["Detail"] as! [String: Any])
                self.detail = model
            }
            if dict.keys.contains("EmbeddedCount") {
                self.embeddedCount = dict["EmbeddedCount"] as! Int32
            }
            if dict.keys.contains("MaxCount") {
                self.maxCount = dict["MaxCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = QueryEmbeddedInfoResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryEmbeddedInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("WorksId") {
            self.worksId = dict["WorksId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryEmbeddedStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CubeIds") {
                self.cubeIds = dict["CubeIds"] as! [String: String]
            }
            if dict.keys.contains("ThemeIds") {
                self.themeIds = dict["ThemeIds"] as! [String: String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = QueryLlmCubeWithThemeListByUserIdResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryLlmCubeWithThemeListByUserIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RoleId") {
            self.roleId = dict["RoleId"] as! Int64
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AuthKey") {
                    self.authKey = dict["AuthKey"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthConfigList") {
                var tmp : [QueryOrganizationRoleConfigResponseBody.Result.AuthConfigList] = []
                for v in dict["AuthConfigList"] as! [Any] {
                    var model = QueryOrganizationRoleConfigResponseBody.Result.AuthConfigList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.authConfigList = tmp
            }
            if dict.keys.contains("IsSystemRole") {
                self.isSystemRole = dict["IsSystemRole"] as! Bool
            }
            if dict.keys.contains("RoleId") {
                self.roleId = dict["RoleId"] as! Int64
            }
            if dict.keys.contains("RoleName") {
                self.roleName = dict["RoleName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = QueryOrganizationRoleConfigResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryOrganizationRoleConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Keyword") {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AllowPublishOperation") {
                    self.allowPublishOperation = dict["AllowPublishOperation"] as! Bool
                }
                if dict.keys.contains("AllowShareOperation") {
                    self.allowShareOperation = dict["AllowShareOperation"] as! Bool
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("CreateUser") {
                    self.createUser = dict["CreateUser"] as! String
                }
                if dict.keys.contains("CreateUserAccountName") {
                    self.createUserAccountName = dict["CreateUserAccountName"] as! String
                }
                if dict.keys.contains("ModifiedTime") {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("ModifyUser") {
                    self.modifyUser = dict["ModifyUser"] as! String
                }
                if dict.keys.contains("ModifyUserAccountName") {
                    self.modifyUserAccountName = dict["ModifyUserAccountName"] as! String
                }
                if dict.keys.contains("OrganizationId") {
                    self.organizationId = dict["OrganizationId"] as! String
                }
                if dict.keys.contains("Owner") {
                    self.owner = dict["Owner"] as! String
                }
                if dict.keys.contains("OwnerAccountName") {
                    self.ownerAccountName = dict["OwnerAccountName"] as! String
                }
                if dict.keys.contains("WorkspaceDescription") {
                    self.workspaceDescription = dict["WorkspaceDescription"] as! String
                }
                if dict.keys.contains("WorkspaceId") {
                    self.workspaceId = dict["WorkspaceId"] as! String
                }
                if dict.keys.contains("WorkspaceName") {
                    self.workspaceName = dict["WorkspaceName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Data") {
                var tmp : [QueryOrganizationWorkspaceListResponseBody.Result.Data] = []
                for v in dict["Data"] as! [Any] {
                    var model = QueryOrganizationWorkspaceListResponseBody.Result.Data()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.data = tmp
            }
            if dict.keys.contains("PageNum") {
                self.pageNum = dict["PageNum"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalNum") {
                self.totalNum = dict["TotalNum"] as! Int32
            }
            if dict.keys.contains("TotalPages") {
                self.totalPages = dict["TotalPages"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = QueryOrganizationWorkspaceListResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryOrganizationWorkspaceListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("PathId") {
                    self.pathId = dict["PathId"] as! String
                }
                if dict.keys.contains("PathName") {
                    self.pathName = dict["PathName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Directory") {
                var model = QueryReadableResourcesListByUserIdResponseBody.Result.Directory()
                model.fromMap(dict["Directory"] as! [String: Any])
                self.directory = model
            }
            if dict.keys.contains("ModifyName") {
                self.modifyName = dict["ModifyName"] as! String
            }
            if dict.keys.contains("ModifyTime") {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("OwnerId") {
                self.ownerId = dict["OwnerId"] as! String
            }
            if dict.keys.contains("OwnerName") {
                self.ownerName = dict["OwnerName"] as! String
            }
            if dict.keys.contains("SecurityLevel") {
                self.securityLevel = dict["SecurityLevel"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("ThirdPartAuthFlag") {
                self.thirdPartAuthFlag = dict["ThirdPartAuthFlag"] as! Int32
            }
            if dict.keys.contains("WorkName") {
                self.workName = dict["WorkName"] as! String
            }
            if dict.keys.contains("WorkType") {
                self.workType = dict["WorkType"] as! String
            }
            if dict.keys.contains("WorksId") {
                self.worksId = dict["WorksId"] as! String
            }
            if dict.keys.contains("WorkspaceId") {
                self.workspaceId = dict["WorkspaceId"] as! String
            }
            if dict.keys.contains("WorkspaceName") {
                self.workspaceName = dict["WorkspaceName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var tmp : [QueryReadableResourcesListByUserIdResponseBody.Result] = []
            for v in dict["Result"] as! [Any] {
                var model = QueryReadableResourcesListByUserIdResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryReadableResourcesListByUserIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CostTimeAvgMin") {
            self.costTimeAvgMin = dict["CostTimeAvgMin"] as! Int32
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("QueryType") {
            self.queryType = dict["QueryType"] as! String
        }
        if dict.keys.contains("ReportId") {
            self.reportId = dict["ReportId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CacheCostTimeAvg") {
                self.cacheCostTimeAvg = dict["CacheCostTimeAvg"] as! Double
            }
            if dict.keys.contains("CacheQueryCount") {
                self.cacheQueryCount = dict["CacheQueryCount"] as! Int32
            }
            if dict.keys.contains("ComponentQueryCount") {
                self.componentQueryCount = dict["ComponentQueryCount"] as! Int32
            }
            if dict.keys.contains("ComponentQueryCountAvg") {
                self.componentQueryCountAvg = dict["ComponentQueryCountAvg"] as! Double
            }
            if dict.keys.contains("CostTimeAvg") {
                self.costTimeAvg = dict["CostTimeAvg"] as! Double
            }
            if dict.keys.contains("QueryCount") {
                self.queryCount = dict["QueryCount"] as! Int32
            }
            if dict.keys.contains("QueryCountAvg") {
                self.queryCountAvg = dict["QueryCountAvg"] as! Double
            }
            if dict.keys.contains("QueryOverFivePercentNum") {
                self.queryOverFivePercentNum = dict["QueryOverFivePercentNum"] as! Double
            }
            if dict.keys.contains("QueryOverFiveSecPercent") {
                self.queryOverFiveSecPercent = dict["QueryOverFiveSecPercent"] as! String
            }
            if dict.keys.contains("QueryOverTenSecPercent") {
                self.queryOverTenSecPercent = dict["QueryOverTenSecPercent"] as! String
            }
            if dict.keys.contains("QueryOverTenSecPercentNum") {
                self.queryOverTenSecPercentNum = dict["QueryOverTenSecPercentNum"] as! Double
            }
            if dict.keys.contains("QueryTimeoutCount") {
                self.queryTimeoutCount = dict["QueryTimeoutCount"] as! Int32
            }
            if dict.keys.contains("QueryTimeoutCountPercent") {
                self.queryTimeoutCountPercent = dict["QueryTimeoutCountPercent"] as! Double
            }
            if dict.keys.contains("QuickIndexCostTimeAvg") {
                self.quickIndexCostTimeAvg = dict["QuickIndexCostTimeAvg"] as! Double
            }
            if dict.keys.contains("QuickIndexQueryCount") {
                self.quickIndexQueryCount = dict["QuickIndexQueryCount"] as! Int32
            }
            if dict.keys.contains("RepeatQueryPercent") {
                self.repeatQueryPercent = dict["RepeatQueryPercent"] as! String
            }
            if dict.keys.contains("RepeatQueryPercentNum") {
                self.repeatQueryPercentNum = dict["RepeatQueryPercentNum"] as! Double
            }
            if dict.keys.contains("RepeatSqlQueryCount") {
                self.repeatSqlQueryCount = dict["RepeatSqlQueryCount"] as! Int32
            }
            if dict.keys.contains("RepeatSqlQueryPercent") {
                self.repeatSqlQueryPercent = dict["RepeatSqlQueryPercent"] as! String
            }
            if dict.keys.contains("ReportId") {
                self.reportId = dict["ReportId"] as! String
            }
            if dict.keys.contains("ReportName") {
                self.reportName = dict["ReportName"] as! String
            }
            if dict.keys.contains("ReportType") {
                self.reportType = dict["ReportType"] as! String
            }
            if dict.keys.contains("WorkspaceId") {
                self.workspaceId = dict["WorkspaceId"] as! String
            }
            if dict.keys.contains("WorkspaceName") {
                self.workspaceName = dict["WorkspaceName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var tmp : [QueryReportPerformanceResponseBody.Result] = []
            for v in dict["Result"] as! [Any] {
                var model = QueryReportPerformanceResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryReportPerformanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ReportId") {
            self.reportId = dict["ReportId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthPoint") {
                self.authPoint = dict["AuthPoint"] as! Int32
            }
            if dict.keys.contains("ExpireDate") {
                self.expireDate = dict["ExpireDate"] as! Int64
            }
            if dict.keys.contains("ReportId") {
                self.reportId = dict["ReportId"] as! String
            }
            if dict.keys.contains("ShareId") {
                self.shareId = dict["ShareId"] as! String
            }
            if dict.keys.contains("ShareToId") {
                self.shareToId = dict["ShareToId"] as! String
            }
            if dict.keys.contains("ShareToName") {
                self.shareToName = dict["ShareToName"] as! String
            }
            if dict.keys.contains("ShareToType") {
                self.shareToType = dict["ShareToType"] as! Int32
            }
            if dict.keys.contains("ShareType") {
                self.shareType = dict["ShareType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var tmp : [QueryShareListResponseBody.Result] = []
            for v in dict["Result"] as! [Any] {
                var model = QueryShareListResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryShareListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("PathId") {
                    self.pathId = dict["PathId"] as! String
                }
                if dict.keys.contains("PathName") {
                    self.pathName = dict["PathName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Directory") {
                var model = QuerySharesToUserListResponseBody.Result.Directory()
                model.fromMap(dict["Directory"] as! [String: Any])
                self.directory = model
            }
            if dict.keys.contains("ModifyName") {
                self.modifyName = dict["ModifyName"] as! String
            }
            if dict.keys.contains("ModifyTime") {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("OwnerId") {
                self.ownerId = dict["OwnerId"] as! String
            }
            if dict.keys.contains("OwnerName") {
                self.ownerName = dict["OwnerName"] as! String
            }
            if dict.keys.contains("SecurityLevel") {
                self.securityLevel = dict["SecurityLevel"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("ThirdPartAuthFlag") {
                self.thirdPartAuthFlag = dict["ThirdPartAuthFlag"] as! Int32
            }
            if dict.keys.contains("WorkName") {
                self.workName = dict["WorkName"] as! String
            }
            if dict.keys.contains("WorkType") {
                self.workType = dict["WorkType"] as! String
            }
            if dict.keys.contains("WorksId") {
                self.worksId = dict["WorksId"] as! String
            }
            if dict.keys.contains("WorkspaceId") {
                self.workspaceId = dict["WorkspaceId"] as! String
            }
            if dict.keys.contains("WorkspaceName") {
                self.workspaceName = dict["WorkspaceName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var tmp : [QuerySharesToUserListResponseBody.Result] = []
            for v in dict["Result"] as! [Any] {
                var model = QuerySharesToUserListResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QuerySharesToUserListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CubeId") {
            self.cubeId = dict["CubeId"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CubeId") {
                self.cubeId = dict["CubeId"] as! String
            }
            if dict.keys.contains("CubeName") {
                self.cubeName = dict["CubeName"] as! String
            }
            if dict.keys.contains("HasPerssion") {
                self.hasPerssion = dict["HasPerssion"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = QuerySmartqPermissionByCubeIdResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QuerySmartqPermissionByCubeIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ticket") {
            self.ticket = dict["Ticket"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessTicket") {
                self.accessTicket = dict["AccessTicket"] as! String
            }
            if dict.keys.contains("CmptId") {
                self.cmptId = dict["CmptId"] as! String
            }
            if dict.keys.contains("GlobalParam") {
                self.globalParam = dict["GlobalParam"] as! String
            }
            if dict.keys.contains("InvalidTime") {
                self.invalidTime = dict["InvalidTime"] as! String
            }
            if dict.keys.contains("MaxTicketNum") {
                self.maxTicketNum = dict["MaxTicketNum"] as! Int32
            }
            if dict.keys.contains("OrganizationId") {
                self.organizationId = dict["OrganizationId"] as! String
            }
            if dict.keys.contains("RegisterTime") {
                self.registerTime = dict["RegisterTime"] as! String
            }
            if dict.keys.contains("UsedTicketNum") {
                self.usedTicketNum = dict["UsedTicketNum"] as! Int32
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
            if dict.keys.contains("WatermarkParam") {
                self.watermarkParam = dict["WatermarkParam"] as! String
            }
            if dict.keys.contains("WorksId") {
                self.worksId = dict["WorksId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = QueryTicketInfoResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryTicketInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ParentUserGroupId") {
            self.parentUserGroupId = dict["ParentUserGroupId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreateUser") {
                self.createUser = dict["CreateUser"] as! String
            }
            if dict.keys.contains("IdentifiedPath") {
                self.identifiedPath = dict["IdentifiedPath"] as! String
            }
            if dict.keys.contains("ModifiedTime") {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("ModifyUser") {
                self.modifyUser = dict["ModifyUser"] as! String
            }
            if dict.keys.contains("ParentUserGroupId") {
                self.parentUserGroupId = dict["ParentUserGroupId"] as! String
            }
            if dict.keys.contains("UserGroupDescription") {
                self.userGroupDescription = dict["UserGroupDescription"] as! String
            }
            if dict.keys.contains("UserGroupId") {
                self.userGroupId = dict["UserGroupId"] as! String
            }
            if dict.keys.contains("UserGroupName") {
                self.userGroupName = dict["UserGroupName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var tmp : [QueryUserGroupListByParentIdResponseBody.Result] = []
            for v in dict["Result"] as! [Any] {
                var model = QueryUserGroupListByParentIdResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryUserGroupListByParentIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Keyword") {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("UserGroupId") {
            self.userGroupId = dict["UserGroupId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("IsUserGroup") {
                self.isUserGroup = dict["IsUserGroup"] as! Bool
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ParentUserGroupId") {
                self.parentUserGroupId = dict["ParentUserGroupId"] as! String
            }
            if dict.keys.contains("ParentUserGroupName") {
                self.parentUserGroupName = dict["ParentUserGroupName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var tmp : [QueryUserGroupMemberResponseBody.Result] = []
            for v in dict["Result"] as! [Any] {
                var model = QueryUserGroupMemberResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryUserGroupMemberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Account") {
            self.account = dict["Account"] as! String
        }
        if dict.keys.contains("ParentAccountName") {
            self.parentAccountName = dict["ParentAccountName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountId") {
                self.accountId = dict["AccountId"] as! String
            }
            if dict.keys.contains("AccountName") {
                self.accountName = dict["AccountName"] as! String
            }
            if dict.keys.contains("AdminUser") {
                self.adminUser = dict["AdminUser"] as! Bool
            }
            if dict.keys.contains("AuthAdminUser") {
                self.authAdminUser = dict["AuthAdminUser"] as! Bool
            }
            if dict.keys.contains("Email") {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("NickName") {
                self.nickName = dict["NickName"] as! String
            }
            if dict.keys.contains("Phone") {
                self.phone = dict["Phone"] as! String
            }
            if dict.keys.contains("RoleIdList") {
                self.roleIdList = dict["RoleIdList"] as! [Int64]
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
            if dict.keys.contains("UserType") {
                self.userType = dict["UserType"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = QueryUserInfoByAccountResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryUserInfoByAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountId") {
                self.accountId = dict["AccountId"] as! String
            }
            if dict.keys.contains("AccountName") {
                self.accountName = dict["AccountName"] as! String
            }
            if dict.keys.contains("AdminUser") {
                self.adminUser = dict["AdminUser"] as! Bool
            }
            if dict.keys.contains("AuthAdminUser") {
                self.authAdminUser = dict["AuthAdminUser"] as! Bool
            }
            if dict.keys.contains("Email") {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("NickName") {
                self.nickName = dict["NickName"] as! String
            }
            if dict.keys.contains("Phone") {
                self.phone = dict["Phone"] as! String
            }
            if dict.keys.contains("RoleIdList") {
                self.roleIdList = dict["RoleIdList"] as! [Int64]
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
            if dict.keys.contains("UserType") {
                self.userType = dict["UserType"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = QueryUserInfoByUserIdResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryUserInfoByUserIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Keyword") {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountId") {
                    self.accountId = dict["AccountId"] as! String
                }
                if dict.keys.contains("AccountName") {
                    self.accountName = dict["AccountName"] as! String
                }
                if dict.keys.contains("AdminUser") {
                    self.adminUser = dict["AdminUser"] as! Bool
                }
                if dict.keys.contains("AuthAdminUser") {
                    self.authAdminUser = dict["AuthAdminUser"] as! Bool
                }
                if dict.keys.contains("JoinedDate") {
                    self.joinedDate = dict["JoinedDate"] as! Int64
                }
                if dict.keys.contains("LastLoginTime") {
                    self.lastLoginTime = dict["LastLoginTime"] as! Int64
                }
                if dict.keys.contains("NickName") {
                    self.nickName = dict["NickName"] as! String
                }
                if dict.keys.contains("RoleIdList") {
                    self.roleIdList = dict["RoleIdList"] as! [Int64]
                }
                if dict.keys.contains("UserId") {
                    self.userId = dict["UserId"] as! String
                }
                if dict.keys.contains("UserType") {
                    self.userType = dict["UserType"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Data") {
                var tmp : [QueryUserListResponseBody.Result.Data] = []
                for v in dict["Data"] as! [Any] {
                    var model = QueryUserListResponseBody.Result.Data()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.data = tmp
            }
            if dict.keys.contains("PageNum") {
                self.pageNum = dict["PageNum"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalNum") {
                self.totalNum = dict["TotalNum"] as! Int32
            }
            if dict.keys.contains("TotalPages") {
                self.totalPages = dict["TotalPages"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = QueryUserListResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryUserListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RoleCode") {
                self.roleCode = dict["RoleCode"] as! String
            }
            if dict.keys.contains("RoleId") {
                self.roleId = dict["RoleId"] as! Int64
            }
            if dict.keys.contains("RoleName") {
                self.roleName = dict["RoleName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = QueryUserRoleInfoInWorkspaceResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryUserRoleInfoInWorkspaceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TagDescription") {
                self.tagDescription = dict["TagDescription"] as! String
            }
            if dict.keys.contains("TagId") {
                self.tagId = dict["TagId"] as! String
            }
            if dict.keys.contains("TagName") {
                self.tagName = dict["TagName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var tmp : [QueryUserTagMetaListResponseBody.Result] = []
            for v in dict["Result"] as! [Any] {
                var model = QueryUserTagMetaListResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryUserTagMetaListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TagId") {
                self.tagId = dict["TagId"] as! String
            }
            if dict.keys.contains("TagName") {
                self.tagName = dict["TagName"] as! String
            }
            if dict.keys.contains("TagValue") {
                self.tagValue = dict["TagValue"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var tmp : [QueryUserTagValueListResponseBody.Result] = []
            for v in dict["Result"] as! [Any] {
                var model = QueryUserTagValueListResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryUserTagValueListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("WorksId") {
            self.worksId = dict["WorksId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("PathId") {
                    self.pathId = dict["PathId"] as! String
                }
                if dict.keys.contains("PathName") {
                    self.pathName = dict["PathName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Auth3rdFlag") {
                self.auth3rdFlag = dict["Auth3rdFlag"] as! Int32
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Directory") {
                var model = QueryWorksResponseBody.Result.Directory()
                model.fromMap(dict["Directory"] as! [String: Any])
                self.directory = model
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModify") {
                self.gmtModify = dict["GmtModify"] as! String
            }
            if dict.keys.contains("ModifyName") {
                self.modifyName = dict["ModifyName"] as! String
            }
            if dict.keys.contains("OwnerId") {
                self.ownerId = dict["OwnerId"] as! String
            }
            if dict.keys.contains("OwnerName") {
                self.ownerName = dict["OwnerName"] as! String
            }
            if dict.keys.contains("PublicFlag") {
                self.publicFlag = dict["PublicFlag"] as! Bool
            }
            if dict.keys.contains("PublicInvalidTime") {
                self.publicInvalidTime = dict["PublicInvalidTime"] as! Int64
            }
            if dict.keys.contains("SecurityLevel") {
                self.securityLevel = dict["SecurityLevel"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("WorkName") {
                self.workName = dict["WorkName"] as! String
            }
            if dict.keys.contains("WorkType") {
                self.workType = dict["WorkType"] as! String
            }
            if dict.keys.contains("WorksId") {
                self.worksId = dict["WorksId"] as! String
            }
            if dict.keys.contains("WorkspaceId") {
                self.workspaceId = dict["WorkspaceId"] as! String
            }
            if dict.keys.contains("WorkspaceName") {
                self.workspaceName = dict["WorkspaceName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = QueryWorksResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryWorksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("WorksId") {
            self.worksId = dict["WorksId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AreaId") {
                    self.areaId = dict["AreaId"] as! String
                }
                if dict.keys.contains("AreaName") {
                    self.areaName = dict["AreaName"] as! String
                }
                if dict.keys.contains("Caption") {
                    self.caption = dict["Caption"] as! String
                }
                if dict.keys.contains("DataType") {
                    self.dataType = dict["DataType"] as! String
                }
                if dict.keys.contains("Expression") {
                    self.expression = dict["Expression"] as! String
                }
                if dict.keys.contains("IsMeasure") {
                    self.isMeasure = dict["IsMeasure"] as! Bool
                }
                if dict.keys.contains("PathId") {
                    self.pathId = dict["PathId"] as! String
                }
                if dict.keys.contains("Uid") {
                    self.uid = dict["Uid"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ComponentId") {
                self.componentId = dict["ComponentId"] as! String
            }
            if dict.keys.contains("ComponentName") {
                self.componentName = dict["ComponentName"] as! String
            }
            if dict.keys.contains("ComponentType") {
                self.componentType = dict["ComponentType"] as! Int32
            }
            if dict.keys.contains("ComponentTypeCnName") {
                self.componentTypeCnName = dict["ComponentTypeCnName"] as! String
            }
            if dict.keys.contains("ComponentTypeName") {
                self.componentTypeName = dict["ComponentTypeName"] as! String
            }
            if dict.keys.contains("DatasetId") {
                self.datasetId = dict["DatasetId"] as! String
            }
            if dict.keys.contains("QueryParams") {
                var tmp : [QueryWorksBloodRelationshipResponseBody.Result.QueryParams] = []
                for v in dict["QueryParams"] as! [Any] {
                    var model = QueryWorksBloodRelationshipResponseBody.Result.QueryParams()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var tmp : [QueryWorksBloodRelationshipResponseBody.Result] = []
            for v in dict["Result"] as! [Any] {
                var model = QueryWorksBloodRelationshipResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryWorksBloodRelationshipResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
        }
        if dict.keys.contains("ThirdPartAuthFlag") {
            self.thirdPartAuthFlag = dict["ThirdPartAuthFlag"] as! Int32
        }
        if dict.keys.contains("WorksType") {
            self.worksType = dict["WorksType"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! String
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("PathId") {
                        self.pathId = dict["PathId"] as! String
                    }
                    if dict.keys.contains("PathName") {
                        self.pathName = dict["PathName"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Auth3rdFlag") {
                    self.auth3rdFlag = dict["Auth3rdFlag"] as! Int32
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Directory") {
                    var model = QueryWorksByOrganizationResponseBody.Result.Data.Directory()
                    model.fromMap(dict["Directory"] as! [String: Any])
                    self.directory = model
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtModify") {
                    self.gmtModify = dict["GmtModify"] as! String
                }
                if dict.keys.contains("ModifyName") {
                    self.modifyName = dict["ModifyName"] as! String
                }
                if dict.keys.contains("OwnerId") {
                    self.ownerId = dict["OwnerId"] as! String
                }
                if dict.keys.contains("OwnerName") {
                    self.ownerName = dict["OwnerName"] as! String
                }
                if dict.keys.contains("PublicFlag") {
                    self.publicFlag = dict["PublicFlag"] as! Bool
                }
                if dict.keys.contains("PublicInvalidTime") {
                    self.publicInvalidTime = dict["PublicInvalidTime"] as! Int64
                }
                if dict.keys.contains("SecurityLevel") {
                    self.securityLevel = dict["SecurityLevel"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("WorkName") {
                    self.workName = dict["WorkName"] as! String
                }
                if dict.keys.contains("WorkType") {
                    self.workType = dict["WorkType"] as! String
                }
                if dict.keys.contains("WorksId") {
                    self.worksId = dict["WorksId"] as! String
                }
                if dict.keys.contains("WorkspaceId") {
                    self.workspaceId = dict["WorkspaceId"] as! String
                }
                if dict.keys.contains("WorkspaceName") {
                    self.workspaceName = dict["WorkspaceName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Data") {
                var tmp : [QueryWorksByOrganizationResponseBody.Result.Data] = []
                for v in dict["Data"] as! [Any] {
                    var model = QueryWorksByOrganizationResponseBody.Result.Data()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.data = tmp
            }
            if dict.keys.contains("PageNum") {
                self.pageNum = dict["PageNum"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalNum") {
                self.totalNum = dict["TotalNum"] as! Int32
            }
            if dict.keys.contains("TotalPages") {
                self.totalPages = dict["TotalPages"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = QueryWorksByOrganizationResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryWorksByOrganizationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
        }
        if dict.keys.contains("ThirdPartAuthFlag") {
            self.thirdPartAuthFlag = dict["ThirdPartAuthFlag"] as! Int32
        }
        if dict.keys.contains("WorksType") {
            self.worksType = dict["WorksType"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Id") {
                        self.id = dict["Id"] as! String
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("PathId") {
                        self.pathId = dict["PathId"] as! String
                    }
                    if dict.keys.contains("PathName") {
                        self.pathName = dict["PathName"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Auth3rdFlag") {
                    self.auth3rdFlag = dict["Auth3rdFlag"] as! Int32
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Directory") {
                    var model = QueryWorksByWorkspaceResponseBody.Result.Data.Directory()
                    model.fromMap(dict["Directory"] as! [String: Any])
                    self.directory = model
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtModify") {
                    self.gmtModify = dict["GmtModify"] as! String
                }
                if dict.keys.contains("ModifyName") {
                    self.modifyName = dict["ModifyName"] as! String
                }
                if dict.keys.contains("OwnerId") {
                    self.ownerId = dict["OwnerId"] as! String
                }
                if dict.keys.contains("OwnerName") {
                    self.ownerName = dict["OwnerName"] as! String
                }
                if dict.keys.contains("PublicFlag") {
                    self.publicFlag = dict["PublicFlag"] as! Bool
                }
                if dict.keys.contains("PublicInvalidTime") {
                    self.publicInvalidTime = dict["PublicInvalidTime"] as! Int64
                }
                if dict.keys.contains("SecurityLevel") {
                    self.securityLevel = dict["SecurityLevel"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("WorkName") {
                    self.workName = dict["WorkName"] as! String
                }
                if dict.keys.contains("WorkType") {
                    self.workType = dict["WorkType"] as! String
                }
                if dict.keys.contains("WorksId") {
                    self.worksId = dict["WorksId"] as! String
                }
                if dict.keys.contains("WorkspaceId") {
                    self.workspaceId = dict["WorkspaceId"] as! String
                }
                if dict.keys.contains("WorkspaceName") {
                    self.workspaceName = dict["WorkspaceName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Data") {
                var tmp : [QueryWorksByWorkspaceResponseBody.Result.Data] = []
                for v in dict["Data"] as! [Any] {
                    var model = QueryWorksByWorkspaceResponseBody.Result.Data()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.data = tmp
            }
            if dict.keys.contains("PageNum") {
                self.pageNum = dict["PageNum"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalNum") {
                self.totalNum = dict["TotalNum"] as! Int32
            }
            if dict.keys.contains("TotalPages") {
                self.totalPages = dict["TotalPages"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = QueryWorksByWorkspaceResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryWorksByWorkspaceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RoleId") {
            self.roleId = dict["RoleId"] as! Int64
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ActionAuthKeys") {
                    self.actionAuthKeys = dict["ActionAuthKeys"] as! [String]
                }
                if dict.keys.contains("AuthKey") {
                    self.authKey = dict["AuthKey"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthConfigList") {
                var tmp : [QueryWorkspaceRoleConfigResponseBody.Result.AuthConfigList] = []
                for v in dict["AuthConfigList"] as! [Any] {
                    var model = QueryWorkspaceRoleConfigResponseBody.Result.AuthConfigList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.authConfigList = tmp
            }
            if dict.keys.contains("IsSystemRole") {
                self.isSystemRole = dict["IsSystemRole"] as! Bool
            }
            if dict.keys.contains("RoleId") {
                self.roleId = dict["RoleId"] as! Int64
            }
            if dict.keys.contains("RoleName") {
                self.roleName = dict["RoleName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = QueryWorkspaceRoleConfigResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryWorkspaceRoleConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Keyword") {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("RoleCode") {
                        self.roleCode = dict["RoleCode"] as! String
                    }
                    if dict.keys.contains("RoleId") {
                        self.roleId = dict["RoleId"] as! Int64
                    }
                    if dict.keys.contains("RoleName") {
                        self.roleName = dict["RoleName"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountId") {
                    self.accountId = dict["AccountId"] as! String
                }
                if dict.keys.contains("AccountName") {
                    self.accountName = dict["AccountName"] as! String
                }
                if dict.keys.contains("NickName") {
                    self.nickName = dict["NickName"] as! String
                }
                if dict.keys.contains("Role") {
                    var model = QueryWorkspaceUserListResponseBody.Result.Data.Role()
                    model.fromMap(dict["Role"] as! [String: Any])
                    self.role = model
                }
                if dict.keys.contains("UserId") {
                    self.userId = dict["UserId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Data") {
                var tmp : [QueryWorkspaceUserListResponseBody.Result.Data] = []
                for v in dict["Data"] as! [Any] {
                    var model = QueryWorkspaceUserListResponseBody.Result.Data()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.data = tmp
            }
            if dict.keys.contains("PageNum") {
                self.pageNum = dict["PageNum"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalNum") {
                self.totalNum = dict["TotalNum"] as! Int32
            }
            if dict.keys.contains("TotalPages") {
                self.totalPages = dict["TotalPages"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = QueryWorkspaceUserListResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryWorkspaceUserListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationId") {
            self.applicationId = dict["ApplicationId"] as! String
        }
        if dict.keys.contains("HandleReason") {
            self.handleReason = dict["HandleReason"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ResultCallbackResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("WorksId") {
            self.worksId = dict["WorksId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SaveFavoritesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CubeId") {
            self.cubeId = dict["CubeId"] as! String
        }
        if dict.keys.contains("MissHitPolicy") {
            self.missHitPolicy = dict["MissHitPolicy"] as! String
        }
        if dict.keys.contains("RuleType") {
            self.ruleType = dict["RuleType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SetDataLevelPermissionExtraConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RuleModel") {
            self.ruleModel = dict["RuleModel"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SetDataLevelPermissionRuleConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("WhiteListModel") {
            self.whiteListModel = dict["WhiteListModel"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SetDataLevelPermissionWhiteListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OriginUserId") {
            self.originUserId = dict["OriginUserId"] as! String
        }
        if dict.keys.contains("TargetUserIds") {
            self.targetUserIds = dict["TargetUserIds"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SmartqAuthTransferResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SmartqAuthorizeRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExpireDay") {
            self.expireDay = dict["ExpireDay"] as! String
        }
        if dict.keys.contains("LlmCubeThemes") {
            self.llmCubeThemes = dict["LlmCubeThemes"] as! String
        }
        if dict.keys.contains("LlmCubes") {
            self.llmCubes = dict["LlmCubes"] as! String
        }
        if dict.keys.contains("OperationType") {
            self.operationType = dict["OperationType"] as! Int32
        }
        if dict.keys.contains("UserIds") {
            self.userIds = dict["UserIds"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DetailMessage") {
                self.detailMessage = dict["DetailMessage"] as! String
            }
            if dict.keys.contains("LlmCube") {
                self.llmCube = dict["LlmCube"] as! String
            }
            if dict.keys.contains("LlmCubeTheme") {
                self.llmCubeTheme = dict["LlmCubeTheme"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var tmp : [SmartqAuthorizeResponseBody.Result] = []
            for v in dict["Result"] as! [Any] {
                var model = SmartqAuthorizeResponseBody.Result()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.result = tmp
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SmartqAuthorizeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SmartqQueryAbilityRequest : Tea.TeaModel {
    public var cubeId: String?

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
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.userQuestion != nil {
            map["UserQuestion"] = self.userQuestion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CubeId") {
            self.cubeId = dict["CubeId"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("UserQuestion") {
            self.userQuestion = dict["UserQuestion"] as! String
        }
    }
}

public class SmartqQueryAbilityResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class MetaType : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Row") {
                    self.row = dict["Row"] as! [String]
                }
            }
        }
        public var chartType: String?

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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ChartType") {
                self.chartType = dict["ChartType"] as! String
            }
            if dict.keys.contains("MetaType") {
                var tmp : [SmartqQueryAbilityResponseBody.Result.MetaType] = []
                for v in dict["MetaType"] as! [Any] {
                    var model = SmartqQueryAbilityResponseBody.Result.MetaType()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.metaType = tmp
            }
            if dict.keys.contains("Values") {
                var tmp : [SmartqQueryAbilityResponseBody.Result.Values] = []
                for v in dict["Values"] as! [Any] {
                    var model = SmartqQueryAbilityResponseBody.Result.Values()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = SmartqQueryAbilityResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SmartqQueryAbilityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CubeId") {
            self.cubeId = dict["CubeId"] as! String
        }
        if dict.keys.contains("IsOpen") {
            self.isOpen = dict["IsOpen"] as! Int32
        }
        if dict.keys.contains("RuleType") {
            self.ruleType = dict["RuleType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateDataLevelPermissionStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ThirdPartAuthFlag") {
            self.thirdPartAuthFlag = dict["ThirdPartAuthFlag"] as! Bool
        }
        if dict.keys.contains("WorksId") {
            self.worksId = dict["WorksId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Int32
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateEmbeddedStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ticket") {
            self.ticket = dict["Ticket"] as! String
        }
        if dict.keys.contains("TicketNum") {
            self.ticketNum = dict["TicketNum"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateTicketNumResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdminUser") {
            self.adminUser = dict["AdminUser"] as! Bool
        }
        if dict.keys.contains("AuthAdminUser") {
            self.authAdminUser = dict["AuthAdminUser"] as! Bool
        }
        if dict.keys.contains("IsDeleted") {
            self.isDeleted = dict["IsDeleted"] as! Bool
        }
        if dict.keys.contains("NickName") {
            self.nickName = dict["NickName"] as! String
        }
        if dict.keys.contains("RoleIds") {
            self.roleIds = dict["RoleIds"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("UserType") {
            self.userType = dict["UserType"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserGroupDescription") {
            self.userGroupDescription = dict["UserGroupDescription"] as! String
        }
        if dict.keys.contains("UserGroupId") {
            self.userGroupId = dict["UserGroupId"] as! String
        }
        if dict.keys.contains("UserGroupName") {
            self.userGroupName = dict["UserGroupName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateUserGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TagDescription") {
            self.tagDescription = dict["TagDescription"] as! String
        }
        if dict.keys.contains("TagId") {
            self.tagId = dict["TagId"] as! String
        }
        if dict.keys.contains("TagName") {
            self.tagName = dict["TagName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateUserTagMetaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TagId") {
            self.tagId = dict["TagId"] as! String
        }
        if dict.keys.contains("TagValue") {
            self.tagValue = dict["TagValue"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateUserTagValueResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RoleId") {
            self.roleId = dict["RoleId"] as! Int64
        }
        if dict.keys.contains("RoleIds") {
            self.roleIds = dict["RoleIds"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateWorkspaceUserRoleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RoleId") {
            self.roleId = dict["RoleId"] as! Int64
        }
        if dict.keys.contains("UserIds") {
            self.userIds = dict["UserIds"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Failure") {
                self.failure = dict["Failure"] as! Int32
            }
            if dict.keys.contains("FailureDetail") {
                self.failureDetail = dict["FailureDetail"] as! [String: Any]
            }
            if dict.keys.contains("Success") {
                self.success = dict["Success"] as! Int32
            }
            if dict.keys.contains("Total") {
                self.total = dict["Total"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = UpdateWorkspaceUsersRoleResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateWorkspaceUsersRoleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = WithdrawAllUserGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
