import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddUserToGroupRequest : Tea.TeaModel {
    public var groupName: String?

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
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class AddUserToGroupResponseBody : Tea.TeaModel {
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

public class AddUserToGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddUserToGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AddUserToGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AttachPolicyToGroupRequest : Tea.TeaModel {
    public var groupName: String?

    public var policyName: String?

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
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        if self.policyType != nil {
            map["PolicyType"] = self.policyType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("PolicyName") {
            self.policyName = dict["PolicyName"] as! String
        }
        if dict.keys.contains("PolicyType") {
            self.policyType = dict["PolicyType"] as! String
        }
    }
}

public class AttachPolicyToGroupResponseBody : Tea.TeaModel {
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

public class AttachPolicyToGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachPolicyToGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AttachPolicyToGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AttachPolicyToRoleRequest : Tea.TeaModel {
    public var policyName: String?

    public var policyType: String?

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
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        if self.policyType != nil {
            map["PolicyType"] = self.policyType!
        }
        if self.roleName != nil {
            map["RoleName"] = self.roleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyName") {
            self.policyName = dict["PolicyName"] as! String
        }
        if dict.keys.contains("PolicyType") {
            self.policyType = dict["PolicyType"] as! String
        }
        if dict.keys.contains("RoleName") {
            self.roleName = dict["RoleName"] as! String
        }
    }
}

public class AttachPolicyToRoleResponseBody : Tea.TeaModel {
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

public class AttachPolicyToRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachPolicyToRoleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AttachPolicyToRoleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AttachPolicyToUserRequest : Tea.TeaModel {
    public var policyName: String?

    public var policyType: String?

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
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        if self.policyType != nil {
            map["PolicyType"] = self.policyType!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyName") {
            self.policyName = dict["PolicyName"] as! String
        }
        if dict.keys.contains("PolicyType") {
            self.policyType = dict["PolicyType"] as! String
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class AttachPolicyToUserResponseBody : Tea.TeaModel {
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

public class AttachPolicyToUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachPolicyToUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AttachPolicyToUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BindMFADeviceRequest : Tea.TeaModel {
    public var authenticationCode1: String?

    public var authenticationCode2: String?

    public var serialNumber: String?

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
        if self.authenticationCode1 != nil {
            map["AuthenticationCode1"] = self.authenticationCode1!
        }
        if self.authenticationCode2 != nil {
            map["AuthenticationCode2"] = self.authenticationCode2!
        }
        if self.serialNumber != nil {
            map["SerialNumber"] = self.serialNumber!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthenticationCode1") {
            self.authenticationCode1 = dict["AuthenticationCode1"] as! String
        }
        if dict.keys.contains("AuthenticationCode2") {
            self.authenticationCode2 = dict["AuthenticationCode2"] as! String
        }
        if dict.keys.contains("SerialNumber") {
            self.serialNumber = dict["SerialNumber"] as! String
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class BindMFADeviceResponseBody : Tea.TeaModel {
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

public class BindMFADeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindMFADeviceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = BindMFADeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ChangePasswordRequest : Tea.TeaModel {
    public var newPassword: String?

    public var oldPassword: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.newPassword != nil {
            map["NewPassword"] = self.newPassword!
        }
        if self.oldPassword != nil {
            map["OldPassword"] = self.oldPassword!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NewPassword") {
            self.newPassword = dict["NewPassword"] as! String
        }
        if dict.keys.contains("OldPassword") {
            self.oldPassword = dict["OldPassword"] as! String
        }
    }
}

public class ChangePasswordResponseBody : Tea.TeaModel {
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

public class ChangePasswordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangePasswordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ChangePasswordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ClearAccountAliasResponseBody : Tea.TeaModel {
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

public class ClearAccountAliasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ClearAccountAliasResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ClearAccountAliasResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAccessKeyRequest : Tea.TeaModel {
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
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class CreateAccessKeyResponseBody : Tea.TeaModel {
    public class AccessKey : Tea.TeaModel {
        public var accessKeyId: String?

        public var accessKeySecret: String?

        public var createDate: String?

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
            if self.accessKeyId != nil {
                map["AccessKeyId"] = self.accessKeyId!
            }
            if self.accessKeySecret != nil {
                map["AccessKeySecret"] = self.accessKeySecret!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessKeyId") {
                self.accessKeyId = dict["AccessKeyId"] as! String
            }
            if dict.keys.contains("AccessKeySecret") {
                self.accessKeySecret = dict["AccessKeySecret"] as! String
            }
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var accessKey: CreateAccessKeyResponseBody.AccessKey?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accessKey?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessKey != nil {
            map["AccessKey"] = self.accessKey?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessKey") {
            var model = CreateAccessKeyResponseBody.AccessKey()
            model.fromMap(dict["AccessKey"] as! [String: Any])
            self.accessKey = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateAccessKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAccessKeyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateAccessKeyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateGroupRequest : Tea.TeaModel {
    public var comments: String?

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
        if self.comments != nil {
            map["Comments"] = self.comments!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Comments") {
            self.comments = dict["Comments"] as! String
        }
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
        }
    }
}

public class CreateGroupResponseBody : Tea.TeaModel {
    public class Group : Tea.TeaModel {
        public var comments: String?

        public var createDate: String?

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
            if self.comments != nil {
                map["Comments"] = self.comments!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Comments") {
                self.comments = dict["Comments"] as! String
            }
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("GroupId") {
                self.groupId = dict["GroupId"] as! String
            }
            if dict.keys.contains("GroupName") {
                self.groupName = dict["GroupName"] as! String
            }
        }
    }
    public var group: CreateGroupResponseBody.Group?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.group?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.group != nil {
            map["Group"] = self.group?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Group") {
            var model = CreateGroupResponseBody.Group()
            model.fromMap(dict["Group"] as! [String: Any])
            self.group = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateLoginProfileRequest : Tea.TeaModel {
    public var MFABindRequired: Bool?

    public var password: String?

    public var passwordResetRequired: Bool?

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
        if self.MFABindRequired != nil {
            map["MFABindRequired"] = self.MFABindRequired!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.passwordResetRequired != nil {
            map["PasswordResetRequired"] = self.passwordResetRequired!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MFABindRequired") {
            self.MFABindRequired = dict["MFABindRequired"] as! Bool
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("PasswordResetRequired") {
            self.passwordResetRequired = dict["PasswordResetRequired"] as! Bool
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class CreateLoginProfileResponseBody : Tea.TeaModel {
    public class LoginProfile : Tea.TeaModel {
        public var createDate: String?

        public var MFABindRequired: Bool?

        public var passwordResetRequired: Bool?

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
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.MFABindRequired != nil {
                map["MFABindRequired"] = self.MFABindRequired!
            }
            if self.passwordResetRequired != nil {
                map["PasswordResetRequired"] = self.passwordResetRequired!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("MFABindRequired") {
                self.MFABindRequired = dict["MFABindRequired"] as! Bool
            }
            if dict.keys.contains("PasswordResetRequired") {
                self.passwordResetRequired = dict["PasswordResetRequired"] as! Bool
            }
            if dict.keys.contains("UserName") {
                self.userName = dict["UserName"] as! String
            }
        }
    }
    public var loginProfile: CreateLoginProfileResponseBody.LoginProfile?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.loginProfile?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.loginProfile != nil {
            map["LoginProfile"] = self.loginProfile?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LoginProfile") {
            var model = CreateLoginProfileResponseBody.LoginProfile()
            model.fromMap(dict["LoginProfile"] as! [String: Any])
            self.loginProfile = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateLoginProfileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateLoginProfileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateLoginProfileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreatePolicyRequest : Tea.TeaModel {
    public var description_: String?

    public var policyDocument: String?

    public var policyName: String?

    public override init() {
        super.init()
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
        if self.policyDocument != nil {
            map["PolicyDocument"] = self.policyDocument!
        }
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("PolicyDocument") {
            self.policyDocument = dict["PolicyDocument"] as! String
        }
        if dict.keys.contains("PolicyName") {
            self.policyName = dict["PolicyName"] as! String
        }
    }
}

public class CreatePolicyResponseBody : Tea.TeaModel {
    public class Policy : Tea.TeaModel {
        public var createDate: String?

        public var defaultVersion: String?

        public var description_: String?

        public var policyName: String?

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
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.defaultVersion != nil {
                map["DefaultVersion"] = self.defaultVersion!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.policyName != nil {
                map["PolicyName"] = self.policyName!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("DefaultVersion") {
                self.defaultVersion = dict["DefaultVersion"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("PolicyName") {
                self.policyName = dict["PolicyName"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
        }
    }
    public var policy: CreatePolicyResponseBody.Policy?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.policy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policy != nil {
            map["Policy"] = self.policy?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Policy") {
            var model = CreatePolicyResponseBody.Policy()
            model.fromMap(dict["Policy"] as! [String: Any])
            self.policy = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreatePolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreatePolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreatePolicyVersionRequest : Tea.TeaModel {
    public var policyDocument: String?

    public var policyName: String?

    public var rotateStrategy: String?

    public var setAsDefault: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policyDocument != nil {
            map["PolicyDocument"] = self.policyDocument!
        }
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        if self.rotateStrategy != nil {
            map["RotateStrategy"] = self.rotateStrategy!
        }
        if self.setAsDefault != nil {
            map["SetAsDefault"] = self.setAsDefault!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyDocument") {
            self.policyDocument = dict["PolicyDocument"] as! String
        }
        if dict.keys.contains("PolicyName") {
            self.policyName = dict["PolicyName"] as! String
        }
        if dict.keys.contains("RotateStrategy") {
            self.rotateStrategy = dict["RotateStrategy"] as! String
        }
        if dict.keys.contains("SetAsDefault") {
            self.setAsDefault = dict["SetAsDefault"] as! Bool
        }
    }
}

public class CreatePolicyVersionResponseBody : Tea.TeaModel {
    public class PolicyVersion : Tea.TeaModel {
        public var createDate: String?

        public var isDefaultVersion: Bool?

        public var policyDocument: String?

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
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.isDefaultVersion != nil {
                map["IsDefaultVersion"] = self.isDefaultVersion!
            }
            if self.policyDocument != nil {
                map["PolicyDocument"] = self.policyDocument!
            }
            if self.versionId != nil {
                map["VersionId"] = self.versionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("IsDefaultVersion") {
                self.isDefaultVersion = dict["IsDefaultVersion"] as! Bool
            }
            if dict.keys.contains("PolicyDocument") {
                self.policyDocument = dict["PolicyDocument"] as! String
            }
            if dict.keys.contains("VersionId") {
                self.versionId = dict["VersionId"] as! String
            }
        }
    }
    public var policyVersion: CreatePolicyVersionResponseBody.PolicyVersion?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.policyVersion?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policyVersion != nil {
            map["PolicyVersion"] = self.policyVersion?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyVersion") {
            var model = CreatePolicyVersionResponseBody.PolicyVersion()
            model.fromMap(dict["PolicyVersion"] as! [String: Any])
            self.policyVersion = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreatePolicyVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePolicyVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreatePolicyVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateRoleRequest : Tea.TeaModel {
    public var assumeRolePolicyDocument: String?

    public var description_: String?

    public var maxSessionDuration: Int64?

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
        if self.assumeRolePolicyDocument != nil {
            map["AssumeRolePolicyDocument"] = self.assumeRolePolicyDocument!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.maxSessionDuration != nil {
            map["MaxSessionDuration"] = self.maxSessionDuration!
        }
        if self.roleName != nil {
            map["RoleName"] = self.roleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AssumeRolePolicyDocument") {
            self.assumeRolePolicyDocument = dict["AssumeRolePolicyDocument"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("MaxSessionDuration") {
            self.maxSessionDuration = dict["MaxSessionDuration"] as! Int64
        }
        if dict.keys.contains("RoleName") {
            self.roleName = dict["RoleName"] as! String
        }
    }
}

public class CreateRoleResponseBody : Tea.TeaModel {
    public class Role : Tea.TeaModel {
        public var arn: String?

        public var assumeRolePolicyDocument: String?

        public var createDate: String?

        public var description_: String?

        public var maxSessionDuration: Int64?

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
            if self.arn != nil {
                map["Arn"] = self.arn!
            }
            if self.assumeRolePolicyDocument != nil {
                map["AssumeRolePolicyDocument"] = self.assumeRolePolicyDocument!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.maxSessionDuration != nil {
                map["MaxSessionDuration"] = self.maxSessionDuration!
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
            if dict.keys.contains("Arn") {
                self.arn = dict["Arn"] as! String
            }
            if dict.keys.contains("AssumeRolePolicyDocument") {
                self.assumeRolePolicyDocument = dict["AssumeRolePolicyDocument"] as! String
            }
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("MaxSessionDuration") {
                self.maxSessionDuration = dict["MaxSessionDuration"] as! Int64
            }
            if dict.keys.contains("RoleId") {
                self.roleId = dict["RoleId"] as! String
            }
            if dict.keys.contains("RoleName") {
                self.roleName = dict["RoleName"] as! String
            }
        }
    }
    public var requestId: String?

    public var role: CreateRoleResponseBody.Role?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.role != nil {
            map["Role"] = self.role?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Role") {
            var model = CreateRoleResponseBody.Role()
            model.fromMap(dict["Role"] as! [String: Any])
            self.role = model
        }
    }
}

public class CreateRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRoleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateRoleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateUserRequest : Tea.TeaModel {
    public var comments: String?

    public var displayName: String?

    public var email: String?

    public var mobilePhone: String?

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
        if self.comments != nil {
            map["Comments"] = self.comments!
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.mobilePhone != nil {
            map["MobilePhone"] = self.mobilePhone!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Comments") {
            self.comments = dict["Comments"] as! String
        }
        if dict.keys.contains("DisplayName") {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("Email") {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("MobilePhone") {
            self.mobilePhone = dict["MobilePhone"] as! String
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class CreateUserResponseBody : Tea.TeaModel {
    public class User : Tea.TeaModel {
        public var comments: String?

        public var createDate: String?

        public var displayName: String?

        public var email: String?

        public var mobilePhone: String?

        public var userId: String?

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
            if self.comments != nil {
                map["Comments"] = self.comments!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.mobilePhone != nil {
                map["MobilePhone"] = self.mobilePhone!
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
            if dict.keys.contains("Comments") {
                self.comments = dict["Comments"] as! String
            }
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("DisplayName") {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("Email") {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("MobilePhone") {
                self.mobilePhone = dict["MobilePhone"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
            if dict.keys.contains("UserName") {
                self.userName = dict["UserName"] as! String
            }
        }
    }
    public var requestId: String?

    public var user: CreateUserResponseBody.User?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.user?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.user != nil {
            map["User"] = self.user?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("User") {
            var model = CreateUserResponseBody.User()
            model.fromMap(dict["User"] as! [String: Any])
            self.user = model
        }
    }
}

public class CreateUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateVirtualMFADeviceRequest : Tea.TeaModel {
    public var virtualMFADeviceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.virtualMFADeviceName != nil {
            map["VirtualMFADeviceName"] = self.virtualMFADeviceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("VirtualMFADeviceName") {
            self.virtualMFADeviceName = dict["VirtualMFADeviceName"] as! String
        }
    }
}

public class CreateVirtualMFADeviceResponseBody : Tea.TeaModel {
    public class VirtualMFADevice : Tea.TeaModel {
        public var base32StringSeed: String?

        public var QRCodePNG: String?

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
            if self.base32StringSeed != nil {
                map["Base32StringSeed"] = self.base32StringSeed!
            }
            if self.QRCodePNG != nil {
                map["QRCodePNG"] = self.QRCodePNG!
            }
            if self.serialNumber != nil {
                map["SerialNumber"] = self.serialNumber!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Base32StringSeed") {
                self.base32StringSeed = dict["Base32StringSeed"] as! String
            }
            if dict.keys.contains("QRCodePNG") {
                self.QRCodePNG = dict["QRCodePNG"] as! String
            }
            if dict.keys.contains("SerialNumber") {
                self.serialNumber = dict["SerialNumber"] as! String
            }
        }
    }
    public var requestId: String?

    public var virtualMFADevice: CreateVirtualMFADeviceResponseBody.VirtualMFADevice?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.virtualMFADevice?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.virtualMFADevice != nil {
            map["VirtualMFADevice"] = self.virtualMFADevice?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("VirtualMFADevice") {
            var model = CreateVirtualMFADeviceResponseBody.VirtualMFADevice()
            model.fromMap(dict["VirtualMFADevice"] as! [String: Any])
            self.virtualMFADevice = model
        }
    }
}

public class CreateVirtualMFADeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateVirtualMFADeviceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateVirtualMFADeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DecodeDiagnosticMessageRequest : Tea.TeaModel {
    public var encodedDiagnosticMessage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.encodedDiagnosticMessage != nil {
            map["EncodedDiagnosticMessage"] = self.encodedDiagnosticMessage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EncodedDiagnosticMessage") {
            self.encodedDiagnosticMessage = dict["EncodedDiagnosticMessage"] as! String
        }
    }
}

public class DecodeDiagnosticMessageResponseBody : Tea.TeaModel {
    public class DecodedDiagnosticMessage : Tea.TeaModel {
        public class AuthConditions : Tea.TeaModel {
            public var conditionKey: String?

            public var conditionValues: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.conditionKey != nil {
                    map["ConditionKey"] = self.conditionKey!
                }
                if self.conditionValues != nil {
                    map["ConditionValues"] = self.conditionValues!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConditionKey") {
                    self.conditionKey = dict["ConditionKey"] as! String
                }
                if dict.keys.contains("ConditionValues") {
                    self.conditionValues = dict["ConditionValues"] as! [String]
                }
            }
        }
        public class AuthPrincipal : Tea.TeaModel {
            public var authPrincipalDisplayName: String?

            public var authPrincipalOwnerId: String?

            public var authPrincipalType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.authPrincipalDisplayName != nil {
                    map["AuthPrincipalDisplayName"] = self.authPrincipalDisplayName!
                }
                if self.authPrincipalOwnerId != nil {
                    map["AuthPrincipalOwnerId"] = self.authPrincipalOwnerId!
                }
                if self.authPrincipalType != nil {
                    map["AuthPrincipalType"] = self.authPrincipalType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AuthPrincipalDisplayName") {
                    self.authPrincipalDisplayName = dict["AuthPrincipalDisplayName"] as! String
                }
                if dict.keys.contains("AuthPrincipalOwnerId") {
                    self.authPrincipalOwnerId = dict["AuthPrincipalOwnerId"] as! String
                }
                if dict.keys.contains("AuthPrincipalType") {
                    self.authPrincipalType = dict["AuthPrincipalType"] as! String
                }
            }
        }
        public class MatchedPolicies : Tea.TeaModel {
            public var attachedEntityType: String?

            public var attachedScope: String?

            public var effect: String?

            public var policyIdentifier: String?

            public var policyType: String?

            public var policyVersion: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.attachedEntityType != nil {
                    map["AttachedEntityType"] = self.attachedEntityType!
                }
                if self.attachedScope != nil {
                    map["AttachedScope"] = self.attachedScope!
                }
                if self.effect != nil {
                    map["Effect"] = self.effect!
                }
                if self.policyIdentifier != nil {
                    map["PolicyIdentifier"] = self.policyIdentifier!
                }
                if self.policyType != nil {
                    map["PolicyType"] = self.policyType!
                }
                if self.policyVersion != nil {
                    map["PolicyVersion"] = self.policyVersion!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AttachedEntityType") {
                    self.attachedEntityType = dict["AttachedEntityType"] as! String
                }
                if dict.keys.contains("AttachedScope") {
                    self.attachedScope = dict["AttachedScope"] as! String
                }
                if dict.keys.contains("Effect") {
                    self.effect = dict["Effect"] as! String
                }
                if dict.keys.contains("PolicyIdentifier") {
                    self.policyIdentifier = dict["PolicyIdentifier"] as! String
                }
                if dict.keys.contains("PolicyType") {
                    self.policyType = dict["PolicyType"] as! String
                }
                if dict.keys.contains("PolicyVersion") {
                    self.policyVersion = dict["PolicyVersion"] as! String
                }
            }
        }
        public var authAction: String?

        public var authConditions: [DecodeDiagnosticMessageResponseBody.DecodedDiagnosticMessage.AuthConditions]?

        public var authPrincipal: DecodeDiagnosticMessageResponseBody.DecodedDiagnosticMessage.AuthPrincipal?

        public var authResource: String?

        public var explicitDeny: Bool?

        public var matchedPolicies: [DecodeDiagnosticMessageResponseBody.DecodedDiagnosticMessage.MatchedPolicies]?

        public var noPermissionPolicyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.authPrincipal?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authAction != nil {
                map["AuthAction"] = self.authAction!
            }
            if self.authConditions != nil {
                var tmp : [Any] = []
                for k in self.authConditions! {
                    tmp.append(k.toMap())
                }
                map["AuthConditions"] = tmp
            }
            if self.authPrincipal != nil {
                map["AuthPrincipal"] = self.authPrincipal?.toMap()
            }
            if self.authResource != nil {
                map["AuthResource"] = self.authResource!
            }
            if self.explicitDeny != nil {
                map["ExplicitDeny"] = self.explicitDeny!
            }
            if self.matchedPolicies != nil {
                var tmp : [Any] = []
                for k in self.matchedPolicies! {
                    tmp.append(k.toMap())
                }
                map["MatchedPolicies"] = tmp
            }
            if self.noPermissionPolicyType != nil {
                map["NoPermissionPolicyType"] = self.noPermissionPolicyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthAction") {
                self.authAction = dict["AuthAction"] as! String
            }
            if dict.keys.contains("AuthConditions") {
                var tmp : [DecodeDiagnosticMessageResponseBody.DecodedDiagnosticMessage.AuthConditions] = []
                for v in dict["AuthConditions"] as! [Any] {
                    var model = DecodeDiagnosticMessageResponseBody.DecodedDiagnosticMessage.AuthConditions()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.authConditions = tmp
            }
            if dict.keys.contains("AuthPrincipal") {
                var model = DecodeDiagnosticMessageResponseBody.DecodedDiagnosticMessage.AuthPrincipal()
                model.fromMap(dict["AuthPrincipal"] as! [String: Any])
                self.authPrincipal = model
            }
            if dict.keys.contains("AuthResource") {
                self.authResource = dict["AuthResource"] as! String
            }
            if dict.keys.contains("ExplicitDeny") {
                self.explicitDeny = dict["ExplicitDeny"] as! Bool
            }
            if dict.keys.contains("MatchedPolicies") {
                var tmp : [DecodeDiagnosticMessageResponseBody.DecodedDiagnosticMessage.MatchedPolicies] = []
                for v in dict["MatchedPolicies"] as! [Any] {
                    var model = DecodeDiagnosticMessageResponseBody.DecodedDiagnosticMessage.MatchedPolicies()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.matchedPolicies = tmp
            }
            if dict.keys.contains("NoPermissionPolicyType") {
                self.noPermissionPolicyType = dict["NoPermissionPolicyType"] as! String
            }
        }
    }
    public var decodedDiagnosticMessage: DecodeDiagnosticMessageResponseBody.DecodedDiagnosticMessage?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.decodedDiagnosticMessage?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.decodedDiagnosticMessage != nil {
            map["DecodedDiagnosticMessage"] = self.decodedDiagnosticMessage?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DecodedDiagnosticMessage") {
            var model = DecodeDiagnosticMessageResponseBody.DecodedDiagnosticMessage()
            model.fromMap(dict["DecodedDiagnosticMessage"] as! [String: Any])
            self.decodedDiagnosticMessage = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DecodeDiagnosticMessageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DecodeDiagnosticMessageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DecodeDiagnosticMessageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAccessKeyRequest : Tea.TeaModel {
    public var userAccessKeyId: String?

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
        if self.userAccessKeyId != nil {
            map["UserAccessKeyId"] = self.userAccessKeyId!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserAccessKeyId") {
            self.userAccessKeyId = dict["UserAccessKeyId"] as! String
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class DeleteAccessKeyResponseBody : Tea.TeaModel {
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

public class DeleteAccessKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAccessKeyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteAccessKeyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteGroupRequest : Tea.TeaModel {
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
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
        }
    }
}

public class DeleteGroupResponseBody : Tea.TeaModel {
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

public class DeleteGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteLoginProfileRequest : Tea.TeaModel {
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
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class DeleteLoginProfileResponseBody : Tea.TeaModel {
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

public class DeleteLoginProfileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteLoginProfileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteLoginProfileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeletePolicyRequest : Tea.TeaModel {
    public var policyName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyName") {
            self.policyName = dict["PolicyName"] as! String
        }
    }
}

public class DeletePolicyResponseBody : Tea.TeaModel {
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

public class DeletePolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeletePolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeletePolicyVersionRequest : Tea.TeaModel {
    public var policyName: String?

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
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyName") {
            self.policyName = dict["PolicyName"] as! String
        }
        if dict.keys.contains("VersionId") {
            self.versionId = dict["VersionId"] as! String
        }
    }
}

public class DeletePolicyVersionResponseBody : Tea.TeaModel {
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

public class DeletePolicyVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePolicyVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeletePolicyVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteRoleRequest : Tea.TeaModel {
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
        if self.roleName != nil {
            map["RoleName"] = self.roleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RoleName") {
            self.roleName = dict["RoleName"] as! String
        }
    }
}

public class DeleteRoleResponseBody : Tea.TeaModel {
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

public class DeleteRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRoleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteRoleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteUserRequest : Tea.TeaModel {
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
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class DeleteUserResponseBody : Tea.TeaModel {
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

public class DeleteVirtualMFADeviceRequest : Tea.TeaModel {
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
        if self.serialNumber != nil {
            map["SerialNumber"] = self.serialNumber!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SerialNumber") {
            self.serialNumber = dict["SerialNumber"] as! String
        }
    }
}

public class DeleteVirtualMFADeviceResponseBody : Tea.TeaModel {
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

public class DeleteVirtualMFADeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVirtualMFADeviceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteVirtualMFADeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetachPolicyFromGroupRequest : Tea.TeaModel {
    public var groupName: String?

    public var policyName: String?

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
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        if self.policyType != nil {
            map["PolicyType"] = self.policyType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("PolicyName") {
            self.policyName = dict["PolicyName"] as! String
        }
        if dict.keys.contains("PolicyType") {
            self.policyType = dict["PolicyType"] as! String
        }
    }
}

public class DetachPolicyFromGroupResponseBody : Tea.TeaModel {
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

public class DetachPolicyFromGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetachPolicyFromGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DetachPolicyFromGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetachPolicyFromRoleRequest : Tea.TeaModel {
    public var policyName: String?

    public var policyType: String?

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
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        if self.policyType != nil {
            map["PolicyType"] = self.policyType!
        }
        if self.roleName != nil {
            map["RoleName"] = self.roleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyName") {
            self.policyName = dict["PolicyName"] as! String
        }
        if dict.keys.contains("PolicyType") {
            self.policyType = dict["PolicyType"] as! String
        }
        if dict.keys.contains("RoleName") {
            self.roleName = dict["RoleName"] as! String
        }
    }
}

public class DetachPolicyFromRoleResponseBody : Tea.TeaModel {
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

public class DetachPolicyFromRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetachPolicyFromRoleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DetachPolicyFromRoleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetachPolicyFromUserRequest : Tea.TeaModel {
    public var policyName: String?

    public var policyType: String?

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
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        if self.policyType != nil {
            map["PolicyType"] = self.policyType!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyName") {
            self.policyName = dict["PolicyName"] as! String
        }
        if dict.keys.contains("PolicyType") {
            self.policyType = dict["PolicyType"] as! String
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class DetachPolicyFromUserResponseBody : Tea.TeaModel {
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

public class DetachPolicyFromUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetachPolicyFromUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DetachPolicyFromUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAccessKeyLastUsedRequest : Tea.TeaModel {
    public var userAccessKeyId: String?

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
        if self.userAccessKeyId != nil {
            map["UserAccessKeyId"] = self.userAccessKeyId!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserAccessKeyId") {
            self.userAccessKeyId = dict["UserAccessKeyId"] as! String
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class GetAccessKeyLastUsedResponseBody : Tea.TeaModel {
    public class AccessKeyLastUsed : Tea.TeaModel {
        public var lastUsedDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.lastUsedDate != nil {
                map["LastUsedDate"] = self.lastUsedDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LastUsedDate") {
                self.lastUsedDate = dict["LastUsedDate"] as! String
            }
        }
    }
    public var accessKeyLastUsed: GetAccessKeyLastUsedResponseBody.AccessKeyLastUsed?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accessKeyLastUsed?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessKeyLastUsed != nil {
            map["AccessKeyLastUsed"] = self.accessKeyLastUsed?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessKeyLastUsed") {
            var model = GetAccessKeyLastUsedResponseBody.AccessKeyLastUsed()
            model.fromMap(dict["AccessKeyLastUsed"] as! [String: Any])
            self.accessKeyLastUsed = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAccessKeyLastUsedResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAccessKeyLastUsedResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetAccessKeyLastUsedResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAccountAliasResponseBody : Tea.TeaModel {
    public var accountAlias: String?

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
        if self.accountAlias != nil {
            map["AccountAlias"] = self.accountAlias!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountAlias") {
            self.accountAlias = dict["AccountAlias"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAccountAliasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAccountAliasResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetAccountAliasResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetGroupRequest : Tea.TeaModel {
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
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
        }
    }
}

public class GetGroupResponseBody : Tea.TeaModel {
    public class Group : Tea.TeaModel {
        public var comments: String?

        public var createDate: String?

        public var groupId: String?

        public var groupName: String?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.comments != nil {
                map["Comments"] = self.comments!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Comments") {
                self.comments = dict["Comments"] as! String
            }
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("GroupId") {
                self.groupId = dict["GroupId"] as! String
            }
            if dict.keys.contains("GroupName") {
                self.groupName = dict["GroupName"] as! String
            }
            if dict.keys.contains("UpdateDate") {
                self.updateDate = dict["UpdateDate"] as! String
            }
        }
    }
    public var group: GetGroupResponseBody.Group?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.group?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.group != nil {
            map["Group"] = self.group?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Group") {
            var model = GetGroupResponseBody.Group()
            model.fromMap(dict["Group"] as! [String: Any])
            self.group = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetLoginProfileRequest : Tea.TeaModel {
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
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class GetLoginProfileResponseBody : Tea.TeaModel {
    public class LoginProfile : Tea.TeaModel {
        public var createDate: String?

        public var MFABindRequired: Bool?

        public var passwordResetRequired: Bool?

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
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.MFABindRequired != nil {
                map["MFABindRequired"] = self.MFABindRequired!
            }
            if self.passwordResetRequired != nil {
                map["PasswordResetRequired"] = self.passwordResetRequired!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("MFABindRequired") {
                self.MFABindRequired = dict["MFABindRequired"] as! Bool
            }
            if dict.keys.contains("PasswordResetRequired") {
                self.passwordResetRequired = dict["PasswordResetRequired"] as! Bool
            }
            if dict.keys.contains("UserName") {
                self.userName = dict["UserName"] as! String
            }
        }
    }
    public var loginProfile: GetLoginProfileResponseBody.LoginProfile?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.loginProfile?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.loginProfile != nil {
            map["LoginProfile"] = self.loginProfile?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LoginProfile") {
            var model = GetLoginProfileResponseBody.LoginProfile()
            model.fromMap(dict["LoginProfile"] as! [String: Any])
            self.loginProfile = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetLoginProfileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLoginProfileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetLoginProfileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPasswordPolicyResponseBody : Tea.TeaModel {
    public class PasswordPolicy : Tea.TeaModel {
        public var hardExpiry: Bool?

        public var maxLoginAttemps: Int32?

        public var maxPasswordAge: Int32?

        public var minimumPasswordLength: Int32?

        public var passwordReusePrevention: Int32?

        public var requireLowercaseCharacters: Bool?

        public var requireNumbers: Bool?

        public var requireSymbols: Bool?

        public var requireUppercaseCharacters: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hardExpiry != nil {
                map["HardExpiry"] = self.hardExpiry!
            }
            if self.maxLoginAttemps != nil {
                map["MaxLoginAttemps"] = self.maxLoginAttemps!
            }
            if self.maxPasswordAge != nil {
                map["MaxPasswordAge"] = self.maxPasswordAge!
            }
            if self.minimumPasswordLength != nil {
                map["MinimumPasswordLength"] = self.minimumPasswordLength!
            }
            if self.passwordReusePrevention != nil {
                map["PasswordReusePrevention"] = self.passwordReusePrevention!
            }
            if self.requireLowercaseCharacters != nil {
                map["RequireLowercaseCharacters"] = self.requireLowercaseCharacters!
            }
            if self.requireNumbers != nil {
                map["RequireNumbers"] = self.requireNumbers!
            }
            if self.requireSymbols != nil {
                map["RequireSymbols"] = self.requireSymbols!
            }
            if self.requireUppercaseCharacters != nil {
                map["RequireUppercaseCharacters"] = self.requireUppercaseCharacters!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HardExpiry") {
                self.hardExpiry = dict["HardExpiry"] as! Bool
            }
            if dict.keys.contains("MaxLoginAttemps") {
                self.maxLoginAttemps = dict["MaxLoginAttemps"] as! Int32
            }
            if dict.keys.contains("MaxPasswordAge") {
                self.maxPasswordAge = dict["MaxPasswordAge"] as! Int32
            }
            if dict.keys.contains("MinimumPasswordLength") {
                self.minimumPasswordLength = dict["MinimumPasswordLength"] as! Int32
            }
            if dict.keys.contains("PasswordReusePrevention") {
                self.passwordReusePrevention = dict["PasswordReusePrevention"] as! Int32
            }
            if dict.keys.contains("RequireLowercaseCharacters") {
                self.requireLowercaseCharacters = dict["RequireLowercaseCharacters"] as! Bool
            }
            if dict.keys.contains("RequireNumbers") {
                self.requireNumbers = dict["RequireNumbers"] as! Bool
            }
            if dict.keys.contains("RequireSymbols") {
                self.requireSymbols = dict["RequireSymbols"] as! Bool
            }
            if dict.keys.contains("RequireUppercaseCharacters") {
                self.requireUppercaseCharacters = dict["RequireUppercaseCharacters"] as! Bool
            }
        }
    }
    public var passwordPolicy: GetPasswordPolicyResponseBody.PasswordPolicy?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.passwordPolicy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.passwordPolicy != nil {
            map["PasswordPolicy"] = self.passwordPolicy?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PasswordPolicy") {
            var model = GetPasswordPolicyResponseBody.PasswordPolicy()
            model.fromMap(dict["PasswordPolicy"] as! [String: Any])
            self.passwordPolicy = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetPasswordPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPasswordPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetPasswordPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPolicyRequest : Tea.TeaModel {
    public var policyName: String?

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
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        if self.policyType != nil {
            map["PolicyType"] = self.policyType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyName") {
            self.policyName = dict["PolicyName"] as! String
        }
        if dict.keys.contains("PolicyType") {
            self.policyType = dict["PolicyType"] as! String
        }
    }
}

public class GetPolicyResponseBody : Tea.TeaModel {
    public class DefaultPolicyVersion : Tea.TeaModel {
        public var createDate: String?

        public var isDefaultVersion: Bool?

        public var policyDocument: String?

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
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.isDefaultVersion != nil {
                map["IsDefaultVersion"] = self.isDefaultVersion!
            }
            if self.policyDocument != nil {
                map["PolicyDocument"] = self.policyDocument!
            }
            if self.versionId != nil {
                map["VersionId"] = self.versionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("IsDefaultVersion") {
                self.isDefaultVersion = dict["IsDefaultVersion"] as! Bool
            }
            if dict.keys.contains("PolicyDocument") {
                self.policyDocument = dict["PolicyDocument"] as! String
            }
            if dict.keys.contains("VersionId") {
                self.versionId = dict["VersionId"] as! String
            }
        }
    }
    public class Policy : Tea.TeaModel {
        public var attachmentCount: Int32?

        public var createDate: String?

        public var defaultVersion: String?

        public var description_: String?

        public var policyDocument: String?

        public var policyName: String?

        public var policyType: String?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attachmentCount != nil {
                map["AttachmentCount"] = self.attachmentCount!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.defaultVersion != nil {
                map["DefaultVersion"] = self.defaultVersion!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.policyDocument != nil {
                map["PolicyDocument"] = self.policyDocument!
            }
            if self.policyName != nil {
                map["PolicyName"] = self.policyName!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AttachmentCount") {
                self.attachmentCount = dict["AttachmentCount"] as! Int32
            }
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("DefaultVersion") {
                self.defaultVersion = dict["DefaultVersion"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("PolicyDocument") {
                self.policyDocument = dict["PolicyDocument"] as! String
            }
            if dict.keys.contains("PolicyName") {
                self.policyName = dict["PolicyName"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
            if dict.keys.contains("UpdateDate") {
                self.updateDate = dict["UpdateDate"] as! String
            }
        }
    }
    public var defaultPolicyVersion: GetPolicyResponseBody.DefaultPolicyVersion?

    public var policy: GetPolicyResponseBody.Policy?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.defaultPolicyVersion?.validate()
        try self.policy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.defaultPolicyVersion != nil {
            map["DefaultPolicyVersion"] = self.defaultPolicyVersion?.toMap()
        }
        if self.policy != nil {
            map["Policy"] = self.policy?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DefaultPolicyVersion") {
            var model = GetPolicyResponseBody.DefaultPolicyVersion()
            model.fromMap(dict["DefaultPolicyVersion"] as! [String: Any])
            self.defaultPolicyVersion = model
        }
        if dict.keys.contains("Policy") {
            var model = GetPolicyResponseBody.Policy()
            model.fromMap(dict["Policy"] as! [String: Any])
            self.policy = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPolicyVersionRequest : Tea.TeaModel {
    public var policyName: String?

    public var policyType: String?

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
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        if self.policyType != nil {
            map["PolicyType"] = self.policyType!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyName") {
            self.policyName = dict["PolicyName"] as! String
        }
        if dict.keys.contains("PolicyType") {
            self.policyType = dict["PolicyType"] as! String
        }
        if dict.keys.contains("VersionId") {
            self.versionId = dict["VersionId"] as! String
        }
    }
}

public class GetPolicyVersionResponseBody : Tea.TeaModel {
    public class PolicyVersion : Tea.TeaModel {
        public var createDate: String?

        public var isDefaultVersion: Bool?

        public var policyDocument: String?

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
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.isDefaultVersion != nil {
                map["IsDefaultVersion"] = self.isDefaultVersion!
            }
            if self.policyDocument != nil {
                map["PolicyDocument"] = self.policyDocument!
            }
            if self.versionId != nil {
                map["VersionId"] = self.versionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("IsDefaultVersion") {
                self.isDefaultVersion = dict["IsDefaultVersion"] as! Bool
            }
            if dict.keys.contains("PolicyDocument") {
                self.policyDocument = dict["PolicyDocument"] as! String
            }
            if dict.keys.contains("VersionId") {
                self.versionId = dict["VersionId"] as! String
            }
        }
    }
    public var policyVersion: GetPolicyVersionResponseBody.PolicyVersion?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.policyVersion?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policyVersion != nil {
            map["PolicyVersion"] = self.policyVersion?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyVersion") {
            var model = GetPolicyVersionResponseBody.PolicyVersion()
            model.fromMap(dict["PolicyVersion"] as! [String: Any])
            self.policyVersion = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetPolicyVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPolicyVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetPolicyVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetRoleRequest : Tea.TeaModel {
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
        if self.roleName != nil {
            map["RoleName"] = self.roleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RoleName") {
            self.roleName = dict["RoleName"] as! String
        }
    }
}

public class GetRoleResponseBody : Tea.TeaModel {
    public class Role : Tea.TeaModel {
        public var arn: String?

        public var assumeRolePolicyDocument: String?

        public var createDate: String?

        public var description_: String?

        public var maxSessionDuration: Int64?

        public var roleId: String?

        public var roleName: String?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.arn != nil {
                map["Arn"] = self.arn!
            }
            if self.assumeRolePolicyDocument != nil {
                map["AssumeRolePolicyDocument"] = self.assumeRolePolicyDocument!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.maxSessionDuration != nil {
                map["MaxSessionDuration"] = self.maxSessionDuration!
            }
            if self.roleId != nil {
                map["RoleId"] = self.roleId!
            }
            if self.roleName != nil {
                map["RoleName"] = self.roleName!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Arn") {
                self.arn = dict["Arn"] as! String
            }
            if dict.keys.contains("AssumeRolePolicyDocument") {
                self.assumeRolePolicyDocument = dict["AssumeRolePolicyDocument"] as! String
            }
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("MaxSessionDuration") {
                self.maxSessionDuration = dict["MaxSessionDuration"] as! Int64
            }
            if dict.keys.contains("RoleId") {
                self.roleId = dict["RoleId"] as! String
            }
            if dict.keys.contains("RoleName") {
                self.roleName = dict["RoleName"] as! String
            }
            if dict.keys.contains("UpdateDate") {
                self.updateDate = dict["UpdateDate"] as! String
            }
        }
    }
    public var requestId: String?

    public var role: GetRoleResponseBody.Role?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.role != nil {
            map["Role"] = self.role?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Role") {
            var model = GetRoleResponseBody.Role()
            model.fromMap(dict["Role"] as! [String: Any])
            self.role = model
        }
    }
}

public class GetRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRoleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetRoleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSecurityPreferenceResponseBody : Tea.TeaModel {
    public class SecurityPreference : Tea.TeaModel {
        public class AccessKeyPreference : Tea.TeaModel {
            public var allowUserToManageAccessKeys: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allowUserToManageAccessKeys != nil {
                    map["AllowUserToManageAccessKeys"] = self.allowUserToManageAccessKeys!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AllowUserToManageAccessKeys") {
                    self.allowUserToManageAccessKeys = dict["AllowUserToManageAccessKeys"] as! Bool
                }
            }
        }
        public class LoginProfilePreference : Tea.TeaModel {
            public var allowUserToChangePassword: Bool?

            public var enableSaveMFATicket: Bool?

            public var loginNetworkMasks: String?

            public var loginSessionDuration: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allowUserToChangePassword != nil {
                    map["AllowUserToChangePassword"] = self.allowUserToChangePassword!
                }
                if self.enableSaveMFATicket != nil {
                    map["EnableSaveMFATicket"] = self.enableSaveMFATicket!
                }
                if self.loginNetworkMasks != nil {
                    map["LoginNetworkMasks"] = self.loginNetworkMasks!
                }
                if self.loginSessionDuration != nil {
                    map["LoginSessionDuration"] = self.loginSessionDuration!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AllowUserToChangePassword") {
                    self.allowUserToChangePassword = dict["AllowUserToChangePassword"] as! Bool
                }
                if dict.keys.contains("EnableSaveMFATicket") {
                    self.enableSaveMFATicket = dict["EnableSaveMFATicket"] as! Bool
                }
                if dict.keys.contains("LoginNetworkMasks") {
                    self.loginNetworkMasks = dict["LoginNetworkMasks"] as! String
                }
                if dict.keys.contains("LoginSessionDuration") {
                    self.loginSessionDuration = dict["LoginSessionDuration"] as! Int32
                }
            }
        }
        public class MFAPreference : Tea.TeaModel {
            public var allowUserToManageMFADevices: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allowUserToManageMFADevices != nil {
                    map["AllowUserToManageMFADevices"] = self.allowUserToManageMFADevices!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AllowUserToManageMFADevices") {
                    self.allowUserToManageMFADevices = dict["AllowUserToManageMFADevices"] as! Bool
                }
            }
        }
        public class PublicKeyPreference : Tea.TeaModel {
            public var allowUserToManagePublicKeys: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allowUserToManagePublicKeys != nil {
                    map["AllowUserToManagePublicKeys"] = self.allowUserToManagePublicKeys!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AllowUserToManagePublicKeys") {
                    self.allowUserToManagePublicKeys = dict["AllowUserToManagePublicKeys"] as! Bool
                }
            }
        }
        public var accessKeyPreference: GetSecurityPreferenceResponseBody.SecurityPreference.AccessKeyPreference?

        public var loginProfilePreference: GetSecurityPreferenceResponseBody.SecurityPreference.LoginProfilePreference?

        public var MFAPreference: GetSecurityPreferenceResponseBody.SecurityPreference.MFAPreference?

        public var publicKeyPreference: GetSecurityPreferenceResponseBody.SecurityPreference.PublicKeyPreference?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.accessKeyPreference?.validate()
            try self.loginProfilePreference?.validate()
            try self.MFAPreference?.validate()
            try self.publicKeyPreference?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessKeyPreference != nil {
                map["AccessKeyPreference"] = self.accessKeyPreference?.toMap()
            }
            if self.loginProfilePreference != nil {
                map["LoginProfilePreference"] = self.loginProfilePreference?.toMap()
            }
            if self.MFAPreference != nil {
                map["MFAPreference"] = self.MFAPreference?.toMap()
            }
            if self.publicKeyPreference != nil {
                map["PublicKeyPreference"] = self.publicKeyPreference?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessKeyPreference") {
                var model = GetSecurityPreferenceResponseBody.SecurityPreference.AccessKeyPreference()
                model.fromMap(dict["AccessKeyPreference"] as! [String: Any])
                self.accessKeyPreference = model
            }
            if dict.keys.contains("LoginProfilePreference") {
                var model = GetSecurityPreferenceResponseBody.SecurityPreference.LoginProfilePreference()
                model.fromMap(dict["LoginProfilePreference"] as! [String: Any])
                self.loginProfilePreference = model
            }
            if dict.keys.contains("MFAPreference") {
                var model = GetSecurityPreferenceResponseBody.SecurityPreference.MFAPreference()
                model.fromMap(dict["MFAPreference"] as! [String: Any])
                self.MFAPreference = model
            }
            if dict.keys.contains("PublicKeyPreference") {
                var model = GetSecurityPreferenceResponseBody.SecurityPreference.PublicKeyPreference()
                model.fromMap(dict["PublicKeyPreference"] as! [String: Any])
                self.publicKeyPreference = model
            }
        }
    }
    public var requestId: String?

    public var securityPreference: GetSecurityPreferenceResponseBody.SecurityPreference?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.securityPreference?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.securityPreference != nil {
            map["SecurityPreference"] = self.securityPreference?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecurityPreference") {
            var model = GetSecurityPreferenceResponseBody.SecurityPreference()
            model.fromMap(dict["SecurityPreference"] as! [String: Any])
            self.securityPreference = model
        }
    }
}

public class GetSecurityPreferenceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSecurityPreferenceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetSecurityPreferenceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserRequest : Tea.TeaModel {
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
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class GetUserResponseBody : Tea.TeaModel {
    public class User : Tea.TeaModel {
        public var comments: String?

        public var createDate: String?

        public var displayName: String?

        public var email: String?

        public var lastLoginDate: String?

        public var mobilePhone: String?

        public var updateDate: String?

        public var userId: String?

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
            if self.comments != nil {
                map["Comments"] = self.comments!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.lastLoginDate != nil {
                map["LastLoginDate"] = self.lastLoginDate!
            }
            if self.mobilePhone != nil {
                map["MobilePhone"] = self.mobilePhone!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
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
            if dict.keys.contains("Comments") {
                self.comments = dict["Comments"] as! String
            }
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("DisplayName") {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("Email") {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("LastLoginDate") {
                self.lastLoginDate = dict["LastLoginDate"] as! String
            }
            if dict.keys.contains("MobilePhone") {
                self.mobilePhone = dict["MobilePhone"] as! String
            }
            if dict.keys.contains("UpdateDate") {
                self.updateDate = dict["UpdateDate"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
            if dict.keys.contains("UserName") {
                self.userName = dict["UserName"] as! String
            }
        }
    }
    public var requestId: String?

    public var user: GetUserResponseBody.User?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.user?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.user != nil {
            map["User"] = self.user?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("User") {
            var model = GetUserResponseBody.User()
            model.fromMap(dict["User"] as! [String: Any])
            self.user = model
        }
    }
}

public class GetUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserMFAInfoRequest : Tea.TeaModel {
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
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class GetUserMFAInfoResponseBody : Tea.TeaModel {
    public class MFADevice : Tea.TeaModel {
        public var serialNumber: String?

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
            if self.serialNumber != nil {
                map["SerialNumber"] = self.serialNumber!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SerialNumber") {
                self.serialNumber = dict["SerialNumber"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var MFADevice: GetUserMFAInfoResponseBody.MFADevice?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.MFADevice?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.MFADevice != nil {
            map["MFADevice"] = self.MFADevice?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MFADevice") {
            var model = GetUserMFAInfoResponseBody.MFADevice()
            model.fromMap(dict["MFADevice"] as! [String: Any])
            self.MFADevice = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetUserMFAInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserMFAInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetUserMFAInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAccessKeysRequest : Tea.TeaModel {
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
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class ListAccessKeysResponseBody : Tea.TeaModel {
    public class AccessKeys : Tea.TeaModel {
        public class AccessKey : Tea.TeaModel {
            public var accessKeyId: String?

            public var createDate: String?

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
                if self.accessKeyId != nil {
                    map["AccessKeyId"] = self.accessKeyId!
                }
                if self.createDate != nil {
                    map["CreateDate"] = self.createDate!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccessKeyId") {
                    self.accessKeyId = dict["AccessKeyId"] as! String
                }
                if dict.keys.contains("CreateDate") {
                    self.createDate = dict["CreateDate"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public var accessKey: [ListAccessKeysResponseBody.AccessKeys.AccessKey]?

        public override init() {
            super.init()
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
                var tmp : [Any] = []
                for k in self.accessKey! {
                    tmp.append(k.toMap())
                }
                map["AccessKey"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessKey") {
                var tmp : [ListAccessKeysResponseBody.AccessKeys.AccessKey] = []
                for v in dict["AccessKey"] as! [Any] {
                    var model = ListAccessKeysResponseBody.AccessKeys.AccessKey()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.accessKey = tmp
            }
        }
    }
    public var accessKeys: ListAccessKeysResponseBody.AccessKeys?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accessKeys?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessKeys != nil {
            map["AccessKeys"] = self.accessKeys?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessKeys") {
            var model = ListAccessKeysResponseBody.AccessKeys()
            model.fromMap(dict["AccessKeys"] as! [String: Any])
            self.accessKeys = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListAccessKeysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAccessKeysResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListAccessKeysResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListEntitiesForPolicyRequest : Tea.TeaModel {
    public var policyName: String?

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
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        if self.policyType != nil {
            map["PolicyType"] = self.policyType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyName") {
            self.policyName = dict["PolicyName"] as! String
        }
        if dict.keys.contains("PolicyType") {
            self.policyType = dict["PolicyType"] as! String
        }
    }
}

public class ListEntitiesForPolicyResponseBody : Tea.TeaModel {
    public class Groups : Tea.TeaModel {
        public class Group : Tea.TeaModel {
            public var attachDate: String?

            public var comments: String?

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
                if self.attachDate != nil {
                    map["AttachDate"] = self.attachDate!
                }
                if self.comments != nil {
                    map["Comments"] = self.comments!
                }
                if self.groupName != nil {
                    map["GroupName"] = self.groupName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AttachDate") {
                    self.attachDate = dict["AttachDate"] as! String
                }
                if dict.keys.contains("Comments") {
                    self.comments = dict["Comments"] as! String
                }
                if dict.keys.contains("GroupName") {
                    self.groupName = dict["GroupName"] as! String
                }
            }
        }
        public var group: [ListEntitiesForPolicyResponseBody.Groups.Group]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.group != nil {
                var tmp : [Any] = []
                for k in self.group! {
                    tmp.append(k.toMap())
                }
                map["Group"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Group") {
                var tmp : [ListEntitiesForPolicyResponseBody.Groups.Group] = []
                for v in dict["Group"] as! [Any] {
                    var model = ListEntitiesForPolicyResponseBody.Groups.Group()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.group = tmp
            }
        }
    }
    public class Roles : Tea.TeaModel {
        public class Role : Tea.TeaModel {
            public var arn: String?

            public var attachDate: String?

            public var description_: String?

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
                if self.arn != nil {
                    map["Arn"] = self.arn!
                }
                if self.attachDate != nil {
                    map["AttachDate"] = self.attachDate!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
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
                if dict.keys.contains("Arn") {
                    self.arn = dict["Arn"] as! String
                }
                if dict.keys.contains("AttachDate") {
                    self.attachDate = dict["AttachDate"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("RoleId") {
                    self.roleId = dict["RoleId"] as! String
                }
                if dict.keys.contains("RoleName") {
                    self.roleName = dict["RoleName"] as! String
                }
            }
        }
        public var role: [ListEntitiesForPolicyResponseBody.Roles.Role]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.role != nil {
                var tmp : [Any] = []
                for k in self.role! {
                    tmp.append(k.toMap())
                }
                map["Role"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Role") {
                var tmp : [ListEntitiesForPolicyResponseBody.Roles.Role] = []
                for v in dict["Role"] as! [Any] {
                    var model = ListEntitiesForPolicyResponseBody.Roles.Role()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.role = tmp
            }
        }
    }
    public class Users : Tea.TeaModel {
        public class User : Tea.TeaModel {
            public var attachDate: String?

            public var displayName: String?

            public var userId: String?

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
                if self.attachDate != nil {
                    map["AttachDate"] = self.attachDate!
                }
                if self.displayName != nil {
                    map["DisplayName"] = self.displayName!
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
                if dict.keys.contains("AttachDate") {
                    self.attachDate = dict["AttachDate"] as! String
                }
                if dict.keys.contains("DisplayName") {
                    self.displayName = dict["DisplayName"] as! String
                }
                if dict.keys.contains("UserId") {
                    self.userId = dict["UserId"] as! String
                }
                if dict.keys.contains("UserName") {
                    self.userName = dict["UserName"] as! String
                }
            }
        }
        public var user: [ListEntitiesForPolicyResponseBody.Users.User]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.user != nil {
                var tmp : [Any] = []
                for k in self.user! {
                    tmp.append(k.toMap())
                }
                map["User"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("User") {
                var tmp : [ListEntitiesForPolicyResponseBody.Users.User] = []
                for v in dict["User"] as! [Any] {
                    var model = ListEntitiesForPolicyResponseBody.Users.User()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.user = tmp
            }
        }
    }
    public var groups: ListEntitiesForPolicyResponseBody.Groups?

    public var requestId: String?

    public var roles: ListEntitiesForPolicyResponseBody.Roles?

    public var users: ListEntitiesForPolicyResponseBody.Users?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.groups?.validate()
        try self.roles?.validate()
        try self.users?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groups != nil {
            map["Groups"] = self.groups?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.roles != nil {
            map["Roles"] = self.roles?.toMap()
        }
        if self.users != nil {
            map["Users"] = self.users?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Groups") {
            var model = ListEntitiesForPolicyResponseBody.Groups()
            model.fromMap(dict["Groups"] as! [String: Any])
            self.groups = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Roles") {
            var model = ListEntitiesForPolicyResponseBody.Roles()
            model.fromMap(dict["Roles"] as! [String: Any])
            self.roles = model
        }
        if dict.keys.contains("Users") {
            var model = ListEntitiesForPolicyResponseBody.Users()
            model.fromMap(dict["Users"] as! [String: Any])
            self.users = model
        }
    }
}

public class ListEntitiesForPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListEntitiesForPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListEntitiesForPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListGroupsRequest : Tea.TeaModel {
    public var marker: String?

    public var maxItems: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.maxItems != nil {
            map["MaxItems"] = self.maxItems!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Marker") {
            self.marker = dict["Marker"] as! String
        }
        if dict.keys.contains("MaxItems") {
            self.maxItems = dict["MaxItems"] as! Int32
        }
    }
}

public class ListGroupsResponseBody : Tea.TeaModel {
    public class Groups : Tea.TeaModel {
        public class Group : Tea.TeaModel {
            public var comments: String?

            public var createDate: String?

            public var groupId: String?

            public var groupName: String?

            public var updateDate: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.comments != nil {
                    map["Comments"] = self.comments!
                }
                if self.createDate != nil {
                    map["CreateDate"] = self.createDate!
                }
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                if self.groupName != nil {
                    map["GroupName"] = self.groupName!
                }
                if self.updateDate != nil {
                    map["UpdateDate"] = self.updateDate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Comments") {
                    self.comments = dict["Comments"] as! String
                }
                if dict.keys.contains("CreateDate") {
                    self.createDate = dict["CreateDate"] as! String
                }
                if dict.keys.contains("GroupId") {
                    self.groupId = dict["GroupId"] as! String
                }
                if dict.keys.contains("GroupName") {
                    self.groupName = dict["GroupName"] as! String
                }
                if dict.keys.contains("UpdateDate") {
                    self.updateDate = dict["UpdateDate"] as! String
                }
            }
        }
        public var group: [ListGroupsResponseBody.Groups.Group]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.group != nil {
                var tmp : [Any] = []
                for k in self.group! {
                    tmp.append(k.toMap())
                }
                map["Group"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Group") {
                var tmp : [ListGroupsResponseBody.Groups.Group] = []
                for v in dict["Group"] as! [Any] {
                    var model = ListGroupsResponseBody.Groups.Group()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.group = tmp
            }
        }
    }
    public var groups: ListGroupsResponseBody.Groups?

    public var isTruncated: Bool?

    public var marker: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.groups?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groups != nil {
            map["Groups"] = self.groups?.toMap()
        }
        if self.isTruncated != nil {
            map["IsTruncated"] = self.isTruncated!
        }
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Groups") {
            var model = ListGroupsResponseBody.Groups()
            model.fromMap(dict["Groups"] as! [String: Any])
            self.groups = model
        }
        if dict.keys.contains("IsTruncated") {
            self.isTruncated = dict["IsTruncated"] as! Bool
        }
        if dict.keys.contains("Marker") {
            self.marker = dict["Marker"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListGroupsForUserRequest : Tea.TeaModel {
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
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class ListGroupsForUserResponseBody : Tea.TeaModel {
    public class Groups : Tea.TeaModel {
        public class Group : Tea.TeaModel {
            public var comments: String?

            public var groupId: String?

            public var groupName: String?

            public var joinDate: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.comments != nil {
                    map["Comments"] = self.comments!
                }
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                if self.groupName != nil {
                    map["GroupName"] = self.groupName!
                }
                if self.joinDate != nil {
                    map["JoinDate"] = self.joinDate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Comments") {
                    self.comments = dict["Comments"] as! String
                }
                if dict.keys.contains("GroupId") {
                    self.groupId = dict["GroupId"] as! String
                }
                if dict.keys.contains("GroupName") {
                    self.groupName = dict["GroupName"] as! String
                }
                if dict.keys.contains("JoinDate") {
                    self.joinDate = dict["JoinDate"] as! String
                }
            }
        }
        public var group: [ListGroupsForUserResponseBody.Groups.Group]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.group != nil {
                var tmp : [Any] = []
                for k in self.group! {
                    tmp.append(k.toMap())
                }
                map["Group"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Group") {
                var tmp : [ListGroupsForUserResponseBody.Groups.Group] = []
                for v in dict["Group"] as! [Any] {
                    var model = ListGroupsForUserResponseBody.Groups.Group()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.group = tmp
            }
        }
    }
    public var groups: ListGroupsForUserResponseBody.Groups?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.groups?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groups != nil {
            map["Groups"] = self.groups?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Groups") {
            var model = ListGroupsForUserResponseBody.Groups()
            model.fromMap(dict["Groups"] as! [String: Any])
            self.groups = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListGroupsForUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGroupsForUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListGroupsForUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPoliciesRequest : Tea.TeaModel {
    public var marker: String?

    public var maxItems: Int32?

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
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.maxItems != nil {
            map["MaxItems"] = self.maxItems!
        }
        if self.policyType != nil {
            map["PolicyType"] = self.policyType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Marker") {
            self.marker = dict["Marker"] as! String
        }
        if dict.keys.contains("MaxItems") {
            self.maxItems = dict["MaxItems"] as! Int32
        }
        if dict.keys.contains("PolicyType") {
            self.policyType = dict["PolicyType"] as! String
        }
    }
}

public class ListPoliciesResponseBody : Tea.TeaModel {
    public class Policies : Tea.TeaModel {
        public class Policy : Tea.TeaModel {
            public var attachmentCount: Int32?

            public var createDate: String?

            public var defaultVersion: String?

            public var description_: String?

            public var policyName: String?

            public var policyType: String?

            public var updateDate: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.attachmentCount != nil {
                    map["AttachmentCount"] = self.attachmentCount!
                }
                if self.createDate != nil {
                    map["CreateDate"] = self.createDate!
                }
                if self.defaultVersion != nil {
                    map["DefaultVersion"] = self.defaultVersion!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.policyName != nil {
                    map["PolicyName"] = self.policyName!
                }
                if self.policyType != nil {
                    map["PolicyType"] = self.policyType!
                }
                if self.updateDate != nil {
                    map["UpdateDate"] = self.updateDate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AttachmentCount") {
                    self.attachmentCount = dict["AttachmentCount"] as! Int32
                }
                if dict.keys.contains("CreateDate") {
                    self.createDate = dict["CreateDate"] as! String
                }
                if dict.keys.contains("DefaultVersion") {
                    self.defaultVersion = dict["DefaultVersion"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("PolicyName") {
                    self.policyName = dict["PolicyName"] as! String
                }
                if dict.keys.contains("PolicyType") {
                    self.policyType = dict["PolicyType"] as! String
                }
                if dict.keys.contains("UpdateDate") {
                    self.updateDate = dict["UpdateDate"] as! String
                }
            }
        }
        public var policy: [ListPoliciesResponseBody.Policies.Policy]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.policy != nil {
                var tmp : [Any] = []
                for k in self.policy! {
                    tmp.append(k.toMap())
                }
                map["Policy"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Policy") {
                var tmp : [ListPoliciesResponseBody.Policies.Policy] = []
                for v in dict["Policy"] as! [Any] {
                    var model = ListPoliciesResponseBody.Policies.Policy()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.policy = tmp
            }
        }
    }
    public var isTruncated: Bool?

    public var marker: String?

    public var policies: ListPoliciesResponseBody.Policies?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.policies?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isTruncated != nil {
            map["IsTruncated"] = self.isTruncated!
        }
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.policies != nil {
            map["Policies"] = self.policies?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsTruncated") {
            self.isTruncated = dict["IsTruncated"] as! Bool
        }
        if dict.keys.contains("Marker") {
            self.marker = dict["Marker"] as! String
        }
        if dict.keys.contains("Policies") {
            var model = ListPoliciesResponseBody.Policies()
            model.fromMap(dict["Policies"] as! [String: Any])
            self.policies = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListPoliciesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPoliciesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListPoliciesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPoliciesForGroupRequest : Tea.TeaModel {
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
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
        }
    }
}

public class ListPoliciesForGroupResponseBody : Tea.TeaModel {
    public class Policies : Tea.TeaModel {
        public class Policy : Tea.TeaModel {
            public var attachDate: String?

            public var defaultVersion: String?

            public var description_: String?

            public var policyName: String?

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
                if self.attachDate != nil {
                    map["AttachDate"] = self.attachDate!
                }
                if self.defaultVersion != nil {
                    map["DefaultVersion"] = self.defaultVersion!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.policyName != nil {
                    map["PolicyName"] = self.policyName!
                }
                if self.policyType != nil {
                    map["PolicyType"] = self.policyType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AttachDate") {
                    self.attachDate = dict["AttachDate"] as! String
                }
                if dict.keys.contains("DefaultVersion") {
                    self.defaultVersion = dict["DefaultVersion"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("PolicyName") {
                    self.policyName = dict["PolicyName"] as! String
                }
                if dict.keys.contains("PolicyType") {
                    self.policyType = dict["PolicyType"] as! String
                }
            }
        }
        public var policy: [ListPoliciesForGroupResponseBody.Policies.Policy]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.policy != nil {
                var tmp : [Any] = []
                for k in self.policy! {
                    tmp.append(k.toMap())
                }
                map["Policy"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Policy") {
                var tmp : [ListPoliciesForGroupResponseBody.Policies.Policy] = []
                for v in dict["Policy"] as! [Any] {
                    var model = ListPoliciesForGroupResponseBody.Policies.Policy()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.policy = tmp
            }
        }
    }
    public var policies: ListPoliciesForGroupResponseBody.Policies?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.policies?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policies != nil {
            map["Policies"] = self.policies?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Policies") {
            var model = ListPoliciesForGroupResponseBody.Policies()
            model.fromMap(dict["Policies"] as! [String: Any])
            self.policies = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListPoliciesForGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPoliciesForGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListPoliciesForGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPoliciesForRoleRequest : Tea.TeaModel {
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
        if self.roleName != nil {
            map["RoleName"] = self.roleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RoleName") {
            self.roleName = dict["RoleName"] as! String
        }
    }
}

public class ListPoliciesForRoleResponseBody : Tea.TeaModel {
    public class Policies : Tea.TeaModel {
        public class Policy : Tea.TeaModel {
            public var attachDate: String?

            public var defaultVersion: String?

            public var description_: String?

            public var policyName: String?

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
                if self.attachDate != nil {
                    map["AttachDate"] = self.attachDate!
                }
                if self.defaultVersion != nil {
                    map["DefaultVersion"] = self.defaultVersion!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.policyName != nil {
                    map["PolicyName"] = self.policyName!
                }
                if self.policyType != nil {
                    map["PolicyType"] = self.policyType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AttachDate") {
                    self.attachDate = dict["AttachDate"] as! String
                }
                if dict.keys.contains("DefaultVersion") {
                    self.defaultVersion = dict["DefaultVersion"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("PolicyName") {
                    self.policyName = dict["PolicyName"] as! String
                }
                if dict.keys.contains("PolicyType") {
                    self.policyType = dict["PolicyType"] as! String
                }
            }
        }
        public var policy: [ListPoliciesForRoleResponseBody.Policies.Policy]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.policy != nil {
                var tmp : [Any] = []
                for k in self.policy! {
                    tmp.append(k.toMap())
                }
                map["Policy"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Policy") {
                var tmp : [ListPoliciesForRoleResponseBody.Policies.Policy] = []
                for v in dict["Policy"] as! [Any] {
                    var model = ListPoliciesForRoleResponseBody.Policies.Policy()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.policy = tmp
            }
        }
    }
    public var policies: ListPoliciesForRoleResponseBody.Policies?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.policies?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policies != nil {
            map["Policies"] = self.policies?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Policies") {
            var model = ListPoliciesForRoleResponseBody.Policies()
            model.fromMap(dict["Policies"] as! [String: Any])
            self.policies = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListPoliciesForRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPoliciesForRoleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListPoliciesForRoleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPoliciesForUserRequest : Tea.TeaModel {
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
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class ListPoliciesForUserResponseBody : Tea.TeaModel {
    public class Policies : Tea.TeaModel {
        public class Policy : Tea.TeaModel {
            public var attachDate: String?

            public var defaultVersion: String?

            public var description_: String?

            public var policyName: String?

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
                if self.attachDate != nil {
                    map["AttachDate"] = self.attachDate!
                }
                if self.defaultVersion != nil {
                    map["DefaultVersion"] = self.defaultVersion!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.policyName != nil {
                    map["PolicyName"] = self.policyName!
                }
                if self.policyType != nil {
                    map["PolicyType"] = self.policyType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AttachDate") {
                    self.attachDate = dict["AttachDate"] as! String
                }
                if dict.keys.contains("DefaultVersion") {
                    self.defaultVersion = dict["DefaultVersion"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("PolicyName") {
                    self.policyName = dict["PolicyName"] as! String
                }
                if dict.keys.contains("PolicyType") {
                    self.policyType = dict["PolicyType"] as! String
                }
            }
        }
        public var policy: [ListPoliciesForUserResponseBody.Policies.Policy]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.policy != nil {
                var tmp : [Any] = []
                for k in self.policy! {
                    tmp.append(k.toMap())
                }
                map["Policy"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Policy") {
                var tmp : [ListPoliciesForUserResponseBody.Policies.Policy] = []
                for v in dict["Policy"] as! [Any] {
                    var model = ListPoliciesForUserResponseBody.Policies.Policy()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.policy = tmp
            }
        }
    }
    public var policies: ListPoliciesForUserResponseBody.Policies?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.policies?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policies != nil {
            map["Policies"] = self.policies?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Policies") {
            var model = ListPoliciesForUserResponseBody.Policies()
            model.fromMap(dict["Policies"] as! [String: Any])
            self.policies = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListPoliciesForUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPoliciesForUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListPoliciesForUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPolicyVersionsRequest : Tea.TeaModel {
    public var policyName: String?

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
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        if self.policyType != nil {
            map["PolicyType"] = self.policyType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyName") {
            self.policyName = dict["PolicyName"] as! String
        }
        if dict.keys.contains("PolicyType") {
            self.policyType = dict["PolicyType"] as! String
        }
    }
}

public class ListPolicyVersionsResponseBody : Tea.TeaModel {
    public class PolicyVersions : Tea.TeaModel {
        public class PolicyVersion : Tea.TeaModel {
            public var createDate: String?

            public var isDefaultVersion: Bool?

            public var policyDocument: String?

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
                if self.createDate != nil {
                    map["CreateDate"] = self.createDate!
                }
                if self.isDefaultVersion != nil {
                    map["IsDefaultVersion"] = self.isDefaultVersion!
                }
                if self.policyDocument != nil {
                    map["PolicyDocument"] = self.policyDocument!
                }
                if self.versionId != nil {
                    map["VersionId"] = self.versionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateDate") {
                    self.createDate = dict["CreateDate"] as! String
                }
                if dict.keys.contains("IsDefaultVersion") {
                    self.isDefaultVersion = dict["IsDefaultVersion"] as! Bool
                }
                if dict.keys.contains("PolicyDocument") {
                    self.policyDocument = dict["PolicyDocument"] as! String
                }
                if dict.keys.contains("VersionId") {
                    self.versionId = dict["VersionId"] as! String
                }
            }
        }
        public var policyVersion: [ListPolicyVersionsResponseBody.PolicyVersions.PolicyVersion]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.policyVersion != nil {
                var tmp : [Any] = []
                for k in self.policyVersion! {
                    tmp.append(k.toMap())
                }
                map["PolicyVersion"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PolicyVersion") {
                var tmp : [ListPolicyVersionsResponseBody.PolicyVersions.PolicyVersion] = []
                for v in dict["PolicyVersion"] as! [Any] {
                    var model = ListPolicyVersionsResponseBody.PolicyVersions.PolicyVersion()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.policyVersion = tmp
            }
        }
    }
    public var policyVersions: ListPolicyVersionsResponseBody.PolicyVersions?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.policyVersions?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policyVersions != nil {
            map["PolicyVersions"] = self.policyVersions?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyVersions") {
            var model = ListPolicyVersionsResponseBody.PolicyVersions()
            model.fromMap(dict["PolicyVersions"] as! [String: Any])
            self.policyVersions = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListPolicyVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPolicyVersionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListPolicyVersionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListRolesRequest : Tea.TeaModel {
    public var marker: String?

    public var maxItems: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.maxItems != nil {
            map["MaxItems"] = self.maxItems!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Marker") {
            self.marker = dict["Marker"] as! String
        }
        if dict.keys.contains("MaxItems") {
            self.maxItems = dict["MaxItems"] as! Int32
        }
    }
}

public class ListRolesResponseBody : Tea.TeaModel {
    public class Roles : Tea.TeaModel {
        public class Role : Tea.TeaModel {
            public var arn: String?

            public var createDate: String?

            public var description_: String?

            public var maxSessionDuration: Int64?

            public var roleId: String?

            public var roleName: String?

            public var updateDate: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.arn != nil {
                    map["Arn"] = self.arn!
                }
                if self.createDate != nil {
                    map["CreateDate"] = self.createDate!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.maxSessionDuration != nil {
                    map["MaxSessionDuration"] = self.maxSessionDuration!
                }
                if self.roleId != nil {
                    map["RoleId"] = self.roleId!
                }
                if self.roleName != nil {
                    map["RoleName"] = self.roleName!
                }
                if self.updateDate != nil {
                    map["UpdateDate"] = self.updateDate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Arn") {
                    self.arn = dict["Arn"] as! String
                }
                if dict.keys.contains("CreateDate") {
                    self.createDate = dict["CreateDate"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("MaxSessionDuration") {
                    self.maxSessionDuration = dict["MaxSessionDuration"] as! Int64
                }
                if dict.keys.contains("RoleId") {
                    self.roleId = dict["RoleId"] as! String
                }
                if dict.keys.contains("RoleName") {
                    self.roleName = dict["RoleName"] as! String
                }
                if dict.keys.contains("UpdateDate") {
                    self.updateDate = dict["UpdateDate"] as! String
                }
            }
        }
        public var role: [ListRolesResponseBody.Roles.Role]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.role != nil {
                var tmp : [Any] = []
                for k in self.role! {
                    tmp.append(k.toMap())
                }
                map["Role"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Role") {
                var tmp : [ListRolesResponseBody.Roles.Role] = []
                for v in dict["Role"] as! [Any] {
                    var model = ListRolesResponseBody.Roles.Role()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.role = tmp
            }
        }
    }
    public var isTruncated: Bool?

    public var marker: String?

    public var requestId: String?

    public var roles: ListRolesResponseBody.Roles?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.roles?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isTruncated != nil {
            map["IsTruncated"] = self.isTruncated!
        }
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.roles != nil {
            map["Roles"] = self.roles?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsTruncated") {
            self.isTruncated = dict["IsTruncated"] as! Bool
        }
        if dict.keys.contains("Marker") {
            self.marker = dict["Marker"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Roles") {
            var model = ListRolesResponseBody.Roles()
            model.fromMap(dict["Roles"] as! [String: Any])
            self.roles = model
        }
    }
}

public class ListRolesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRolesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListRolesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUsersRequest : Tea.TeaModel {
    public var marker: String?

    public var maxItems: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.maxItems != nil {
            map["MaxItems"] = self.maxItems!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Marker") {
            self.marker = dict["Marker"] as! String
        }
        if dict.keys.contains("MaxItems") {
            self.maxItems = dict["MaxItems"] as! Int32
        }
    }
}

public class ListUsersResponseBody : Tea.TeaModel {
    public class Users : Tea.TeaModel {
        public class User : Tea.TeaModel {
            public var comments: String?

            public var createDate: String?

            public var displayName: String?

            public var email: String?

            public var mobilePhone: String?

            public var updateDate: String?

            public var userId: String?

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
                if self.comments != nil {
                    map["Comments"] = self.comments!
                }
                if self.createDate != nil {
                    map["CreateDate"] = self.createDate!
                }
                if self.displayName != nil {
                    map["DisplayName"] = self.displayName!
                }
                if self.email != nil {
                    map["Email"] = self.email!
                }
                if self.mobilePhone != nil {
                    map["MobilePhone"] = self.mobilePhone!
                }
                if self.updateDate != nil {
                    map["UpdateDate"] = self.updateDate!
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
                if dict.keys.contains("Comments") {
                    self.comments = dict["Comments"] as! String
                }
                if dict.keys.contains("CreateDate") {
                    self.createDate = dict["CreateDate"] as! String
                }
                if dict.keys.contains("DisplayName") {
                    self.displayName = dict["DisplayName"] as! String
                }
                if dict.keys.contains("Email") {
                    self.email = dict["Email"] as! String
                }
                if dict.keys.contains("MobilePhone") {
                    self.mobilePhone = dict["MobilePhone"] as! String
                }
                if dict.keys.contains("UpdateDate") {
                    self.updateDate = dict["UpdateDate"] as! String
                }
                if dict.keys.contains("UserId") {
                    self.userId = dict["UserId"] as! String
                }
                if dict.keys.contains("UserName") {
                    self.userName = dict["UserName"] as! String
                }
            }
        }
        public var user: [ListUsersResponseBody.Users.User]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.user != nil {
                var tmp : [Any] = []
                for k in self.user! {
                    tmp.append(k.toMap())
                }
                map["User"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("User") {
                var tmp : [ListUsersResponseBody.Users.User] = []
                for v in dict["User"] as! [Any] {
                    var model = ListUsersResponseBody.Users.User()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.user = tmp
            }
        }
    }
    public var isTruncated: Bool?

    public var marker: String?

    public var requestId: String?

    public var users: ListUsersResponseBody.Users?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.users?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isTruncated != nil {
            map["IsTruncated"] = self.isTruncated!
        }
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.users != nil {
            map["Users"] = self.users?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsTruncated") {
            self.isTruncated = dict["IsTruncated"] as! Bool
        }
        if dict.keys.contains("Marker") {
            self.marker = dict["Marker"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Users") {
            var model = ListUsersResponseBody.Users()
            model.fromMap(dict["Users"] as! [String: Any])
            self.users = model
        }
    }
}

public class ListUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUsersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUsersForGroupRequest : Tea.TeaModel {
    public var groupName: String?

    public var marker: String?

    public var maxItems: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.maxItems != nil {
            map["MaxItems"] = self.maxItems!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("Marker") {
            self.marker = dict["Marker"] as! String
        }
        if dict.keys.contains("MaxItems") {
            self.maxItems = dict["MaxItems"] as! Int32
        }
    }
}

public class ListUsersForGroupResponseBody : Tea.TeaModel {
    public class Users : Tea.TeaModel {
        public class User : Tea.TeaModel {
            public var displayName: String?

            public var joinDate: String?

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
                if self.displayName != nil {
                    map["DisplayName"] = self.displayName!
                }
                if self.joinDate != nil {
                    map["JoinDate"] = self.joinDate!
                }
                if self.userName != nil {
                    map["UserName"] = self.userName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DisplayName") {
                    self.displayName = dict["DisplayName"] as! String
                }
                if dict.keys.contains("JoinDate") {
                    self.joinDate = dict["JoinDate"] as! String
                }
                if dict.keys.contains("UserName") {
                    self.userName = dict["UserName"] as! String
                }
            }
        }
        public var user: [ListUsersForGroupResponseBody.Users.User]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.user != nil {
                var tmp : [Any] = []
                for k in self.user! {
                    tmp.append(k.toMap())
                }
                map["User"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("User") {
                var tmp : [ListUsersForGroupResponseBody.Users.User] = []
                for v in dict["User"] as! [Any] {
                    var model = ListUsersForGroupResponseBody.Users.User()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.user = tmp
            }
        }
    }
    public var isTruncated: Bool?

    public var marker: String?

    public var requestId: String?

    public var users: ListUsersForGroupResponseBody.Users?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.users?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isTruncated != nil {
            map["IsTruncated"] = self.isTruncated!
        }
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.users != nil {
            map["Users"] = self.users?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsTruncated") {
            self.isTruncated = dict["IsTruncated"] as! Bool
        }
        if dict.keys.contains("Marker") {
            self.marker = dict["Marker"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Users") {
            var model = ListUsersForGroupResponseBody.Users()
            model.fromMap(dict["Users"] as! [String: Any])
            self.users = model
        }
    }
}

public class ListUsersForGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUsersForGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListUsersForGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListVirtualMFADevicesResponseBody : Tea.TeaModel {
    public class VirtualMFADevices : Tea.TeaModel {
        public class VirtualMFADevice : Tea.TeaModel {
            public class User : Tea.TeaModel {
                public var displayName: String?

                public var userId: String?

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
                    if self.displayName != nil {
                        map["DisplayName"] = self.displayName!
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
                    if dict.keys.contains("DisplayName") {
                        self.displayName = dict["DisplayName"] as! String
                    }
                    if dict.keys.contains("UserId") {
                        self.userId = dict["UserId"] as! String
                    }
                    if dict.keys.contains("UserName") {
                        self.userName = dict["UserName"] as! String
                    }
                }
            }
            public var activateDate: String?

            public var serialNumber: String?

            public var user: ListVirtualMFADevicesResponseBody.VirtualMFADevices.VirtualMFADevice.User?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.user?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.activateDate != nil {
                    map["ActivateDate"] = self.activateDate!
                }
                if self.serialNumber != nil {
                    map["SerialNumber"] = self.serialNumber!
                }
                if self.user != nil {
                    map["User"] = self.user?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ActivateDate") {
                    self.activateDate = dict["ActivateDate"] as! String
                }
                if dict.keys.contains("SerialNumber") {
                    self.serialNumber = dict["SerialNumber"] as! String
                }
                if dict.keys.contains("User") {
                    var model = ListVirtualMFADevicesResponseBody.VirtualMFADevices.VirtualMFADevice.User()
                    model.fromMap(dict["User"] as! [String: Any])
                    self.user = model
                }
            }
        }
        public var virtualMFADevice: [ListVirtualMFADevicesResponseBody.VirtualMFADevices.VirtualMFADevice]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.virtualMFADevice != nil {
                var tmp : [Any] = []
                for k in self.virtualMFADevice! {
                    tmp.append(k.toMap())
                }
                map["VirtualMFADevice"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("VirtualMFADevice") {
                var tmp : [ListVirtualMFADevicesResponseBody.VirtualMFADevices.VirtualMFADevice] = []
                for v in dict["VirtualMFADevice"] as! [Any] {
                    var model = ListVirtualMFADevicesResponseBody.VirtualMFADevices.VirtualMFADevice()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.virtualMFADevice = tmp
            }
        }
    }
    public var requestId: String?

    public var virtualMFADevices: ListVirtualMFADevicesResponseBody.VirtualMFADevices?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.virtualMFADevices?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.virtualMFADevices != nil {
            map["VirtualMFADevices"] = self.virtualMFADevices?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("VirtualMFADevices") {
            var model = ListVirtualMFADevicesResponseBody.VirtualMFADevices()
            model.fromMap(dict["VirtualMFADevices"] as! [String: Any])
            self.virtualMFADevices = model
        }
    }
}

public class ListVirtualMFADevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVirtualMFADevicesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListVirtualMFADevicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveUserFromGroupRequest : Tea.TeaModel {
    public var groupName: String?

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
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class RemoveUserFromGroupResponseBody : Tea.TeaModel {
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

public class RemoveUserFromGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveUserFromGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RemoveUserFromGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetAccountAliasRequest : Tea.TeaModel {
    public var accountAlias: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountAlias != nil {
            map["AccountAlias"] = self.accountAlias!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountAlias") {
            self.accountAlias = dict["AccountAlias"] as! String
        }
    }
}

public class SetAccountAliasResponseBody : Tea.TeaModel {
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

public class SetAccountAliasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetAccountAliasResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SetAccountAliasResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetDefaultPolicyVersionRequest : Tea.TeaModel {
    public var policyName: String?

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
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PolicyName") {
            self.policyName = dict["PolicyName"] as! String
        }
        if dict.keys.contains("VersionId") {
            self.versionId = dict["VersionId"] as! String
        }
    }
}

public class SetDefaultPolicyVersionResponseBody : Tea.TeaModel {
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

public class SetDefaultPolicyVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetDefaultPolicyVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SetDefaultPolicyVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetPasswordPolicyRequest : Tea.TeaModel {
    public var hardExpiry: Bool?

    public var maxLoginAttemps: Int32?

    public var maxPasswordAge: Int32?

    public var minimumPasswordLength: Int32?

    public var passwordReusePrevention: Int32?

    public var requireLowercaseCharacters: Bool?

    public var requireNumbers: Bool?

    public var requireSymbols: Bool?

    public var requireUppercaseCharacters: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.hardExpiry != nil {
            map["HardExpiry"] = self.hardExpiry!
        }
        if self.maxLoginAttemps != nil {
            map["MaxLoginAttemps"] = self.maxLoginAttemps!
        }
        if self.maxPasswordAge != nil {
            map["MaxPasswordAge"] = self.maxPasswordAge!
        }
        if self.minimumPasswordLength != nil {
            map["MinimumPasswordLength"] = self.minimumPasswordLength!
        }
        if self.passwordReusePrevention != nil {
            map["PasswordReusePrevention"] = self.passwordReusePrevention!
        }
        if self.requireLowercaseCharacters != nil {
            map["RequireLowercaseCharacters"] = self.requireLowercaseCharacters!
        }
        if self.requireNumbers != nil {
            map["RequireNumbers"] = self.requireNumbers!
        }
        if self.requireSymbols != nil {
            map["RequireSymbols"] = self.requireSymbols!
        }
        if self.requireUppercaseCharacters != nil {
            map["RequireUppercaseCharacters"] = self.requireUppercaseCharacters!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HardExpiry") {
            self.hardExpiry = dict["HardExpiry"] as! Bool
        }
        if dict.keys.contains("MaxLoginAttemps") {
            self.maxLoginAttemps = dict["MaxLoginAttemps"] as! Int32
        }
        if dict.keys.contains("MaxPasswordAge") {
            self.maxPasswordAge = dict["MaxPasswordAge"] as! Int32
        }
        if dict.keys.contains("MinimumPasswordLength") {
            self.minimumPasswordLength = dict["MinimumPasswordLength"] as! Int32
        }
        if dict.keys.contains("PasswordReusePrevention") {
            self.passwordReusePrevention = dict["PasswordReusePrevention"] as! Int32
        }
        if dict.keys.contains("RequireLowercaseCharacters") {
            self.requireLowercaseCharacters = dict["RequireLowercaseCharacters"] as! Bool
        }
        if dict.keys.contains("RequireNumbers") {
            self.requireNumbers = dict["RequireNumbers"] as! Bool
        }
        if dict.keys.contains("RequireSymbols") {
            self.requireSymbols = dict["RequireSymbols"] as! Bool
        }
        if dict.keys.contains("RequireUppercaseCharacters") {
            self.requireUppercaseCharacters = dict["RequireUppercaseCharacters"] as! Bool
        }
    }
}

public class SetPasswordPolicyResponseBody : Tea.TeaModel {
    public class PasswordPolicy : Tea.TeaModel {
        public var hardExpiry: Bool?

        public var maxLoginAttemps: Int32?

        public var maxPasswordAge: Int32?

        public var minimumPasswordLength: Int32?

        public var passwordReusePrevention: Int32?

        public var requireLowercaseCharacters: Bool?

        public var requireNumbers: Bool?

        public var requireSymbols: Bool?

        public var requireUppercaseCharacters: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hardExpiry != nil {
                map["HardExpiry"] = self.hardExpiry!
            }
            if self.maxLoginAttemps != nil {
                map["MaxLoginAttemps"] = self.maxLoginAttemps!
            }
            if self.maxPasswordAge != nil {
                map["MaxPasswordAge"] = self.maxPasswordAge!
            }
            if self.minimumPasswordLength != nil {
                map["MinimumPasswordLength"] = self.minimumPasswordLength!
            }
            if self.passwordReusePrevention != nil {
                map["PasswordReusePrevention"] = self.passwordReusePrevention!
            }
            if self.requireLowercaseCharacters != nil {
                map["RequireLowercaseCharacters"] = self.requireLowercaseCharacters!
            }
            if self.requireNumbers != nil {
                map["RequireNumbers"] = self.requireNumbers!
            }
            if self.requireSymbols != nil {
                map["RequireSymbols"] = self.requireSymbols!
            }
            if self.requireUppercaseCharacters != nil {
                map["RequireUppercaseCharacters"] = self.requireUppercaseCharacters!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HardExpiry") {
                self.hardExpiry = dict["HardExpiry"] as! Bool
            }
            if dict.keys.contains("MaxLoginAttemps") {
                self.maxLoginAttemps = dict["MaxLoginAttemps"] as! Int32
            }
            if dict.keys.contains("MaxPasswordAge") {
                self.maxPasswordAge = dict["MaxPasswordAge"] as! Int32
            }
            if dict.keys.contains("MinimumPasswordLength") {
                self.minimumPasswordLength = dict["MinimumPasswordLength"] as! Int32
            }
            if dict.keys.contains("PasswordReusePrevention") {
                self.passwordReusePrevention = dict["PasswordReusePrevention"] as! Int32
            }
            if dict.keys.contains("RequireLowercaseCharacters") {
                self.requireLowercaseCharacters = dict["RequireLowercaseCharacters"] as! Bool
            }
            if dict.keys.contains("RequireNumbers") {
                self.requireNumbers = dict["RequireNumbers"] as! Bool
            }
            if dict.keys.contains("RequireSymbols") {
                self.requireSymbols = dict["RequireSymbols"] as! Bool
            }
            if dict.keys.contains("RequireUppercaseCharacters") {
                self.requireUppercaseCharacters = dict["RequireUppercaseCharacters"] as! Bool
            }
        }
    }
    public var passwordPolicy: SetPasswordPolicyResponseBody.PasswordPolicy?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.passwordPolicy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.passwordPolicy != nil {
            map["PasswordPolicy"] = self.passwordPolicy?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PasswordPolicy") {
            var model = SetPasswordPolicyResponseBody.PasswordPolicy()
            model.fromMap(dict["PasswordPolicy"] as! [String: Any])
            self.passwordPolicy = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SetPasswordPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetPasswordPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SetPasswordPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetSecurityPreferenceRequest : Tea.TeaModel {
    public var allowUserToChangePassword: Bool?

    public var allowUserToManageAccessKeys: Bool?

    public var allowUserToManageMFADevices: Bool?

    public var allowUserToManagePublicKeys: Bool?

    public var enableSaveMFATicket: Bool?

    public var loginNetworkMasks: String?

    public var loginSessionDuration: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowUserToChangePassword != nil {
            map["AllowUserToChangePassword"] = self.allowUserToChangePassword!
        }
        if self.allowUserToManageAccessKeys != nil {
            map["AllowUserToManageAccessKeys"] = self.allowUserToManageAccessKeys!
        }
        if self.allowUserToManageMFADevices != nil {
            map["AllowUserToManageMFADevices"] = self.allowUserToManageMFADevices!
        }
        if self.allowUserToManagePublicKeys != nil {
            map["AllowUserToManagePublicKeys"] = self.allowUserToManagePublicKeys!
        }
        if self.enableSaveMFATicket != nil {
            map["EnableSaveMFATicket"] = self.enableSaveMFATicket!
        }
        if self.loginNetworkMasks != nil {
            map["LoginNetworkMasks"] = self.loginNetworkMasks!
        }
        if self.loginSessionDuration != nil {
            map["LoginSessionDuration"] = self.loginSessionDuration!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AllowUserToChangePassword") {
            self.allowUserToChangePassword = dict["AllowUserToChangePassword"] as! Bool
        }
        if dict.keys.contains("AllowUserToManageAccessKeys") {
            self.allowUserToManageAccessKeys = dict["AllowUserToManageAccessKeys"] as! Bool
        }
        if dict.keys.contains("AllowUserToManageMFADevices") {
            self.allowUserToManageMFADevices = dict["AllowUserToManageMFADevices"] as! Bool
        }
        if dict.keys.contains("AllowUserToManagePublicKeys") {
            self.allowUserToManagePublicKeys = dict["AllowUserToManagePublicKeys"] as! Bool
        }
        if dict.keys.contains("EnableSaveMFATicket") {
            self.enableSaveMFATicket = dict["EnableSaveMFATicket"] as! Bool
        }
        if dict.keys.contains("LoginNetworkMasks") {
            self.loginNetworkMasks = dict["LoginNetworkMasks"] as! String
        }
        if dict.keys.contains("LoginSessionDuration") {
            self.loginSessionDuration = dict["LoginSessionDuration"] as! Int32
        }
    }
}

public class SetSecurityPreferenceResponseBody : Tea.TeaModel {
    public class SecurityPreference : Tea.TeaModel {
        public class AccessKeyPreference : Tea.TeaModel {
            public var allowUserToManageAccessKeys: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allowUserToManageAccessKeys != nil {
                    map["AllowUserToManageAccessKeys"] = self.allowUserToManageAccessKeys!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AllowUserToManageAccessKeys") {
                    self.allowUserToManageAccessKeys = dict["AllowUserToManageAccessKeys"] as! Bool
                }
            }
        }
        public class LoginProfilePreference : Tea.TeaModel {
            public var allowUserToChangePassword: Bool?

            public var enableSaveMFATicket: Bool?

            public var loginNetworkMasks: String?

            public var loginSessionDuration: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allowUserToChangePassword != nil {
                    map["AllowUserToChangePassword"] = self.allowUserToChangePassword!
                }
                if self.enableSaveMFATicket != nil {
                    map["EnableSaveMFATicket"] = self.enableSaveMFATicket!
                }
                if self.loginNetworkMasks != nil {
                    map["LoginNetworkMasks"] = self.loginNetworkMasks!
                }
                if self.loginSessionDuration != nil {
                    map["LoginSessionDuration"] = self.loginSessionDuration!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AllowUserToChangePassword") {
                    self.allowUserToChangePassword = dict["AllowUserToChangePassword"] as! Bool
                }
                if dict.keys.contains("EnableSaveMFATicket") {
                    self.enableSaveMFATicket = dict["EnableSaveMFATicket"] as! Bool
                }
                if dict.keys.contains("LoginNetworkMasks") {
                    self.loginNetworkMasks = dict["LoginNetworkMasks"] as! String
                }
                if dict.keys.contains("LoginSessionDuration") {
                    self.loginSessionDuration = dict["LoginSessionDuration"] as! Int32
                }
            }
        }
        public class MFAPreference : Tea.TeaModel {
            public var allowUserToManageMFADevices: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allowUserToManageMFADevices != nil {
                    map["AllowUserToManageMFADevices"] = self.allowUserToManageMFADevices!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AllowUserToManageMFADevices") {
                    self.allowUserToManageMFADevices = dict["AllowUserToManageMFADevices"] as! Bool
                }
            }
        }
        public class PublicKeyPreference : Tea.TeaModel {
            public var allowUserToManagePublicKeys: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allowUserToManagePublicKeys != nil {
                    map["AllowUserToManagePublicKeys"] = self.allowUserToManagePublicKeys!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AllowUserToManagePublicKeys") {
                    self.allowUserToManagePublicKeys = dict["AllowUserToManagePublicKeys"] as! Bool
                }
            }
        }
        public var accessKeyPreference: SetSecurityPreferenceResponseBody.SecurityPreference.AccessKeyPreference?

        public var loginProfilePreference: SetSecurityPreferenceResponseBody.SecurityPreference.LoginProfilePreference?

        public var MFAPreference: SetSecurityPreferenceResponseBody.SecurityPreference.MFAPreference?

        public var publicKeyPreference: SetSecurityPreferenceResponseBody.SecurityPreference.PublicKeyPreference?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.accessKeyPreference?.validate()
            try self.loginProfilePreference?.validate()
            try self.MFAPreference?.validate()
            try self.publicKeyPreference?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessKeyPreference != nil {
                map["AccessKeyPreference"] = self.accessKeyPreference?.toMap()
            }
            if self.loginProfilePreference != nil {
                map["LoginProfilePreference"] = self.loginProfilePreference?.toMap()
            }
            if self.MFAPreference != nil {
                map["MFAPreference"] = self.MFAPreference?.toMap()
            }
            if self.publicKeyPreference != nil {
                map["PublicKeyPreference"] = self.publicKeyPreference?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessKeyPreference") {
                var model = SetSecurityPreferenceResponseBody.SecurityPreference.AccessKeyPreference()
                model.fromMap(dict["AccessKeyPreference"] as! [String: Any])
                self.accessKeyPreference = model
            }
            if dict.keys.contains("LoginProfilePreference") {
                var model = SetSecurityPreferenceResponseBody.SecurityPreference.LoginProfilePreference()
                model.fromMap(dict["LoginProfilePreference"] as! [String: Any])
                self.loginProfilePreference = model
            }
            if dict.keys.contains("MFAPreference") {
                var model = SetSecurityPreferenceResponseBody.SecurityPreference.MFAPreference()
                model.fromMap(dict["MFAPreference"] as! [String: Any])
                self.MFAPreference = model
            }
            if dict.keys.contains("PublicKeyPreference") {
                var model = SetSecurityPreferenceResponseBody.SecurityPreference.PublicKeyPreference()
                model.fromMap(dict["PublicKeyPreference"] as! [String: Any])
                self.publicKeyPreference = model
            }
        }
    }
    public var requestId: String?

    public var securityPreference: SetSecurityPreferenceResponseBody.SecurityPreference?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.securityPreference?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.securityPreference != nil {
            map["SecurityPreference"] = self.securityPreference?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecurityPreference") {
            var model = SetSecurityPreferenceResponseBody.SecurityPreference()
            model.fromMap(dict["SecurityPreference"] as! [String: Any])
            self.securityPreference = model
        }
    }
}

public class SetSecurityPreferenceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetSecurityPreferenceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SetSecurityPreferenceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnbindMFADeviceRequest : Tea.TeaModel {
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
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class UnbindMFADeviceResponseBody : Tea.TeaModel {
    public class MFADevice : Tea.TeaModel {
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
            if self.serialNumber != nil {
                map["SerialNumber"] = self.serialNumber!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SerialNumber") {
                self.serialNumber = dict["SerialNumber"] as! String
            }
        }
    }
    public var MFADevice: UnbindMFADeviceResponseBody.MFADevice?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.MFADevice?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.MFADevice != nil {
            map["MFADevice"] = self.MFADevice?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MFADevice") {
            var model = UnbindMFADeviceResponseBody.MFADevice()
            model.fromMap(dict["MFADevice"] as! [String: Any])
            self.MFADevice = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UnbindMFADeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnbindMFADeviceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UnbindMFADeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAccessKeyRequest : Tea.TeaModel {
    public var status: String?

    public var userAccessKeyId: String?

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
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.userAccessKeyId != nil {
            map["UserAccessKeyId"] = self.userAccessKeyId!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("UserAccessKeyId") {
            self.userAccessKeyId = dict["UserAccessKeyId"] as! String
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class UpdateAccessKeyResponseBody : Tea.TeaModel {
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

public class UpdateAccessKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAccessKeyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateAccessKeyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateGroupRequest : Tea.TeaModel {
    public var groupName: String?

    public var newComments: String?

    public var newGroupName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.newComments != nil {
            map["NewComments"] = self.newComments!
        }
        if self.newGroupName != nil {
            map["NewGroupName"] = self.newGroupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("NewComments") {
            self.newComments = dict["NewComments"] as! String
        }
        if dict.keys.contains("NewGroupName") {
            self.newGroupName = dict["NewGroupName"] as! String
        }
    }
}

public class UpdateGroupResponseBody : Tea.TeaModel {
    public class Group : Tea.TeaModel {
        public var comments: String?

        public var createDate: String?

        public var groupId: String?

        public var groupName: String?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.comments != nil {
                map["Comments"] = self.comments!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Comments") {
                self.comments = dict["Comments"] as! String
            }
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("GroupId") {
                self.groupId = dict["GroupId"] as! String
            }
            if dict.keys.contains("GroupName") {
                self.groupName = dict["GroupName"] as! String
            }
            if dict.keys.contains("UpdateDate") {
                self.updateDate = dict["UpdateDate"] as! String
            }
        }
    }
    public var group: UpdateGroupResponseBody.Group?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.group?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.group != nil {
            map["Group"] = self.group?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Group") {
            var model = UpdateGroupResponseBody.Group()
            model.fromMap(dict["Group"] as! [String: Any])
            self.group = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateLoginProfileRequest : Tea.TeaModel {
    public var MFABindRequired: Bool?

    public var password: String?

    public var passwordResetRequired: Bool?

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
        if self.MFABindRequired != nil {
            map["MFABindRequired"] = self.MFABindRequired!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.passwordResetRequired != nil {
            map["PasswordResetRequired"] = self.passwordResetRequired!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MFABindRequired") {
            self.MFABindRequired = dict["MFABindRequired"] as! Bool
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("PasswordResetRequired") {
            self.passwordResetRequired = dict["PasswordResetRequired"] as! Bool
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class UpdateLoginProfileResponseBody : Tea.TeaModel {
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

public class UpdateLoginProfileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateLoginProfileResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateLoginProfileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdatePolicyDescriptionRequest : Tea.TeaModel {
    public var newDescription: String?

    public var policyName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.newDescription != nil {
            map["NewDescription"] = self.newDescription!
        }
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NewDescription") {
            self.newDescription = dict["NewDescription"] as! String
        }
        if dict.keys.contains("PolicyName") {
            self.policyName = dict["PolicyName"] as! String
        }
    }
}

public class UpdatePolicyDescriptionResponseBody : Tea.TeaModel {
    public class Policy : Tea.TeaModel {
        public var createDate: String?

        public var defaultVersion: String?

        public var description_: String?

        public var policyName: String?

        public var policyType: String?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.defaultVersion != nil {
                map["DefaultVersion"] = self.defaultVersion!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.policyName != nil {
                map["PolicyName"] = self.policyName!
            }
            if self.policyType != nil {
                map["PolicyType"] = self.policyType!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("DefaultVersion") {
                self.defaultVersion = dict["DefaultVersion"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("PolicyName") {
                self.policyName = dict["PolicyName"] as! String
            }
            if dict.keys.contains("PolicyType") {
                self.policyType = dict["PolicyType"] as! String
            }
            if dict.keys.contains("UpdateDate") {
                self.updateDate = dict["UpdateDate"] as! String
            }
        }
    }
    public var policy: UpdatePolicyDescriptionResponseBody.Policy?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.policy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policy != nil {
            map["Policy"] = self.policy?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Policy") {
            var model = UpdatePolicyDescriptionResponseBody.Policy()
            model.fromMap(dict["Policy"] as! [String: Any])
            self.policy = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdatePolicyDescriptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePolicyDescriptionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdatePolicyDescriptionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateRoleRequest : Tea.TeaModel {
    public var newAssumeRolePolicyDocument: String?

    public var newDescription: String?

    public var newMaxSessionDuration: Int64?

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
        if self.newAssumeRolePolicyDocument != nil {
            map["NewAssumeRolePolicyDocument"] = self.newAssumeRolePolicyDocument!
        }
        if self.newDescription != nil {
            map["NewDescription"] = self.newDescription!
        }
        if self.newMaxSessionDuration != nil {
            map["NewMaxSessionDuration"] = self.newMaxSessionDuration!
        }
        if self.roleName != nil {
            map["RoleName"] = self.roleName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NewAssumeRolePolicyDocument") {
            self.newAssumeRolePolicyDocument = dict["NewAssumeRolePolicyDocument"] as! String
        }
        if dict.keys.contains("NewDescription") {
            self.newDescription = dict["NewDescription"] as! String
        }
        if dict.keys.contains("NewMaxSessionDuration") {
            self.newMaxSessionDuration = dict["NewMaxSessionDuration"] as! Int64
        }
        if dict.keys.contains("RoleName") {
            self.roleName = dict["RoleName"] as! String
        }
    }
}

public class UpdateRoleResponseBody : Tea.TeaModel {
    public class Role : Tea.TeaModel {
        public var arn: String?

        public var assumeRolePolicyDocument: String?

        public var createDate: String?

        public var description_: String?

        public var maxSessionDuration: Int64?

        public var roleId: String?

        public var roleName: String?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.arn != nil {
                map["Arn"] = self.arn!
            }
            if self.assumeRolePolicyDocument != nil {
                map["AssumeRolePolicyDocument"] = self.assumeRolePolicyDocument!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.maxSessionDuration != nil {
                map["MaxSessionDuration"] = self.maxSessionDuration!
            }
            if self.roleId != nil {
                map["RoleId"] = self.roleId!
            }
            if self.roleName != nil {
                map["RoleName"] = self.roleName!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Arn") {
                self.arn = dict["Arn"] as! String
            }
            if dict.keys.contains("AssumeRolePolicyDocument") {
                self.assumeRolePolicyDocument = dict["AssumeRolePolicyDocument"] as! String
            }
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("MaxSessionDuration") {
                self.maxSessionDuration = dict["MaxSessionDuration"] as! Int64
            }
            if dict.keys.contains("RoleId") {
                self.roleId = dict["RoleId"] as! String
            }
            if dict.keys.contains("RoleName") {
                self.roleName = dict["RoleName"] as! String
            }
            if dict.keys.contains("UpdateDate") {
                self.updateDate = dict["UpdateDate"] as! String
            }
        }
    }
    public var requestId: String?

    public var role: UpdateRoleResponseBody.Role?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.role != nil {
            map["Role"] = self.role?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Role") {
            var model = UpdateRoleResponseBody.Role()
            model.fromMap(dict["Role"] as! [String: Any])
            self.role = model
        }
    }
}

public class UpdateRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateRoleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateRoleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateUserRequest : Tea.TeaModel {
    public var newComments: String?

    public var newDisplayName: String?

    public var newEmail: String?

    public var newMobilePhone: String?

    public var newUserName: String?

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
        if self.newComments != nil {
            map["NewComments"] = self.newComments!
        }
        if self.newDisplayName != nil {
            map["NewDisplayName"] = self.newDisplayName!
        }
        if self.newEmail != nil {
            map["NewEmail"] = self.newEmail!
        }
        if self.newMobilePhone != nil {
            map["NewMobilePhone"] = self.newMobilePhone!
        }
        if self.newUserName != nil {
            map["NewUserName"] = self.newUserName!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NewComments") {
            self.newComments = dict["NewComments"] as! String
        }
        if dict.keys.contains("NewDisplayName") {
            self.newDisplayName = dict["NewDisplayName"] as! String
        }
        if dict.keys.contains("NewEmail") {
            self.newEmail = dict["NewEmail"] as! String
        }
        if dict.keys.contains("NewMobilePhone") {
            self.newMobilePhone = dict["NewMobilePhone"] as! String
        }
        if dict.keys.contains("NewUserName") {
            self.newUserName = dict["NewUserName"] as! String
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class UpdateUserResponseBody : Tea.TeaModel {
    public class User : Tea.TeaModel {
        public var comments: String?

        public var createDate: String?

        public var displayName: String?

        public var email: String?

        public var mobilePhone: String?

        public var updateDate: String?

        public var userId: String?

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
            if self.comments != nil {
                map["Comments"] = self.comments!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.mobilePhone != nil {
                map["MobilePhone"] = self.mobilePhone!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
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
            if dict.keys.contains("Comments") {
                self.comments = dict["Comments"] as! String
            }
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("DisplayName") {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("Email") {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("MobilePhone") {
                self.mobilePhone = dict["MobilePhone"] as! String
            }
            if dict.keys.contains("UpdateDate") {
                self.updateDate = dict["UpdateDate"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
            if dict.keys.contains("UserName") {
                self.userName = dict["UserName"] as! String
            }
        }
    }
    public var requestId: String?

    public var user: UpdateUserResponseBody.User?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.user?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.user != nil {
            map["User"] = self.user?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("User") {
            var model = UpdateUserResponseBody.User()
            model.fromMap(dict["User"] as! [String: Any])
            self.user = model
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
