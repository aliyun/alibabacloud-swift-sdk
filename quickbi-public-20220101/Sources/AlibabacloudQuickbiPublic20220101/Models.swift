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
        if dict.keys.contains("AddUserModel") && dict["AddUserModel"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("CubeId") && dict["CubeId"] != nil {
            self.cubeId = dict["CubeId"] as! String
        }
        if dict.keys.contains("OperateType") && dict["OperateType"] != nil {
            self.operateType = dict["OperateType"] as! String
        }
        if dict.keys.contains("RuleType") && dict["RuleType"] != nil {
            self.ruleType = dict["RuleType"] as! String
        }
        if dict.keys.contains("TargetIds") && dict["TargetIds"] != nil {
            self.targetIds = dict["TargetIds"] as! String
        }
        if dict.keys.contains("TargetType") && dict["TargetType"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("AuthPoint") && dict["AuthPoint"] != nil {
            self.authPoint = dict["AuthPoint"] as! Int32
        }
        if dict.keys.contains("ExpireDate") && dict["ExpireDate"] != nil {
            self.expireDate = dict["ExpireDate"] as! Int64
        }
        if dict.keys.contains("ShareToId") && dict["ShareToId"] != nil {
            self.shareToId = dict["ShareToId"] as! String
        }
        if dict.keys.contains("ShareToType") && dict["ShareToType"] != nil {
            self.shareToType = dict["ShareToType"] as! Int32
        }
        if dict.keys.contains("WorksId") && dict["WorksId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
            var model = AddShareReportResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddUserRequest : Tea.TeaModel {
    public var accountName: String?

    public var adminUser: Bool?

    public var authAdminUser: Bool?

    public var nickName: String?

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
        if self.userType != nil {
            map["UserType"] = self.userType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountName") && dict["AccountName"] != nil {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("AdminUser") && dict["AdminUser"] != nil {
            self.adminUser = dict["AdminUser"] as! Bool
        }
        if dict.keys.contains("AuthAdminUser") && dict["AuthAdminUser"] != nil {
            self.authAdminUser = dict["AuthAdminUser"] as! Bool
        }
        if dict.keys.contains("NickName") && dict["NickName"] != nil {
            self.nickName = dict["NickName"] as! String
        }
        if dict.keys.contains("UserType") && dict["UserType"] != nil {
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
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.userType != nil {
                map["UserType"] = self.userType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountName") && dict["AccountName"] != nil {
                self.accountName = dict["AccountName"] as! String
            }
            if dict.keys.contains("AdminUser") && dict["AdminUser"] != nil {
                self.adminUser = dict["AdminUser"] as! Bool
            }
            if dict.keys.contains("AuthAdminUser") && dict["AuthAdminUser"] != nil {
                self.authAdminUser = dict["AuthAdminUser"] as! Bool
            }
            if dict.keys.contains("NickName") && dict["NickName"] != nil {
                self.nickName = dict["NickName"] as! String
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
            }
            if dict.keys.contains("UserType") && dict["UserType"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = AddUserResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
            self.userGroupId = dict["UserGroupId"] as! String
        }
        if dict.keys.contains("UserIdList") && dict["UserIdList"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("UserGroupIds") && dict["UserGroupIds"] != nil {
            self.userGroupIds = dict["UserGroupIds"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("TagDescription") && dict["TagDescription"] != nil {
            self.tagDescription = dict["TagDescription"] as! String
        }
        if dict.keys.contains("TagName") && dict["TagName"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("RoleId") && dict["RoleId"] != nil {
            self.roleId = dict["RoleId"] as! Int64
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("RoleId") && dict["RoleId"] != nil {
            self.roleId = dict["RoleId"] as! Int64
        }
        if dict.keys.contains("UserIds") && dict["UserIds"] != nil {
            self.userIds = dict["UserIds"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
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
            if dict.keys.contains("Failure") && dict["Failure"] != nil {
                self.failure = dict["Failure"] as! Int32
            }
            if dict.keys.contains("FailureDetail") && dict["FailureDetail"] != nil {
                self.failureDetail = dict["FailureDetail"] as! [String: Any]
            }
            if dict.keys.contains("Success") && dict["Success"] != nil {
                self.success = dict["Success"] as! Int32
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = AddWorkspaceUsersResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("CubeId") && dict["CubeId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("AuthPointsValue") && dict["AuthPointsValue"] != nil {
            self.authPointsValue = dict["AuthPointsValue"] as! Int32
        }
        if dict.keys.contains("DataPortalId") && dict["DataPortalId"] != nil {
            self.dataPortalId = dict["DataPortalId"] as! String
        }
        if dict.keys.contains("MenuIds") && dict["MenuIds"] != nil {
            self.menuIds = dict["MenuIds"] as! String
        }
        if dict.keys.contains("UserGroupIds") && dict["UserGroupIds"] != nil {
            self.userGroupIds = dict["UserGroupIds"] as! String
        }
        if dict.keys.contains("UserIds") && dict["UserIds"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! Int32
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("FeishuUsers") && dict["FeishuUsers"] != nil {
            self.feishuUsers = dict["FeishuUsers"] as! String
        }
        if dict.keys.contains("IsAdmin") && dict["IsAdmin"] != nil {
            self.isAdmin = dict["IsAdmin"] as! Bool
        }
        if dict.keys.contains("IsAuthAdmin") && dict["IsAuthAdmin"] != nil {
            self.isAuthAdmin = dict["IsAuthAdmin"] as! Bool
        }
        if dict.keys.contains("UserGroupIds") && dict["UserGroupIds"] != nil {
            self.userGroupIds = dict["UserGroupIds"] as! String
        }
        if dict.keys.contains("UserType") && dict["UserType"] != nil {
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
                    if dict.keys.contains("Code") && dict["Code"] != nil {
                        self.code = dict["Code"] as! String
                    }
                    if dict.keys.contains("CodeDesc") && dict["CodeDesc"] != nil {
                        self.codeDesc = dict["CodeDesc"] as! String
                    }
                    if dict.keys.contains("Input") && dict["Input"] != nil {
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
                if dict.keys.contains("FailInfos") && dict["FailInfos"] != nil {
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
            if dict.keys.contains("FailCount") && dict["FailCount"] != nil {
                self.failCount = dict["FailCount"] as! Int32
            }
            if dict.keys.contains("FailResults") && dict["FailResults"] != nil {
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
            if dict.keys.contains("OkCount") && dict["OkCount"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = BatchAddFeishuUsersResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("DataPortalId") && dict["DataPortalId"] != nil {
            self.dataPortalId = dict["DataPortalId"] as! String
        }
        if dict.keys.contains("MenuIds") && dict["MenuIds"] != nil {
            self.menuIds = dict["MenuIds"] as! String
        }
        if dict.keys.contains("UserGroupIds") && dict["UserGroupIds"] != nil {
            self.userGroupIds = dict["UserGroupIds"] as! String
        }
        if dict.keys.contains("UserIds") && dict["UserIds"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! Int32
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("WorksId") && dict["WorksId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("ReportId") && dict["ReportId"] != nil {
            self.reportId = dict["ReportId"] as! String
        }
        if dict.keys.contains("ShareToIds") && dict["ShareToIds"] != nil {
            self.shareToIds = dict["ShareToIds"] as! String
        }
        if dict.keys.contains("ShareToType") && dict["ShareToType"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("DataPortalId") && dict["DataPortalId"] != nil {
            self.dataPortalId = dict["DataPortalId"] as! String
        }
        if dict.keys.contains("MenuIds") && dict["MenuIds"] != nil {
            self.menuIds = dict["MenuIds"] as! String
        }
        if dict.keys.contains("ShowOnlyWithAccess") && dict["ShowOnlyWithAccess"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! Int32
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("WorksId") && dict["WorksId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("AccountName") && dict["AccountName"] != nil {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("AccountType") && dict["AccountType"] != nil {
            self.accountType = dict["AccountType"] as! Int32
        }
        if dict.keys.contains("CmptId") && dict["CmptId"] != nil {
            self.cmptId = dict["CmptId"] as! String
        }
        if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
            self.expireTime = dict["ExpireTime"] as! Int32
        }
        if dict.keys.contains("GlobalParam") && dict["GlobalParam"] != nil {
            self.globalParam = dict["GlobalParam"] as! String
        }
        if dict.keys.contains("TicketNum") && dict["TicketNum"] != nil {
            self.ticketNum = dict["TicketNum"] as! Int32
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("WatermarkParam") && dict["WatermarkParam"] != nil {
            self.watermarkParam = dict["WatermarkParam"] as! String
        }
        if dict.keys.contains("WorksId") && dict["WorksId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
            var model = CreateTicketResponseBody()
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
        if dict.keys.contains("ParentUserGroupId") && dict["ParentUserGroupId"] != nil {
            self.parentUserGroupId = dict["ParentUserGroupId"] as! String
        }
        if dict.keys.contains("UserGroupDescription") && dict["UserGroupDescription"] != nil {
            self.userGroupDescription = dict["UserGroupDescription"] as! String
        }
        if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
            self.userGroupId = dict["UserGroupId"] as! String
        }
        if dict.keys.contains("UserGroupName") && dict["UserGroupName"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
            var model = CreateUserGroupResponseBody()
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
        if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
            self.expireTime = dict["ExpireTime"] as! Int32
        }
        if dict.keys.contains("Ticket") && dict["Ticket"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("DeleteUserModel") && dict["DeleteUserModel"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("CubeId") && dict["CubeId"] != nil {
            self.cubeId = dict["CubeId"] as! String
        }
        if dict.keys.contains("RuleId") && dict["RuleId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("Ticket") && dict["Ticket"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("TransferUserId") && dict["TransferUserId"] != nil {
            self.transferUserId = dict["TransferUserId"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
            self.userGroupId = dict["UserGroupId"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("UserGroupIds") && dict["UserGroupIds"] != nil {
            self.userGroupIds = dict["UserGroupIds"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("TagId") && dict["TagId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
            var model = DeleteUserTagMetaResponseBody()
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
        if dict.keys.contains("Keyword") && dict["Keyword"] != nil {
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
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreateUser") && dict["CreateUser"] != nil {
                self.createUser = dict["CreateUser"] as! String
            }
            if dict.keys.contains("IdentifiedPath") && dict["IdentifiedPath"] != nil {
                self.identifiedPath = dict["IdentifiedPath"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("ModifyUser") && dict["ModifyUser"] != nil {
                self.modifyUser = dict["ModifyUser"] as! String
            }
            if dict.keys.contains("ParentUsergroupId") && dict["ParentUsergroupId"] != nil {
                self.parentUsergroupId = dict["ParentUsergroupId"] as! String
            }
            if dict.keys.contains("UsergroupDesc") && dict["UsergroupDesc"] != nil {
                self.usergroupDesc = dict["UsergroupDesc"] as! String
            }
            if dict.keys.contains("UsergroupId") && dict["UsergroupId"] != nil {
                self.usergroupId = dict["UsergroupId"] as! String
            }
            if dict.keys.contains("UsergroupName") && dict["UsergroupName"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
            var model = GetUserGroupInfoResponseBody()
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
        if dict.keys.contains("KeyWord") && dict["KeyWord"] != nil {
            self.keyWord = dict["KeyWord"] as! String
        }
        if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
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
                if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
                    self.apiId = dict["ApiId"] as! String
                }
                if dict.keys.contains("Body") && dict["Body"] != nil {
                    self.body = dict["Body"] as! String
                }
                if dict.keys.contains("DataSize") && dict["DataSize"] != nil {
                    self.dataSize = dict["DataSize"] as! Double
                }
                if dict.keys.contains("DateUpdateTime") && dict["DateUpdateTime"] != nil {
                    self.dateUpdateTime = dict["DateUpdateTime"] as! String
                }
                if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                    self.gmtModified = dict["GmtModified"] as! String
                }
                if dict.keys.contains("JobId") && dict["JobId"] != nil {
                    self.jobId = dict["JobId"] as! String
                }
                if dict.keys.contains("Parameters") && dict["Parameters"] != nil {
                    self.parameters = dict["Parameters"] as! String
                }
                if dict.keys.contains("ShowName") && dict["ShowName"] != nil {
                    self.showName = dict["ShowName"] as! String
                }
                if dict.keys.contains("StatusType") && dict["StatusType"] != nil {
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
            if dict.keys.contains("Data") && dict["Data"] != nil {
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
            if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
                self.pageNum = dict["PageNum"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalNum") && dict["TotalNum"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = ListApiDatasourceResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("UserGroupIds") && dict["UserGroupIds"] != nil {
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
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("CreateUser") && dict["CreateUser"] != nil {
                    self.createUser = dict["CreateUser"] as! String
                }
                if dict.keys.contains("IdentifiedPath") && dict["IdentifiedPath"] != nil {
                    self.identifiedPath = dict["IdentifiedPath"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("ModifyUser") && dict["ModifyUser"] != nil {
                    self.modifyUser = dict["ModifyUser"] as! String
                }
                if dict.keys.contains("ParentUsergroupId") && dict["ParentUsergroupId"] != nil {
                    self.parentUsergroupId = dict["ParentUsergroupId"] as! String
                }
                if dict.keys.contains("UsergroupDesc") && dict["UsergroupDesc"] != nil {
                    self.usergroupDesc = dict["UsergroupDesc"] as! String
                }
                if dict.keys.contains("UsergroupId") && dict["UsergroupId"] != nil {
                    self.usergroupId = dict["UsergroupId"] as! String
                }
                if dict.keys.contains("UsergroupName") && dict["UsergroupName"] != nil {
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
            if dict.keys.contains("FailedUserGroupIds") && dict["FailedUserGroupIds"] != nil {
                self.failedUserGroupIds = dict["FailedUserGroupIds"] as! [String]
            }
            if dict.keys.contains("UserGroupModels") && dict["UserGroupModels"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = ListByUserGroupIdResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
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
            if dict.keys.contains("FavoriteId") && dict["FavoriteId"] != nil {
                self.favoriteId = dict["FavoriteId"] as! Int32
            }
            if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
                self.ownerId = dict["OwnerId"] as! String
            }
            if dict.keys.contains("WorksId") && dict["WorksId"] != nil {
                self.worksId = dict["WorksId"] as! String
            }
            if dict.keys.contains("WorksName") && dict["WorksName"] != nil {
                self.worksName = dict["WorksName"] as! String
            }
            if dict.keys.contains("WorksType") && dict["WorksType"] != nil {
                self.worksType = dict["WorksType"] as! String
            }
            if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
                self.workspaceId = dict["WorkspaceId"] as! String
            }
            if dict.keys.contains("WorkspaceName") && dict["WorkspaceName"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("CubeId") && dict["CubeId"] != nil {
            self.cubeId = dict["CubeId"] as! String
        }
        if dict.keys.contains("RuleType") && dict["RuleType"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("CubeId") && dict["CubeId"] != nil {
            self.cubeId = dict["CubeId"] as! String
        }
        if dict.keys.contains("RuleType") && dict["RuleType"] != nil {
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
                if dict.keys.contains("UserGroups") && dict["UserGroups"] != nil {
                    self.userGroups = dict["UserGroups"] as! [String]
                }
                if dict.keys.contains("Users") && dict["Users"] != nil {
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
            if dict.keys.contains("CubeId") && dict["CubeId"] != nil {
                self.cubeId = dict["CubeId"] as! String
            }
            if dict.keys.contains("RuleType") && dict["RuleType"] != nil {
                self.ruleType = dict["RuleType"] as! String
            }
            if dict.keys.contains("UsersModel") && dict["UsersModel"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = ListDataLevelPermissionWhiteListResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
            var model = ListDataLevelPermissionWhiteListResponseBody()
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
        if dict.keys.contains("Keyword") && dict["Keyword"] != nil {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("TreeType") && dict["TreeType"] != nil {
            self.treeType = dict["TreeType"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class ListFavoriteReportsResponseBody : Tea.TeaModel {
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
                if dict.keys.contains("Favorite") && dict["Favorite"] != nil {
                    self.favorite = dict["Favorite"] as! Bool
                }
                if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                    self.gmtModified = dict["GmtModified"] as! String
                }
                if dict.keys.contains("HasEditAuth") && dict["HasEditAuth"] != nil {
                    self.hasEditAuth = dict["HasEditAuth"] as! Bool
                }
                if dict.keys.contains("HasViewAuth") && dict["HasViewAuth"] != nil {
                    self.hasViewAuth = dict["HasViewAuth"] as! Bool
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("OwnerName") && dict["OwnerName"] != nil {
                    self.ownerName = dict["OwnerName"] as! String
                }
                if dict.keys.contains("OwnerNum") && dict["OwnerNum"] != nil {
                    self.ownerNum = dict["OwnerNum"] as! String
                }
                if dict.keys.contains("PublishStatus") && dict["PublishStatus"] != nil {
                    self.publishStatus = dict["PublishStatus"] as! Int32
                }
                if dict.keys.contains("TreeId") && dict["TreeId"] != nil {
                    self.treeId = dict["TreeId"] as! String
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
                    self.workspaceId = dict["WorkspaceId"] as! String
                }
                if dict.keys.contains("WorkspaceName") && dict["WorkspaceName"] != nil {
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
            if dict.keys.contains("Data") && dict["Data"] != nil {
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
            if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
                self.pageNum = dict["PageNum"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalNum") && dict["TotalNum"] != nil {
                self.totalNum = dict["TotalNum"] as! Int32
            }
            if dict.keys.contains("TotalPages") && dict["TotalPages"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = ListFavoriteReportsResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
            var model = ListFavoriteReportsResponseBody()
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
        if dict.keys.contains("DataPortalId") && dict["DataPortalId"] != nil {
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
                if dict.keys.contains("ReceiverId") && dict["ReceiverId"] != nil {
                    self.receiverId = dict["ReceiverId"] as! String
                }
                if dict.keys.contains("ReceiverType") && dict["ReceiverType"] != nil {
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
            if dict.keys.contains("MenuId") && dict["MenuId"] != nil {
                self.menuId = dict["MenuId"] as! String
            }
            if dict.keys.contains("Receivers") && dict["Receivers"] != nil {
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
            if dict.keys.contains("ShowOnlyWithAccess") && dict["ShowOnlyWithAccess"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("DataPortalId") && dict["DataPortalId"] != nil {
            self.dataPortalId = dict["DataPortalId"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("Keyword") && dict["Keyword"] != nil {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("OffsetDay") && dict["OffsetDay"] != nil {
            self.offsetDay = dict["OffsetDay"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("QueryMode") && dict["QueryMode"] != nil {
            self.queryMode = dict["QueryMode"] as! String
        }
        if dict.keys.contains("TreeType") && dict["TreeType"] != nil {
            self.treeType = dict["TreeType"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
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
                if dict.keys.contains("Favorite") && dict["Favorite"] != nil {
                    self.favorite = dict["Favorite"] as! Bool
                }
                if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                    self.gmtModified = dict["GmtModified"] as! String
                }
                if dict.keys.contains("HasEditAuth") && dict["HasEditAuth"] != nil {
                    self.hasEditAuth = dict["HasEditAuth"] as! Bool
                }
                if dict.keys.contains("HasViewAuth") && dict["HasViewAuth"] != nil {
                    self.hasViewAuth = dict["HasViewAuth"] as! Bool
                }
                if dict.keys.contains("LatestViewTime") && dict["LatestViewTime"] != nil {
                    self.latestViewTime = dict["LatestViewTime"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("OwnerName") && dict["OwnerName"] != nil {
                    self.ownerName = dict["OwnerName"] as! String
                }
                if dict.keys.contains("OwnerNum") && dict["OwnerNum"] != nil {
                    self.ownerNum = dict["OwnerNum"] as! String
                }
                if dict.keys.contains("PublishStatus") && dict["PublishStatus"] != nil {
                    self.publishStatus = dict["PublishStatus"] as! Int32
                }
                if dict.keys.contains("TreeId") && dict["TreeId"] != nil {
                    self.treeId = dict["TreeId"] as! String
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("ViewCount") && dict["ViewCount"] != nil {
                    self.viewCount = dict["ViewCount"] as! Int64
                }
                if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
                    self.workspaceId = dict["WorkspaceId"] as! String
                }
                if dict.keys.contains("WorkspaceName") && dict["WorkspaceName"] != nil {
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
            if dict.keys.contains("Attention") && dict["Attention"] != nil {
                self.attention = dict["Attention"] as! String
            }
            if dict.keys.contains("Data") && dict["Data"] != nil {
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
            if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
                self.pageNum = dict["PageNum"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalNum") && dict["TotalNum"] != nil {
                self.totalNum = dict["TotalNum"] as! Int32
            }
            if dict.keys.contains("TotalPages") && dict["TotalPages"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = ListRecentViewReportsResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("Keyword") && dict["Keyword"] != nil {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("TreeType") && dict["TreeType"] != nil {
            self.treeType = dict["TreeType"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
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
                if dict.keys.contains("Favorite") && dict["Favorite"] != nil {
                    self.favorite = dict["Favorite"] as! Bool
                }
                if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                    self.gmtModified = dict["GmtModified"] as! String
                }
                if dict.keys.contains("HasEditAuth") && dict["HasEditAuth"] != nil {
                    self.hasEditAuth = dict["HasEditAuth"] as! Bool
                }
                if dict.keys.contains("HasViewAuth") && dict["HasViewAuth"] != nil {
                    self.hasViewAuth = dict["HasViewAuth"] as! Bool
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("OwnerName") && dict["OwnerName"] != nil {
                    self.ownerName = dict["OwnerName"] as! String
                }
                if dict.keys.contains("OwnerNum") && dict["OwnerNum"] != nil {
                    self.ownerNum = dict["OwnerNum"] as! String
                }
                if dict.keys.contains("PublishStatus") && dict["PublishStatus"] != nil {
                    self.publishStatus = dict["PublishStatus"] as! Int32
                }
                if dict.keys.contains("TreeId") && dict["TreeId"] != nil {
                    self.treeId = dict["TreeId"] as! String
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
                    self.workspaceId = dict["WorkspaceId"] as! String
                }
                if dict.keys.contains("WorkspaceName") && dict["WorkspaceName"] != nil {
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
            if dict.keys.contains("Data") && dict["Data"] != nil {
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
            if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
                self.pageNum = dict["PageNum"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalNum") && dict["TotalNum"] != nil {
                self.totalNum = dict["TotalNum"] as! Int32
            }
            if dict.keys.contains("TotalPages") && dict["TotalPages"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = ListSharedReportsResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
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
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreateUser") && dict["CreateUser"] != nil {
                self.createUser = dict["CreateUser"] as! String
            }
            if dict.keys.contains("IdentifiedPath") && dict["IdentifiedPath"] != nil {
                self.identifiedPath = dict["IdentifiedPath"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("ModifyUser") && dict["ModifyUser"] != nil {
                self.modifyUser = dict["ModifyUser"] as! String
            }
            if dict.keys.contains("ParentUsergroupId") && dict["ParentUsergroupId"] != nil {
                self.parentUsergroupId = dict["ParentUsergroupId"] as! String
            }
            if dict.keys.contains("UsergroupDesc") && dict["UsergroupDesc"] != nil {
                self.usergroupDesc = dict["UsergroupDesc"] as! String
            }
            if dict.keys.contains("UsergroupId") && dict["UsergroupId"] != nil {
                self.usergroupId = dict["UsergroupId"] as! String
            }
            if dict.keys.contains("UsergroupName") && dict["UsergroupName"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
            var model = ListUserGroupsByUserIdResponseBody()
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
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("Parameters") && dict["Parameters"] != nil {
            self.parameters = dict["Parameters"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
            var model = ModifyApiDatasourceParametersResponseBody()
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
        if dict.keys.contains("CostTimeAvgMin") && dict["CostTimeAvgMin"] != nil {
            self.costTimeAvgMin = dict["CostTimeAvgMin"] as! Int32
        }
        if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("QueryType") && dict["QueryType"] != nil {
            self.queryType = dict["QueryType"] as! String
        }
        if dict.keys.contains("ReportId") && dict["ReportId"] != nil {
            self.reportId = dict["ReportId"] as! String
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
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
            if dict.keys.contains("CacheCostTimeAvg") && dict["CacheCostTimeAvg"] != nil {
                self.cacheCostTimeAvg = dict["CacheCostTimeAvg"] as! Double
            }
            if dict.keys.contains("CacheQueryCount") && dict["CacheQueryCount"] != nil {
                self.cacheQueryCount = dict["CacheQueryCount"] as! Int32
            }
            if dict.keys.contains("ComponentId") && dict["ComponentId"] != nil {
                self.componentId = dict["ComponentId"] as! String
            }
            if dict.keys.contains("ComponentName") && dict["ComponentName"] != nil {
                self.componentName = dict["ComponentName"] as! String
            }
            if dict.keys.contains("CostTimeAvg") && dict["CostTimeAvg"] != nil {
                self.costTimeAvg = dict["CostTimeAvg"] as! Double
            }
            if dict.keys.contains("QueryCount") && dict["QueryCount"] != nil {
                self.queryCount = dict["QueryCount"] as! Int32
            }
            if dict.keys.contains("QueryCountAvg") && dict["QueryCountAvg"] != nil {
                self.queryCountAvg = dict["QueryCountAvg"] as! Double
            }
            if dict.keys.contains("QueryOverFivePercentNum") && dict["QueryOverFivePercentNum"] != nil {
                self.queryOverFivePercentNum = dict["QueryOverFivePercentNum"] as! Double
            }
            if dict.keys.contains("QueryOverFiveSecPercent") && dict["QueryOverFiveSecPercent"] != nil {
                self.queryOverFiveSecPercent = dict["QueryOverFiveSecPercent"] as! String
            }
            if dict.keys.contains("QueryOverTenSecPercent") && dict["QueryOverTenSecPercent"] != nil {
                self.queryOverTenSecPercent = dict["QueryOverTenSecPercent"] as! String
            }
            if dict.keys.contains("QueryOverTenSecPercentNum") && dict["QueryOverTenSecPercentNum"] != nil {
                self.queryOverTenSecPercentNum = dict["QueryOverTenSecPercentNum"] as! Double
            }
            if dict.keys.contains("QueryTimeoutCount") && dict["QueryTimeoutCount"] != nil {
                self.queryTimeoutCount = dict["QueryTimeoutCount"] as! Int32
            }
            if dict.keys.contains("QueryTimeoutCountPercent") && dict["QueryTimeoutCountPercent"] != nil {
                self.queryTimeoutCountPercent = dict["QueryTimeoutCountPercent"] as! Double
            }
            if dict.keys.contains("QuickIndexCostTimeAvg") && dict["QuickIndexCostTimeAvg"] != nil {
                self.quickIndexCostTimeAvg = dict["QuickIndexCostTimeAvg"] as! Double
            }
            if dict.keys.contains("QuickIndexQueryCount") && dict["QuickIndexQueryCount"] != nil {
                self.quickIndexQueryCount = dict["QuickIndexQueryCount"] as! Int32
            }
            if dict.keys.contains("RepeatQueryPercent") && dict["RepeatQueryPercent"] != nil {
                self.repeatQueryPercent = dict["RepeatQueryPercent"] as! String
            }
            if dict.keys.contains("RepeatQueryPercentNum") && dict["RepeatQueryPercentNum"] != nil {
                self.repeatQueryPercentNum = dict["RepeatQueryPercentNum"] as! Double
            }
            if dict.keys.contains("RepeatSqlQueryCount") && dict["RepeatSqlQueryCount"] != nil {
                self.repeatSqlQueryCount = dict["RepeatSqlQueryCount"] as! Int32
            }
            if dict.keys.contains("RepeatSqlQueryPercent") && dict["RepeatSqlQueryPercent"] != nil {
                self.repeatSqlQueryPercent = dict["RepeatSqlQueryPercent"] as! String
            }
            if dict.keys.contains("ReportId") && dict["ReportId"] != nil {
                self.reportId = dict["ReportId"] as! String
            }
            if dict.keys.contains("ReportName") && dict["ReportName"] != nil {
                self.reportName = dict["ReportName"] as! String
            }
            if dict.keys.contains("ReportType") && dict["ReportType"] != nil {
                self.reportType = dict["ReportType"] as! String
            }
            if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
                self.workspaceId = dict["WorkspaceId"] as! String
            }
            if dict.keys.contains("WorkspaceName") && dict["WorkspaceName"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
            var model = QueryComponentPerformanceResponseBody()
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
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
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
                if dict.keys.contains("CacheCostTimeAvg") && dict["CacheCostTimeAvg"] != nil {
                    self.cacheCostTimeAvg = dict["CacheCostTimeAvg"] as! Double
                }
                if dict.keys.contains("CacheQueryCount") && dict["CacheQueryCount"] != nil {
                    self.cacheQueryCount = dict["CacheQueryCount"] as! Int32
                }
                if dict.keys.contains("CostTimeAvg") && dict["CostTimeAvg"] != nil {
                    self.costTimeAvg = dict["CostTimeAvg"] as! Double
                }
                if dict.keys.contains("CubeId") && dict["CubeId"] != nil {
                    self.cubeId = dict["CubeId"] as! String
                }
                if dict.keys.contains("CubeName") && dict["CubeName"] != nil {
                    self.cubeName = dict["CubeName"] as! String
                }
                if dict.keys.contains("QueryCount") && dict["QueryCount"] != nil {
                    self.queryCount = dict["QueryCount"] as! Int32
                }
                if dict.keys.contains("QueryCountAvg") && dict["QueryCountAvg"] != nil {
                    self.queryCountAvg = dict["QueryCountAvg"] as! Double
                }
                if dict.keys.contains("QueryOverFivePercentNum") && dict["QueryOverFivePercentNum"] != nil {
                    self.queryOverFivePercentNum = dict["QueryOverFivePercentNum"] as! Double
                }
                if dict.keys.contains("QueryOverFiveSecPercent") && dict["QueryOverFiveSecPercent"] != nil {
                    self.queryOverFiveSecPercent = dict["QueryOverFiveSecPercent"] as! String
                }
                if dict.keys.contains("QueryOverTenSecPercent") && dict["QueryOverTenSecPercent"] != nil {
                    self.queryOverTenSecPercent = dict["QueryOverTenSecPercent"] as! String
                }
                if dict.keys.contains("QueryOverTenSecPercentNum") && dict["QueryOverTenSecPercentNum"] != nil {
                    self.queryOverTenSecPercentNum = dict["QueryOverTenSecPercentNum"] as! Double
                }
                if dict.keys.contains("QueryTimeoutCount") && dict["QueryTimeoutCount"] != nil {
                    self.queryTimeoutCount = dict["QueryTimeoutCount"] as! Int32
                }
                if dict.keys.contains("QueryTimeoutCountPercent") && dict["QueryTimeoutCountPercent"] != nil {
                    self.queryTimeoutCountPercent = dict["QueryTimeoutCountPercent"] as! Double
                }
                if dict.keys.contains("QuickIndexCostTimeAvg") && dict["QuickIndexCostTimeAvg"] != nil {
                    self.quickIndexCostTimeAvg = dict["QuickIndexCostTimeAvg"] as! Double
                }
                if dict.keys.contains("QuickIndexQueryCount") && dict["QuickIndexQueryCount"] != nil {
                    self.quickIndexQueryCount = dict["QuickIndexQueryCount"] as! Int32
                }
                if dict.keys.contains("RepeatQueryPercent") && dict["RepeatQueryPercent"] != nil {
                    self.repeatQueryPercent = dict["RepeatQueryPercent"] as! String
                }
                if dict.keys.contains("RepeatQueryPercentNum") && dict["RepeatQueryPercentNum"] != nil {
                    self.repeatQueryPercentNum = dict["RepeatQueryPercentNum"] as! Double
                }
                if dict.keys.contains("RepeatSqlQueryCount") && dict["RepeatSqlQueryCount"] != nil {
                    self.repeatSqlQueryCount = dict["RepeatSqlQueryCount"] as! Int32
                }
                if dict.keys.contains("RepeatSqlQueryPercent") && dict["RepeatSqlQueryPercent"] != nil {
                    self.repeatSqlQueryPercent = dict["RepeatSqlQueryPercent"] as! String
                }
                if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
                    self.workspaceId = dict["WorkspaceId"] as! String
                }
                if dict.keys.contains("WorkspaceName") && dict["WorkspaceName"] != nil {
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
            if dict.keys.contains("AdviceType") && dict["AdviceType"] != nil {
                self.adviceType = dict["AdviceType"] as! String
            }
            if dict.keys.contains("CubePerformanceDiagnoseModel") && dict["CubePerformanceDiagnoseModel"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("CostTimeAvgMin") && dict["CostTimeAvgMin"] != nil {
            self.costTimeAvgMin = dict["CostTimeAvgMin"] as! Int32
        }
        if dict.keys.contains("CubeId") && dict["CubeId"] != nil {
            self.cubeId = dict["CubeId"] as! String
        }
        if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("QueryType") && dict["QueryType"] != nil {
            self.queryType = dict["QueryType"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
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
            if dict.keys.contains("CacheCostTimeAvg") && dict["CacheCostTimeAvg"] != nil {
                self.cacheCostTimeAvg = dict["CacheCostTimeAvg"] as! Double
            }
            if dict.keys.contains("CacheQueryCount") && dict["CacheQueryCount"] != nil {
                self.cacheQueryCount = dict["CacheQueryCount"] as! Int32
            }
            if dict.keys.contains("CostTimeAvg") && dict["CostTimeAvg"] != nil {
                self.costTimeAvg = dict["CostTimeAvg"] as! Double
            }
            if dict.keys.contains("CubeId") && dict["CubeId"] != nil {
                self.cubeId = dict["CubeId"] as! String
            }
            if dict.keys.contains("CubeName") && dict["CubeName"] != nil {
                self.cubeName = dict["CubeName"] as! String
            }
            if dict.keys.contains("QueryCount") && dict["QueryCount"] != nil {
                self.queryCount = dict["QueryCount"] as! Int32
            }
            if dict.keys.contains("QueryCountAvg") && dict["QueryCountAvg"] != nil {
                self.queryCountAvg = dict["QueryCountAvg"] as! Double
            }
            if dict.keys.contains("QueryOverFivePercentNum") && dict["QueryOverFivePercentNum"] != nil {
                self.queryOverFivePercentNum = dict["QueryOverFivePercentNum"] as! Double
            }
            if dict.keys.contains("QueryOverFiveSecPercent") && dict["QueryOverFiveSecPercent"] != nil {
                self.queryOverFiveSecPercent = dict["QueryOverFiveSecPercent"] as! String
            }
            if dict.keys.contains("QueryOverTenSecPercent") && dict["QueryOverTenSecPercent"] != nil {
                self.queryOverTenSecPercent = dict["QueryOverTenSecPercent"] as! String
            }
            if dict.keys.contains("QueryOverTenSecPercentNum") && dict["QueryOverTenSecPercentNum"] != nil {
                self.queryOverTenSecPercentNum = dict["QueryOverTenSecPercentNum"] as! Double
            }
            if dict.keys.contains("QueryTimeoutCount") && dict["QueryTimeoutCount"] != nil {
                self.queryTimeoutCount = dict["QueryTimeoutCount"] as! Int32
            }
            if dict.keys.contains("QueryTimeoutCountPercent") && dict["QueryTimeoutCountPercent"] != nil {
                self.queryTimeoutCountPercent = dict["QueryTimeoutCountPercent"] as! Double
            }
            if dict.keys.contains("QuickIndexCostTimeAvg") && dict["QuickIndexCostTimeAvg"] != nil {
                self.quickIndexCostTimeAvg = dict["QuickIndexCostTimeAvg"] as! Double
            }
            if dict.keys.contains("QuickIndexQueryCount") && dict["QuickIndexQueryCount"] != nil {
                self.quickIndexQueryCount = dict["QuickIndexQueryCount"] as! Int32
            }
            if dict.keys.contains("RepeatQueryPercent") && dict["RepeatQueryPercent"] != nil {
                self.repeatQueryPercent = dict["RepeatQueryPercent"] as! String
            }
            if dict.keys.contains("RepeatQueryPercentNum") && dict["RepeatQueryPercentNum"] != nil {
                self.repeatQueryPercentNum = dict["RepeatQueryPercentNum"] as! Double
            }
            if dict.keys.contains("RepeatSqlQueryCount") && dict["RepeatSqlQueryCount"] != nil {
                self.repeatSqlQueryCount = dict["RepeatSqlQueryCount"] as! Int32
            }
            if dict.keys.contains("RepeatSqlQueryPercent") && dict["RepeatSqlQueryPercent"] != nil {
                self.repeatSqlQueryPercent = dict["RepeatSqlQueryPercent"] as! String
            }
            if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
                self.workspaceId = dict["WorkspaceId"] as! String
            }
            if dict.keys.contains("WorkspaceName") && dict["WorkspaceName"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
            var model = QueryCubePerformanceResponseBody()
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
        if dict.keys.contains("ApiId") && dict["ApiId"] != nil {
            self.apiId = dict["ApiId"] as! String
        }
        if dict.keys.contains("Conditions") && dict["Conditions"] != nil {
            self.conditions = dict["Conditions"] as! String
        }
        if dict.keys.contains("ReturnFields") && dict["ReturnFields"] != nil {
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
                if dict.keys.contains("Aggregator") && dict["Aggregator"] != nil {
                    self.aggregator = dict["Aggregator"] as! String
                }
                if dict.keys.contains("Column") && dict["Column"] != nil {
                    self.column = dict["Column"] as! String
                }
                if dict.keys.contains("DataType") && dict["DataType"] != nil {
                    self.dataType = dict["DataType"] as! String
                }
                if dict.keys.contains("Granularity") && dict["Granularity"] != nil {
                    self.granularity = dict["Granularity"] as! String
                }
                if dict.keys.contains("Label") && dict["Label"] != nil {
                    self.label = dict["Label"] as! String
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
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
            if dict.keys.contains("Headers") && dict["Headers"] != nil {
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
            if dict.keys.contains("Sql") && dict["Sql"] != nil {
                self.sql = dict["Sql"] as! String
            }
            if dict.keys.contains("Values") && dict["Values"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = QueryDataServiceResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
            var model = QueryDataServiceResponseBody()
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
        if dict.keys.contains("DatasetId") && dict["DatasetId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("DatasetId") && dict["DatasetId"] != nil {
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
                if dict.keys.contains("Caption") && dict["Caption"] != nil {
                    self.caption = dict["Caption"] as! String
                }
                if dict.keys.contains("Customsql") && dict["Customsql"] != nil {
                    self.customsql = dict["Customsql"] as! Bool
                }
                if dict.keys.contains("DatasourceId") && dict["DatasourceId"] != nil {
                    self.datasourceId = dict["DatasourceId"] as! String
                }
                if dict.keys.contains("DsType") && dict["DsType"] != nil {
                    self.dsType = dict["DsType"] as! String
                }
                if dict.keys.contains("FactTable") && dict["FactTable"] != nil {
                    self.factTable = dict["FactTable"] as! Bool
                }
                if dict.keys.contains("Sql") && dict["Sql"] != nil {
                    self.sql = dict["Sql"] as! String
                }
                if dict.keys.contains("TableName") && dict["TableName"] != nil {
                    self.tableName = dict["TableName"] as! String
                }
                if dict.keys.contains("UniqueId") && dict["UniqueId"] != nil {
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
                if dict.keys.contains("Caption") && dict["Caption"] != nil {
                    self.caption = dict["Caption"] as! String
                }
                if dict.keys.contains("DataType") && dict["DataType"] != nil {
                    self.dataType = dict["DataType"] as! String
                }
                if dict.keys.contains("DimensionType") && dict["DimensionType"] != nil {
                    self.dimensionType = dict["DimensionType"] as! String
                }
                if dict.keys.contains("Expression") && dict["Expression"] != nil {
                    self.expression = dict["Expression"] as! String
                }
                if dict.keys.contains("FactColumn") && dict["FactColumn"] != nil {
                    self.factColumn = dict["FactColumn"] as! String
                }
                if dict.keys.contains("Granularity") && dict["Granularity"] != nil {
                    self.granularity = dict["Granularity"] as! String
                }
                if dict.keys.contains("RefUid") && dict["RefUid"] != nil {
                    self.refUid = dict["RefUid"] as! String
                }
                if dict.keys.contains("TableUniqueId") && dict["TableUniqueId"] != nil {
                    self.tableUniqueId = dict["TableUniqueId"] as! String
                }
                if dict.keys.contains("Uid") && dict["Uid"] != nil {
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
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("PathId") && dict["PathId"] != nil {
                    self.pathId = dict["PathId"] as! String
                }
                if dict.keys.contains("PathName") && dict["PathName"] != nil {
                    self.pathName = dict["PathName"] as! String
                }
            }
        }
        public class MeasureList : Tea.TeaModel {
            public var caption: String?

            public var dataType: String?

            public var expression: String?

            public var factColumn: String?

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
                if dict.keys.contains("Caption") && dict["Caption"] != nil {
                    self.caption = dict["Caption"] as! String
                }
                if dict.keys.contains("DataType") && dict["DataType"] != nil {
                    self.dataType = dict["DataType"] as! String
                }
                if dict.keys.contains("Expression") && dict["Expression"] != nil {
                    self.expression = dict["Expression"] as! String
                }
                if dict.keys.contains("FactColumn") && dict["FactColumn"] != nil {
                    self.factColumn = dict["FactColumn"] as! String
                }
                if dict.keys.contains("MeasureType") && dict["MeasureType"] != nil {
                    self.measureType = dict["MeasureType"] as! String
                }
                if dict.keys.contains("TableUniqueId") && dict["TableUniqueId"] != nil {
                    self.tableUniqueId = dict["TableUniqueId"] as! String
                }
                if dict.keys.contains("Uid") && dict["Uid"] != nil {
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
            if dict.keys.contains("CubeTableList") && dict["CubeTableList"] != nil {
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
            if dict.keys.contains("CustimzeSql") && dict["CustimzeSql"] != nil {
                self.custimzeSql = dict["CustimzeSql"] as! Bool
            }
            if dict.keys.contains("DatasetId") && dict["DatasetId"] != nil {
                self.datasetId = dict["DatasetId"] as! String
            }
            if dict.keys.contains("DatasetName") && dict["DatasetName"] != nil {
                self.datasetName = dict["DatasetName"] as! String
            }
            if dict.keys.contains("DimensionList") && dict["DimensionList"] != nil {
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
            if dict.keys.contains("Directory") && dict["Directory"] != nil {
                var model = QueryDatasetInfoResponseBody.Result.Directory()
                model.fromMap(dict["Directory"] as! [String: Any])
                self.directory = model
            }
            if dict.keys.contains("DsId") && dict["DsId"] != nil {
                self.dsId = dict["DsId"] as! String
            }
            if dict.keys.contains("DsName") && dict["DsName"] != nil {
                self.dsName = dict["DsName"] as! String
            }
            if dict.keys.contains("DsType") && dict["DsType"] != nil {
                self.dsType = dict["DsType"] as! String
            }
            if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModify") && dict["GmtModify"] != nil {
                self.gmtModify = dict["GmtModify"] as! String
            }
            if dict.keys.contains("MeasureList") && dict["MeasureList"] != nil {
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
            if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
                self.ownerId = dict["OwnerId"] as! String
            }
            if dict.keys.contains("OwnerName") && dict["OwnerName"] != nil {
                self.ownerName = dict["OwnerName"] as! String
            }
            if dict.keys.contains("RowLevel") && dict["RowLevel"] != nil {
                self.rowLevel = dict["RowLevel"] as! Bool
            }
            if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
                self.workspaceId = dict["WorkspaceId"] as! String
            }
            if dict.keys.contains("WorkspaceName") && dict["WorkspaceName"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = QueryDatasetInfoResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("DirectoryId") && dict["DirectoryId"] != nil {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("Keyword") && dict["Keyword"] != nil {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("WithChildren") && dict["WithChildren"] != nil {
            self.withChildren = dict["WithChildren"] as! Bool
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
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
                    if dict.keys.contains("DsId") && dict["DsId"] != nil {
                        self.dsId = dict["DsId"] as! String
                    }
                    if dict.keys.contains("DsName") && dict["DsName"] != nil {
                        self.dsName = dict["DsName"] as! String
                    }
                    if dict.keys.contains("DsType") && dict["DsType"] != nil {
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
                    if dict.keys.contains("Id") && dict["Id"] != nil {
                        self.id = dict["Id"] as! String
                    }
                    if dict.keys.contains("Name") && dict["Name"] != nil {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("PathId") && dict["PathId"] != nil {
                        self.pathId = dict["PathId"] as! String
                    }
                    if dict.keys.contains("PathName") && dict["PathName"] != nil {
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
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("DataSource") && dict["DataSource"] != nil {
                    var model = QueryDatasetListResponseBody.Result.Data.DataSource()
                    model.fromMap(dict["DataSource"] as! [String: Any])
                    self.dataSource = model
                }
                if dict.keys.contains("DatasetId") && dict["DatasetId"] != nil {
                    self.datasetId = dict["DatasetId"] as! String
                }
                if dict.keys.contains("DatasetName") && dict["DatasetName"] != nil {
                    self.datasetName = dict["DatasetName"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Directory") && dict["Directory"] != nil {
                    var model = QueryDatasetListResponseBody.Result.Data.Directory()
                    model.fromMap(dict["Directory"] as! [String: Any])
                    self.directory = model
                }
                if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
                    self.modifyTime = dict["ModifyTime"] as! String
                }
                if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
                    self.ownerId = dict["OwnerId"] as! String
                }
                if dict.keys.contains("OwnerName") && dict["OwnerName"] != nil {
                    self.ownerName = dict["OwnerName"] as! String
                }
                if dict.keys.contains("RowLevel") && dict["RowLevel"] != nil {
                    self.rowLevel = dict["RowLevel"] as! Bool
                }
                if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
                    self.workspaceId = dict["WorkspaceId"] as! String
                }
                if dict.keys.contains("WorkspaceName") && dict["WorkspaceName"] != nil {
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
            if dict.keys.contains("Data") && dict["Data"] != nil {
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
            if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
                self.pageNum = dict["PageNum"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalNum") && dict["TotalNum"] != nil {
                self.totalNum = dict["TotalNum"] as! Int32
            }
            if dict.keys.contains("TotalPages") && dict["TotalPages"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = QueryDatasetListResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
            var model = QueryDatasetListResponseBody()
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
        if dict.keys.contains("CubeId") && dict["CubeId"] != nil {
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
            if dict.keys.contains("CubeId") && dict["CubeId"] != nil {
                self.cubeId = dict["CubeId"] as! String
            }
            if dict.keys.contains("IsOpenColumnLevelPermission") && dict["IsOpenColumnLevelPermission"] != nil {
                self.isOpenColumnLevelPermission = dict["IsOpenColumnLevelPermission"] as! Int32
            }
            if dict.keys.contains("IsOpenRowLevelPermission") && dict["IsOpenRowLevelPermission"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = QueryDatasetSwitchInfoResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
                if dict.keys.contains("DashboardOfflineQuery") && dict["DashboardOfflineQuery"] != nil {
                    self.dashboardOfflineQuery = dict["DashboardOfflineQuery"] as! Int32
                }
                if dict.keys.contains("Page") && dict["Page"] != nil {
                    self.page = dict["Page"] as! Int32
                }
                if dict.keys.contains("Report") && dict["Report"] != nil {
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
            if dict.keys.contains("Detail") && dict["Detail"] != nil {
                var model = QueryEmbeddedInfoResponseBody.Result.Detail()
                model.fromMap(dict["Detail"] as! [String: Any])
                self.detail = model
            }
            if dict.keys.contains("EmbeddedCount") && dict["EmbeddedCount"] != nil {
                self.embeddedCount = dict["EmbeddedCount"] as! Int32
            }
            if dict.keys.contains("MaxCount") && dict["MaxCount"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = QueryEmbeddedInfoResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("WorksId") && dict["WorksId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
            var model = QueryEmbeddedStatusResponseBody()
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
        if dict.keys.contains("Keyword") && dict["Keyword"] != nil {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
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
                if dict.keys.contains("AllowPublishOperation") && dict["AllowPublishOperation"] != nil {
                    self.allowPublishOperation = dict["AllowPublishOperation"] as! Bool
                }
                if dict.keys.contains("AllowShareOperation") && dict["AllowShareOperation"] != nil {
                    self.allowShareOperation = dict["AllowShareOperation"] as! Bool
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("CreateUser") && dict["CreateUser"] != nil {
                    self.createUser = dict["CreateUser"] as! String
                }
                if dict.keys.contains("CreateUserAccountName") && dict["CreateUserAccountName"] != nil {
                    self.createUserAccountName = dict["CreateUserAccountName"] as! String
                }
                if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                    self.modifiedTime = dict["ModifiedTime"] as! String
                }
                if dict.keys.contains("ModifyUser") && dict["ModifyUser"] != nil {
                    self.modifyUser = dict["ModifyUser"] as! String
                }
                if dict.keys.contains("ModifyUserAccountName") && dict["ModifyUserAccountName"] != nil {
                    self.modifyUserAccountName = dict["ModifyUserAccountName"] as! String
                }
                if dict.keys.contains("OrganizationId") && dict["OrganizationId"] != nil {
                    self.organizationId = dict["OrganizationId"] as! String
                }
                if dict.keys.contains("Owner") && dict["Owner"] != nil {
                    self.owner = dict["Owner"] as! String
                }
                if dict.keys.contains("OwnerAccountName") && dict["OwnerAccountName"] != nil {
                    self.ownerAccountName = dict["OwnerAccountName"] as! String
                }
                if dict.keys.contains("WorkspaceDescription") && dict["WorkspaceDescription"] != nil {
                    self.workspaceDescription = dict["WorkspaceDescription"] as! String
                }
                if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
                    self.workspaceId = dict["WorkspaceId"] as! String
                }
                if dict.keys.contains("WorkspaceName") && dict["WorkspaceName"] != nil {
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
            if dict.keys.contains("Data") && dict["Data"] != nil {
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
            if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
                self.pageNum = dict["PageNum"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalNum") && dict["TotalNum"] != nil {
                self.totalNum = dict["TotalNum"] as! Int32
            }
            if dict.keys.contains("TotalPages") && dict["TotalPages"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = QueryOrganizationWorkspaceListResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
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
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("PathId") && dict["PathId"] != nil {
                    self.pathId = dict["PathId"] as! String
                }
                if dict.keys.contains("PathName") && dict["PathName"] != nil {
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
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Directory") && dict["Directory"] != nil {
                var model = QueryReadableResourcesListByUserIdResponseBody.Result.Directory()
                model.fromMap(dict["Directory"] as! [String: Any])
                self.directory = model
            }
            if dict.keys.contains("ModifyName") && dict["ModifyName"] != nil {
                self.modifyName = dict["ModifyName"] as! String
            }
            if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
                self.ownerId = dict["OwnerId"] as! String
            }
            if dict.keys.contains("OwnerName") && dict["OwnerName"] != nil {
                self.ownerName = dict["OwnerName"] as! String
            }
            if dict.keys.contains("SecurityLevel") && dict["SecurityLevel"] != nil {
                self.securityLevel = dict["SecurityLevel"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("ThirdPartAuthFlag") && dict["ThirdPartAuthFlag"] != nil {
                self.thirdPartAuthFlag = dict["ThirdPartAuthFlag"] as! Int32
            }
            if dict.keys.contains("WorkName") && dict["WorkName"] != nil {
                self.workName = dict["WorkName"] as! String
            }
            if dict.keys.contains("WorkType") && dict["WorkType"] != nil {
                self.workType = dict["WorkType"] as! String
            }
            if dict.keys.contains("WorksId") && dict["WorksId"] != nil {
                self.worksId = dict["WorksId"] as! String
            }
            if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
                self.workspaceId = dict["WorkspaceId"] as! String
            }
            if dict.keys.contains("WorkspaceName") && dict["WorkspaceName"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("CostTimeAvgMin") && dict["CostTimeAvgMin"] != nil {
            self.costTimeAvgMin = dict["CostTimeAvgMin"] as! Int32
        }
        if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("QueryType") && dict["QueryType"] != nil {
            self.queryType = dict["QueryType"] as! String
        }
        if dict.keys.contains("ReportId") && dict["ReportId"] != nil {
            self.reportId = dict["ReportId"] as! String
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
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
            if dict.keys.contains("CacheCostTimeAvg") && dict["CacheCostTimeAvg"] != nil {
                self.cacheCostTimeAvg = dict["CacheCostTimeAvg"] as! Double
            }
            if dict.keys.contains("CacheQueryCount") && dict["CacheQueryCount"] != nil {
                self.cacheQueryCount = dict["CacheQueryCount"] as! Int32
            }
            if dict.keys.contains("ComponentQueryCount") && dict["ComponentQueryCount"] != nil {
                self.componentQueryCount = dict["ComponentQueryCount"] as! Int32
            }
            if dict.keys.contains("ComponentQueryCountAvg") && dict["ComponentQueryCountAvg"] != nil {
                self.componentQueryCountAvg = dict["ComponentQueryCountAvg"] as! Double
            }
            if dict.keys.contains("CostTimeAvg") && dict["CostTimeAvg"] != nil {
                self.costTimeAvg = dict["CostTimeAvg"] as! Double
            }
            if dict.keys.contains("QueryCount") && dict["QueryCount"] != nil {
                self.queryCount = dict["QueryCount"] as! Int32
            }
            if dict.keys.contains("QueryCountAvg") && dict["QueryCountAvg"] != nil {
                self.queryCountAvg = dict["QueryCountAvg"] as! Double
            }
            if dict.keys.contains("QueryOverFivePercentNum") && dict["QueryOverFivePercentNum"] != nil {
                self.queryOverFivePercentNum = dict["QueryOverFivePercentNum"] as! Double
            }
            if dict.keys.contains("QueryOverFiveSecPercent") && dict["QueryOverFiveSecPercent"] != nil {
                self.queryOverFiveSecPercent = dict["QueryOverFiveSecPercent"] as! String
            }
            if dict.keys.contains("QueryOverTenSecPercent") && dict["QueryOverTenSecPercent"] != nil {
                self.queryOverTenSecPercent = dict["QueryOverTenSecPercent"] as! String
            }
            if dict.keys.contains("QueryOverTenSecPercentNum") && dict["QueryOverTenSecPercentNum"] != nil {
                self.queryOverTenSecPercentNum = dict["QueryOverTenSecPercentNum"] as! Double
            }
            if dict.keys.contains("QueryTimeoutCount") && dict["QueryTimeoutCount"] != nil {
                self.queryTimeoutCount = dict["QueryTimeoutCount"] as! Int32
            }
            if dict.keys.contains("QueryTimeoutCountPercent") && dict["QueryTimeoutCountPercent"] != nil {
                self.queryTimeoutCountPercent = dict["QueryTimeoutCountPercent"] as! Double
            }
            if dict.keys.contains("QuickIndexCostTimeAvg") && dict["QuickIndexCostTimeAvg"] != nil {
                self.quickIndexCostTimeAvg = dict["QuickIndexCostTimeAvg"] as! Double
            }
            if dict.keys.contains("QuickIndexQueryCount") && dict["QuickIndexQueryCount"] != nil {
                self.quickIndexQueryCount = dict["QuickIndexQueryCount"] as! Int32
            }
            if dict.keys.contains("RepeatQueryPercent") && dict["RepeatQueryPercent"] != nil {
                self.repeatQueryPercent = dict["RepeatQueryPercent"] as! String
            }
            if dict.keys.contains("RepeatQueryPercentNum") && dict["RepeatQueryPercentNum"] != nil {
                self.repeatQueryPercentNum = dict["RepeatQueryPercentNum"] as! Double
            }
            if dict.keys.contains("RepeatSqlQueryCount") && dict["RepeatSqlQueryCount"] != nil {
                self.repeatSqlQueryCount = dict["RepeatSqlQueryCount"] as! Int32
            }
            if dict.keys.contains("RepeatSqlQueryPercent") && dict["RepeatSqlQueryPercent"] != nil {
                self.repeatSqlQueryPercent = dict["RepeatSqlQueryPercent"] as! String
            }
            if dict.keys.contains("ReportId") && dict["ReportId"] != nil {
                self.reportId = dict["ReportId"] as! String
            }
            if dict.keys.contains("ReportName") && dict["ReportName"] != nil {
                self.reportName = dict["ReportName"] as! String
            }
            if dict.keys.contains("ReportType") && dict["ReportType"] != nil {
                self.reportType = dict["ReportType"] as! String
            }
            if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
                self.workspaceId = dict["WorkspaceId"] as! String
            }
            if dict.keys.contains("WorkspaceName") && dict["WorkspaceName"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("ReportId") && dict["ReportId"] != nil {
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
            if dict.keys.contains("AuthPoint") && dict["AuthPoint"] != nil {
                self.authPoint = dict["AuthPoint"] as! Int32
            }
            if dict.keys.contains("ExpireDate") && dict["ExpireDate"] != nil {
                self.expireDate = dict["ExpireDate"] as! Int64
            }
            if dict.keys.contains("ReportId") && dict["ReportId"] != nil {
                self.reportId = dict["ReportId"] as! String
            }
            if dict.keys.contains("ShareId") && dict["ShareId"] != nil {
                self.shareId = dict["ShareId"] as! String
            }
            if dict.keys.contains("ShareToId") && dict["ShareToId"] != nil {
                self.shareToId = dict["ShareToId"] as! String
            }
            if dict.keys.contains("ShareToName") && dict["ShareToName"] != nil {
                self.shareToName = dict["ShareToName"] as! String
            }
            if dict.keys.contains("ShareToType") && dict["ShareToType"] != nil {
                self.shareToType = dict["ShareToType"] as! Int32
            }
            if dict.keys.contains("ShareType") && dict["ShareType"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
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
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("PathId") && dict["PathId"] != nil {
                    self.pathId = dict["PathId"] as! String
                }
                if dict.keys.contains("PathName") && dict["PathName"] != nil {
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
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Directory") && dict["Directory"] != nil {
                var model = QuerySharesToUserListResponseBody.Result.Directory()
                model.fromMap(dict["Directory"] as! [String: Any])
                self.directory = model
            }
            if dict.keys.contains("ModifyName") && dict["ModifyName"] != nil {
                self.modifyName = dict["ModifyName"] as! String
            }
            if dict.keys.contains("ModifyTime") && dict["ModifyTime"] != nil {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
                self.ownerId = dict["OwnerId"] as! String
            }
            if dict.keys.contains("OwnerName") && dict["OwnerName"] != nil {
                self.ownerName = dict["OwnerName"] as! String
            }
            if dict.keys.contains("SecurityLevel") && dict["SecurityLevel"] != nil {
                self.securityLevel = dict["SecurityLevel"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("ThirdPartAuthFlag") && dict["ThirdPartAuthFlag"] != nil {
                self.thirdPartAuthFlag = dict["ThirdPartAuthFlag"] as! Int32
            }
            if dict.keys.contains("WorkName") && dict["WorkName"] != nil {
                self.workName = dict["WorkName"] as! String
            }
            if dict.keys.contains("WorkType") && dict["WorkType"] != nil {
                self.workType = dict["WorkType"] as! String
            }
            if dict.keys.contains("WorksId") && dict["WorksId"] != nil {
                self.worksId = dict["WorksId"] as! String
            }
            if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
                self.workspaceId = dict["WorkspaceId"] as! String
            }
            if dict.keys.contains("WorkspaceName") && dict["WorkspaceName"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
            var model = QuerySharesToUserListResponseBody()
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
        if dict.keys.contains("Ticket") && dict["Ticket"] != nil {
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
            if dict.keys.contains("AccessTicket") && dict["AccessTicket"] != nil {
                self.accessTicket = dict["AccessTicket"] as! String
            }
            if dict.keys.contains("CmptId") && dict["CmptId"] != nil {
                self.cmptId = dict["CmptId"] as! String
            }
            if dict.keys.contains("GlobalParam") && dict["GlobalParam"] != nil {
                self.globalParam = dict["GlobalParam"] as! String
            }
            if dict.keys.contains("InvalidTime") && dict["InvalidTime"] != nil {
                self.invalidTime = dict["InvalidTime"] as! String
            }
            if dict.keys.contains("MaxTicketNum") && dict["MaxTicketNum"] != nil {
                self.maxTicketNum = dict["MaxTicketNum"] as! Int32
            }
            if dict.keys.contains("OrganizationId") && dict["OrganizationId"] != nil {
                self.organizationId = dict["OrganizationId"] as! String
            }
            if dict.keys.contains("RegisterTime") && dict["RegisterTime"] != nil {
                self.registerTime = dict["RegisterTime"] as! String
            }
            if dict.keys.contains("UsedTicketNum") && dict["UsedTicketNum"] != nil {
                self.usedTicketNum = dict["UsedTicketNum"] as! Int32
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
            }
            if dict.keys.contains("WatermarkParam") && dict["WatermarkParam"] != nil {
                self.watermarkParam = dict["WatermarkParam"] as! String
            }
            if dict.keys.contains("WorksId") && dict["WorksId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = QueryTicketInfoResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("ParentUserGroupId") && dict["ParentUserGroupId"] != nil {
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
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CreateUser") && dict["CreateUser"] != nil {
                self.createUser = dict["CreateUser"] as! String
            }
            if dict.keys.contains("IdentifiedPath") && dict["IdentifiedPath"] != nil {
                self.identifiedPath = dict["IdentifiedPath"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("ModifyUser") && dict["ModifyUser"] != nil {
                self.modifyUser = dict["ModifyUser"] as! String
            }
            if dict.keys.contains("ParentUserGroupId") && dict["ParentUserGroupId"] != nil {
                self.parentUserGroupId = dict["ParentUserGroupId"] as! String
            }
            if dict.keys.contains("UserGroupDescription") && dict["UserGroupDescription"] != nil {
                self.userGroupDescription = dict["UserGroupDescription"] as! String
            }
            if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
                self.userGroupId = dict["UserGroupId"] as! String
            }
            if dict.keys.contains("UserGroupName") && dict["UserGroupName"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("Keyword") && dict["Keyword"] != nil {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
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
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("IsUserGroup") && dict["IsUserGroup"] != nil {
                self.isUserGroup = dict["IsUserGroup"] as! Bool
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ParentUserGroupId") && dict["ParentUserGroupId"] != nil {
                self.parentUserGroupId = dict["ParentUserGroupId"] as! String
            }
            if dict.keys.contains("ParentUserGroupName") && dict["ParentUserGroupName"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
            var model = QueryUserGroupMemberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryUserInfoByAccountRequest : Tea.TeaModel {
    public var account: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Account") && dict["Account"] != nil {
            self.account = dict["Account"] as! String
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
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.userType != nil {
                map["UserType"] = self.userType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountId") && dict["AccountId"] != nil {
                self.accountId = dict["AccountId"] as! String
            }
            if dict.keys.contains("AccountName") && dict["AccountName"] != nil {
                self.accountName = dict["AccountName"] as! String
            }
            if dict.keys.contains("AdminUser") && dict["AdminUser"] != nil {
                self.adminUser = dict["AdminUser"] as! Bool
            }
            if dict.keys.contains("AuthAdminUser") && dict["AuthAdminUser"] != nil {
                self.authAdminUser = dict["AuthAdminUser"] as! Bool
            }
            if dict.keys.contains("Email") && dict["Email"] != nil {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("NickName") && dict["NickName"] != nil {
                self.nickName = dict["NickName"] as! String
            }
            if dict.keys.contains("Phone") && dict["Phone"] != nil {
                self.phone = dict["Phone"] as! String
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
            }
            if dict.keys.contains("UserType") && dict["UserType"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = QueryUserInfoByAccountResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
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
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.userType != nil {
                map["UserType"] = self.userType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountId") && dict["AccountId"] != nil {
                self.accountId = dict["AccountId"] as! String
            }
            if dict.keys.contains("AccountName") && dict["AccountName"] != nil {
                self.accountName = dict["AccountName"] as! String
            }
            if dict.keys.contains("AdminUser") && dict["AdminUser"] != nil {
                self.adminUser = dict["AdminUser"] as! Bool
            }
            if dict.keys.contains("AuthAdminUser") && dict["AuthAdminUser"] != nil {
                self.authAdminUser = dict["AuthAdminUser"] as! Bool
            }
            if dict.keys.contains("Email") && dict["Email"] != nil {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("NickName") && dict["NickName"] != nil {
                self.nickName = dict["NickName"] as! String
            }
            if dict.keys.contains("Phone") && dict["Phone"] != nil {
                self.phone = dict["Phone"] as! String
            }
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
            }
            if dict.keys.contains("UserType") && dict["UserType"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = QueryUserInfoByUserIdResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("Keyword") && dict["Keyword"] != nil {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
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

            public var nickName: String?

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
                if self.nickName != nil {
                    map["NickName"] = self.nickName!
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
                if dict.keys.contains("AccountId") && dict["AccountId"] != nil {
                    self.accountId = dict["AccountId"] as! String
                }
                if dict.keys.contains("AccountName") && dict["AccountName"] != nil {
                    self.accountName = dict["AccountName"] as! String
                }
                if dict.keys.contains("AdminUser") && dict["AdminUser"] != nil {
                    self.adminUser = dict["AdminUser"] as! Bool
                }
                if dict.keys.contains("AuthAdminUser") && dict["AuthAdminUser"] != nil {
                    self.authAdminUser = dict["AuthAdminUser"] as! Bool
                }
                if dict.keys.contains("NickName") && dict["NickName"] != nil {
                    self.nickName = dict["NickName"] as! String
                }
                if dict.keys.contains("UserId") && dict["UserId"] != nil {
                    self.userId = dict["UserId"] as! String
                }
                if dict.keys.contains("UserType") && dict["UserType"] != nil {
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
            if dict.keys.contains("Data") && dict["Data"] != nil {
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
            if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
                self.pageNum = dict["PageNum"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalNum") && dict["TotalNum"] != nil {
                self.totalNum = dict["TotalNum"] as! Int32
            }
            if dict.keys.contains("TotalPages") && dict["TotalPages"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = QueryUserListResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
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
            if dict.keys.contains("RoleCode") && dict["RoleCode"] != nil {
                self.roleCode = dict["RoleCode"] as! String
            }
            if dict.keys.contains("RoleId") && dict["RoleId"] != nil {
                self.roleId = dict["RoleId"] as! Int64
            }
            if dict.keys.contains("RoleName") && dict["RoleName"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = QueryUserRoleInfoInWorkspaceResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
            if dict.keys.contains("TagDescription") && dict["TagDescription"] != nil {
                self.tagDescription = dict["TagDescription"] as! String
            }
            if dict.keys.contains("TagId") && dict["TagId"] != nil {
                self.tagId = dict["TagId"] as! String
            }
            if dict.keys.contains("TagName") && dict["TagName"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
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
            if dict.keys.contains("TagId") && dict["TagId"] != nil {
                self.tagId = dict["TagId"] as! String
            }
            if dict.keys.contains("TagName") && dict["TagName"] != nil {
                self.tagName = dict["TagName"] as! String
            }
            if dict.keys.contains("TagValue") && dict["TagValue"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("WorksId") && dict["WorksId"] != nil {
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
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("PathId") && dict["PathId"] != nil {
                    self.pathId = dict["PathId"] as! String
                }
                if dict.keys.contains("PathName") && dict["PathName"] != nil {
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
            if dict.keys.contains("Auth3rdFlag") && dict["Auth3rdFlag"] != nil {
                self.auth3rdFlag = dict["Auth3rdFlag"] as! Int32
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Directory") && dict["Directory"] != nil {
                var model = QueryWorksResponseBody.Result.Directory()
                model.fromMap(dict["Directory"] as! [String: Any])
                self.directory = model
            }
            if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModify") && dict["GmtModify"] != nil {
                self.gmtModify = dict["GmtModify"] as! String
            }
            if dict.keys.contains("ModifyName") && dict["ModifyName"] != nil {
                self.modifyName = dict["ModifyName"] as! String
            }
            if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
                self.ownerId = dict["OwnerId"] as! String
            }
            if dict.keys.contains("OwnerName") && dict["OwnerName"] != nil {
                self.ownerName = dict["OwnerName"] as! String
            }
            if dict.keys.contains("SecurityLevel") && dict["SecurityLevel"] != nil {
                self.securityLevel = dict["SecurityLevel"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("WorkName") && dict["WorkName"] != nil {
                self.workName = dict["WorkName"] as! String
            }
            if dict.keys.contains("WorkType") && dict["WorkType"] != nil {
                self.workType = dict["WorkType"] as! String
            }
            if dict.keys.contains("WorksId") && dict["WorksId"] != nil {
                self.worksId = dict["WorksId"] as! String
            }
            if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
                self.workspaceId = dict["WorkspaceId"] as! String
            }
            if dict.keys.contains("WorkspaceName") && dict["WorkspaceName"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = QueryWorksResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("WorksId") && dict["WorksId"] != nil {
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
                if dict.keys.contains("AreaId") && dict["AreaId"] != nil {
                    self.areaId = dict["AreaId"] as! String
                }
                if dict.keys.contains("AreaName") && dict["AreaName"] != nil {
                    self.areaName = dict["AreaName"] as! String
                }
                if dict.keys.contains("Caption") && dict["Caption"] != nil {
                    self.caption = dict["Caption"] as! String
                }
                if dict.keys.contains("DataType") && dict["DataType"] != nil {
                    self.dataType = dict["DataType"] as! String
                }
                if dict.keys.contains("IsMeasure") && dict["IsMeasure"] != nil {
                    self.isMeasure = dict["IsMeasure"] as! Bool
                }
                if dict.keys.contains("PathId") && dict["PathId"] != nil {
                    self.pathId = dict["PathId"] as! String
                }
                if dict.keys.contains("Uid") && dict["Uid"] != nil {
                    self.uid = dict["Uid"] as! String
                }
            }
        }
        public var componentId: String?

        public var componentName: String?

        public var componentType: Int32?

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
            if dict.keys.contains("ComponentId") && dict["ComponentId"] != nil {
                self.componentId = dict["ComponentId"] as! String
            }
            if dict.keys.contains("ComponentName") && dict["ComponentName"] != nil {
                self.componentName = dict["ComponentName"] as! String
            }
            if dict.keys.contains("ComponentType") && dict["ComponentType"] != nil {
                self.componentType = dict["ComponentType"] as! Int32
            }
            if dict.keys.contains("ComponentTypeName") && dict["ComponentTypeName"] != nil {
                self.componentTypeName = dict["ComponentTypeName"] as! String
            }
            if dict.keys.contains("DatasetId") && dict["DatasetId"] != nil {
                self.datasetId = dict["DatasetId"] as! String
            }
            if dict.keys.contains("QueryParams") && dict["QueryParams"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
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
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Int32
        }
        if dict.keys.contains("ThirdPartAuthFlag") && dict["ThirdPartAuthFlag"] != nil {
            self.thirdPartAuthFlag = dict["ThirdPartAuthFlag"] as! Int32
        }
        if dict.keys.contains("WorksType") && dict["WorksType"] != nil {
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
                    if dict.keys.contains("Id") && dict["Id"] != nil {
                        self.id = dict["Id"] as! String
                    }
                    if dict.keys.contains("Name") && dict["Name"] != nil {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("PathId") && dict["PathId"] != nil {
                        self.pathId = dict["PathId"] as! String
                    }
                    if dict.keys.contains("PathName") && dict["PathName"] != nil {
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
                if dict.keys.contains("Auth3rdFlag") && dict["Auth3rdFlag"] != nil {
                    self.auth3rdFlag = dict["Auth3rdFlag"] as! Int32
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Directory") && dict["Directory"] != nil {
                    var model = QueryWorksByOrganizationResponseBody.Result.Data.Directory()
                    model.fromMap(dict["Directory"] as! [String: Any])
                    self.directory = model
                }
                if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtModify") && dict["GmtModify"] != nil {
                    self.gmtModify = dict["GmtModify"] as! String
                }
                if dict.keys.contains("ModifyName") && dict["ModifyName"] != nil {
                    self.modifyName = dict["ModifyName"] as! String
                }
                if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
                    self.ownerId = dict["OwnerId"] as! String
                }
                if dict.keys.contains("OwnerName") && dict["OwnerName"] != nil {
                    self.ownerName = dict["OwnerName"] as! String
                }
                if dict.keys.contains("SecurityLevel") && dict["SecurityLevel"] != nil {
                    self.securityLevel = dict["SecurityLevel"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("WorkName") && dict["WorkName"] != nil {
                    self.workName = dict["WorkName"] as! String
                }
                if dict.keys.contains("WorkType") && dict["WorkType"] != nil {
                    self.workType = dict["WorkType"] as! String
                }
                if dict.keys.contains("WorksId") && dict["WorksId"] != nil {
                    self.worksId = dict["WorksId"] as! String
                }
                if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
                    self.workspaceId = dict["WorkspaceId"] as! String
                }
                if dict.keys.contains("WorkspaceName") && dict["WorkspaceName"] != nil {
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
            if dict.keys.contains("Data") && dict["Data"] != nil {
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
            if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
                self.pageNum = dict["PageNum"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalNum") && dict["TotalNum"] != nil {
                self.totalNum = dict["TotalNum"] as! Int32
            }
            if dict.keys.contains("TotalPages") && dict["TotalPages"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = QueryWorksByOrganizationResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Int32
        }
        if dict.keys.contains("ThirdPartAuthFlag") && dict["ThirdPartAuthFlag"] != nil {
            self.thirdPartAuthFlag = dict["ThirdPartAuthFlag"] as! Int32
        }
        if dict.keys.contains("WorksType") && dict["WorksType"] != nil {
            self.worksType = dict["WorksType"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
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
                    if dict.keys.contains("Id") && dict["Id"] != nil {
                        self.id = dict["Id"] as! String
                    }
                    if dict.keys.contains("Name") && dict["Name"] != nil {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("PathId") && dict["PathId"] != nil {
                        self.pathId = dict["PathId"] as! String
                    }
                    if dict.keys.contains("PathName") && dict["PathName"] != nil {
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
                if dict.keys.contains("Auth3rdFlag") && dict["Auth3rdFlag"] != nil {
                    self.auth3rdFlag = dict["Auth3rdFlag"] as! Int32
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Directory") && dict["Directory"] != nil {
                    var model = QueryWorksByWorkspaceResponseBody.Result.Data.Directory()
                    model.fromMap(dict["Directory"] as! [String: Any])
                    self.directory = model
                }
                if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtModify") && dict["GmtModify"] != nil {
                    self.gmtModify = dict["GmtModify"] as! String
                }
                if dict.keys.contains("ModifyName") && dict["ModifyName"] != nil {
                    self.modifyName = dict["ModifyName"] as! String
                }
                if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
                    self.ownerId = dict["OwnerId"] as! String
                }
                if dict.keys.contains("OwnerName") && dict["OwnerName"] != nil {
                    self.ownerName = dict["OwnerName"] as! String
                }
                if dict.keys.contains("SecurityLevel") && dict["SecurityLevel"] != nil {
                    self.securityLevel = dict["SecurityLevel"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("WorkName") && dict["WorkName"] != nil {
                    self.workName = dict["WorkName"] as! String
                }
                if dict.keys.contains("WorkType") && dict["WorkType"] != nil {
                    self.workType = dict["WorkType"] as! String
                }
                if dict.keys.contains("WorksId") && dict["WorksId"] != nil {
                    self.worksId = dict["WorksId"] as! String
                }
                if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
                    self.workspaceId = dict["WorkspaceId"] as! String
                }
                if dict.keys.contains("WorkspaceName") && dict["WorkspaceName"] != nil {
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
            if dict.keys.contains("Data") && dict["Data"] != nil {
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
            if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
                self.pageNum = dict["PageNum"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalNum") && dict["TotalNum"] != nil {
                self.totalNum = dict["TotalNum"] as! Int32
            }
            if dict.keys.contains("TotalPages") && dict["TotalPages"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = QueryWorksByWorkspaceResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
            var model = QueryWorksByWorkspaceResponseBody()
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
        if dict.keys.contains("Keyword") && dict["Keyword"] != nil {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
            self.pageNum = dict["PageNum"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
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
                    if dict.keys.contains("RoleCode") && dict["RoleCode"] != nil {
                        self.roleCode = dict["RoleCode"] as! String
                    }
                    if dict.keys.contains("RoleId") && dict["RoleId"] != nil {
                        self.roleId = dict["RoleId"] as! Int64
                    }
                    if dict.keys.contains("RoleName") && dict["RoleName"] != nil {
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
                if dict.keys.contains("AccountId") && dict["AccountId"] != nil {
                    self.accountId = dict["AccountId"] as! String
                }
                if dict.keys.contains("AccountName") && dict["AccountName"] != nil {
                    self.accountName = dict["AccountName"] as! String
                }
                if dict.keys.contains("NickName") && dict["NickName"] != nil {
                    self.nickName = dict["NickName"] as! String
                }
                if dict.keys.contains("Role") && dict["Role"] != nil {
                    var model = QueryWorkspaceUserListResponseBody.Result.Data.Role()
                    model.fromMap(dict["Role"] as! [String: Any])
                    self.role = model
                }
                if dict.keys.contains("UserId") && dict["UserId"] != nil {
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
            if dict.keys.contains("Data") && dict["Data"] != nil {
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
            if dict.keys.contains("PageNum") && dict["PageNum"] != nil {
                self.pageNum = dict["PageNum"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalNum") && dict["TotalNum"] != nil {
                self.totalNum = dict["TotalNum"] as! Int32
            }
            if dict.keys.contains("TotalPages") && dict["TotalPages"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = QueryWorkspaceUserListResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("ApplicationId") && dict["ApplicationId"] != nil {
            self.applicationId = dict["ApplicationId"] as! String
        }
        if dict.keys.contains("HandleReason") && dict["HandleReason"] != nil {
            self.handleReason = dict["HandleReason"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("WorksId") && dict["WorksId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("CubeId") && dict["CubeId"] != nil {
            self.cubeId = dict["CubeId"] as! String
        }
        if dict.keys.contains("MissHitPolicy") && dict["MissHitPolicy"] != nil {
            self.missHitPolicy = dict["MissHitPolicy"] as! String
        }
        if dict.keys.contains("RuleType") && dict["RuleType"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("RuleModel") && dict["RuleModel"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("WhiteListModel") && dict["WhiteListModel"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
            var model = SetDataLevelPermissionWhiteListResponseBody()
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
        if dict.keys.contains("CubeId") && dict["CubeId"] != nil {
            self.cubeId = dict["CubeId"] as! String
        }
        if dict.keys.contains("IsOpen") && dict["IsOpen"] != nil {
            self.isOpen = dict["IsOpen"] as! Int32
        }
        if dict.keys.contains("RuleType") && dict["RuleType"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("ThirdPartAuthFlag") && dict["ThirdPartAuthFlag"] != nil {
            self.thirdPartAuthFlag = dict["ThirdPartAuthFlag"] as! Bool
        }
        if dict.keys.contains("WorksId") && dict["WorksId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! Int32
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("Ticket") && dict["Ticket"] != nil {
            self.ticket = dict["Ticket"] as! String
        }
        if dict.keys.contains("TicketNum") && dict["TicketNum"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
            var model = UpdateTicketNumResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateUserRequest : Tea.TeaModel {
    public var adminUser: Bool?

    public var authAdminUser: Bool?

    public var nickName: String?

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
        if self.nickName != nil {
            map["NickName"] = self.nickName!
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
        if dict.keys.contains("AdminUser") && dict["AdminUser"] != nil {
            self.adminUser = dict["AdminUser"] as! Bool
        }
        if dict.keys.contains("AuthAdminUser") && dict["AuthAdminUser"] != nil {
            self.authAdminUser = dict["AuthAdminUser"] as! Bool
        }
        if dict.keys.contains("NickName") && dict["NickName"] != nil {
            self.nickName = dict["NickName"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("UserType") && dict["UserType"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("UserGroupDescription") && dict["UserGroupDescription"] != nil {
            self.userGroupDescription = dict["UserGroupDescription"] as! String
        }
        if dict.keys.contains("UserGroupId") && dict["UserGroupId"] != nil {
            self.userGroupId = dict["UserGroupId"] as! String
        }
        if dict.keys.contains("UserGroupName") && dict["UserGroupName"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("TagDescription") && dict["TagDescription"] != nil {
            self.tagDescription = dict["TagDescription"] as! String
        }
        if dict.keys.contains("TagId") && dict["TagId"] != nil {
            self.tagId = dict["TagId"] as! String
        }
        if dict.keys.contains("TagName") && dict["TagName"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("TagId") && dict["TagId"] != nil {
            self.tagId = dict["TagId"] as! String
        }
        if dict.keys.contains("TagValue") && dict["TagValue"] != nil {
            self.tagValue = dict["TagValue"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
            var model = UpdateUserTagValueResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateWorkspaceUserRoleRequest : Tea.TeaModel {
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
        if dict.keys.contains("RoleId") && dict["RoleId"] != nil {
            self.roleId = dict["RoleId"] as! Int64
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("RoleId") && dict["RoleId"] != nil {
            self.roleId = dict["RoleId"] as! Int64
        }
        if dict.keys.contains("UserIds") && dict["UserIds"] != nil {
            self.userIds = dict["UserIds"] as! String
        }
        if dict.keys.contains("WorkspaceId") && dict["WorkspaceId"] != nil {
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
            if dict.keys.contains("Failure") && dict["Failure"] != nil {
                self.failure = dict["Failure"] as! Int32
            }
            if dict.keys.contains("FailureDetail") && dict["FailureDetail"] != nil {
                self.failureDetail = dict["FailureDetail"] as! [String: Any]
            }
            if dict.keys.contains("Success") && dict["Success"] != nil {
                self.success = dict["Success"] as! Int32
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = UpdateWorkspaceUsersRoleResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
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
            var model = WithdrawAllUserGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
