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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddUserToGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
        }
        if let value = dict["PolicyType"] as? String {
            self.policyType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AttachPolicyToGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
        }
        if let value = dict["PolicyType"] as? String {
            self.policyType = value
        }
        if let value = dict["RoleName"] as? String {
            self.roleName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AttachPolicyToRoleResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
        }
        if let value = dict["PolicyType"] as? String {
            self.policyType = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AttachPolicyToUserResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthenticationCode1"] as? String {
            self.authenticationCode1 = value
        }
        if let value = dict["AuthenticationCode2"] as? String {
            self.authenticationCode2 = value
        }
        if let value = dict["SerialNumber"] as? String {
            self.serialNumber = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = BindMFADeviceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NewPassword"] as? String {
            self.newPassword = value
        }
        if let value = dict["OldPassword"] as? String {
            self.oldPassword = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ChangePasswordResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ClearAccountAliasResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserName"] as? String {
            self.userName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessKeyId"] as? String {
                self.accessKeyId = value
            }
            if let value = dict["AccessKeySecret"] as? String {
                self.accessKeySecret = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessKey"] as? [String: Any?] {
            var model = CreateAccessKeyResponseBody.AccessKey()
            model.fromMap(value)
            self.accessKey = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateAccessKeyResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Comments"] as? String {
            self.comments = value
        }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Comments"] as? String {
                self.comments = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["GroupId"] as? String {
                self.groupId = value
            }
            if let value = dict["GroupName"] as? String {
                self.groupName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Group"] as? [String: Any?] {
            var model = CreateGroupResponseBody.Group()
            model.fromMap(value)
            self.group = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MFABindRequired"] as? Bool {
            self.MFABindRequired = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["PasswordResetRequired"] as? Bool {
            self.passwordResetRequired = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["MFABindRequired"] as? Bool {
                self.MFABindRequired = value
            }
            if let value = dict["PasswordResetRequired"] as? Bool {
                self.passwordResetRequired = value
            }
            if let value = dict["UserName"] as? String {
                self.userName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LoginProfile"] as? [String: Any?] {
            var model = CreateLoginProfileResponseBody.LoginProfile()
            model.fromMap(value)
            self.loginProfile = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateLoginProfileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePolicyRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var description_: String?

    public var policyDocument: String?

    public var policyName: String?

    public var tag: [CreatePolicyRequest.Tag]?

    public override init() {
        super.init()
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
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["PolicyDocument"] as? String {
            self.policyDocument = value
        }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreatePolicyRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreatePolicyRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
    }
}

public class CreatePolicyShrinkRequest : Tea.TeaModel {
    public var description_: String?

    public var policyDocument: String?

    public var policyName: String?

    public var tagShrink: String?

    public override init() {
        super.init()
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
        if self.tagShrink != nil {
            map["Tag"] = self.tagShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["PolicyDocument"] as? String {
            self.policyDocument = value
        }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
        }
        if let value = dict["Tag"] as? String {
            self.tagShrink = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["DefaultVersion"] as? String {
                self.defaultVersion = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["PolicyName"] as? String {
                self.policyName = value
            }
            if let value = dict["PolicyType"] as? String {
                self.policyType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Policy"] as? [String: Any?] {
            var model = CreatePolicyResponseBody.Policy()
            model.fromMap(value)
            self.policy = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreatePolicyResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicyDocument"] as? String {
            self.policyDocument = value
        }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
        }
        if let value = dict["RotateStrategy"] as? String {
            self.rotateStrategy = value
        }
        if let value = dict["SetAsDefault"] as? Bool {
            self.setAsDefault = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["IsDefaultVersion"] as? Bool {
                self.isDefaultVersion = value
            }
            if let value = dict["PolicyDocument"] as? String {
                self.policyDocument = value
            }
            if let value = dict["VersionId"] as? String {
                self.versionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicyVersion"] as? [String: Any?] {
            var model = CreatePolicyVersionResponseBody.PolicyVersion()
            model.fromMap(value)
            self.policyVersion = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreatePolicyVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateRoleRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var assumeRolePolicyDocument: String?

    public var description_: String?

    public var maxSessionDuration: Int64?

    public var roleName: String?

    public var tag: [CreateRoleRequest.Tag]?

    public override init() {
        super.init()
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
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AssumeRolePolicyDocument"] as? String {
            self.assumeRolePolicyDocument = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["MaxSessionDuration"] as? Int64 {
            self.maxSessionDuration = value
        }
        if let value = dict["RoleName"] as? String {
            self.roleName = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateRoleRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateRoleRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
    }
}

public class CreateRoleShrinkRequest : Tea.TeaModel {
    public var assumeRolePolicyDocument: String?

    public var description_: String?

    public var maxSessionDuration: Int64?

    public var roleName: String?

    public var tagShrink: String?

    public override init() {
        super.init()
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
        if self.tagShrink != nil {
            map["Tag"] = self.tagShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AssumeRolePolicyDocument"] as? String {
            self.assumeRolePolicyDocument = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["MaxSessionDuration"] as? Int64 {
            self.maxSessionDuration = value
        }
        if let value = dict["RoleName"] as? String {
            self.roleName = value
        }
        if let value = dict["Tag"] as? String {
            self.tagShrink = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Arn"] as? String {
                self.arn = value
            }
            if let value = dict["AssumeRolePolicyDocument"] as? String {
                self.assumeRolePolicyDocument = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["MaxSessionDuration"] as? Int64 {
                self.maxSessionDuration = value
            }
            if let value = dict["RoleId"] as? String {
                self.roleId = value
            }
            if let value = dict["RoleName"] as? String {
                self.roleName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Role"] as? [String: Any?] {
            var model = CreateRoleResponseBody.Role()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateRoleResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Comments"] as? String {
            self.comments = value
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["MobilePhone"] as? String {
            self.mobilePhone = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Comments"] as? String {
                self.comments = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["MobilePhone"] as? String {
                self.mobilePhone = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
            if let value = dict["UserName"] as? String {
                self.userName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["User"] as? [String: Any?] {
            var model = CreateUserResponseBody.User()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateUserResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["VirtualMFADeviceName"] as? String {
            self.virtualMFADeviceName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Base32StringSeed"] as? String {
                self.base32StringSeed = value
            }
            if let value = dict["QRCodePNG"] as? String {
                self.QRCodePNG = value
            }
            if let value = dict["SerialNumber"] as? String {
                self.serialNumber = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["VirtualMFADevice"] as? [String: Any?] {
            var model = CreateVirtualMFADeviceResponseBody.VirtualMFADevice()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateVirtualMFADeviceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EncodedDiagnosticMessage"] as? String {
            self.encodedDiagnosticMessage = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ConditionKey"] as? String {
                    self.conditionKey = value
                }
                if let value = dict["ConditionValues"] as? [String] {
                    self.conditionValues = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AuthPrincipalDisplayName"] as? String {
                    self.authPrincipalDisplayName = value
                }
                if let value = dict["AuthPrincipalOwnerId"] as? String {
                    self.authPrincipalOwnerId = value
                }
                if let value = dict["AuthPrincipalType"] as? String {
                    self.authPrincipalType = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AttachedEntityType"] as? String {
                    self.attachedEntityType = value
                }
                if let value = dict["AttachedScope"] as? String {
                    self.attachedScope = value
                }
                if let value = dict["Effect"] as? String {
                    self.effect = value
                }
                if let value = dict["PolicyIdentifier"] as? String {
                    self.policyIdentifier = value
                }
                if let value = dict["PolicyType"] as? String {
                    self.policyType = value
                }
                if let value = dict["PolicyVersion"] as? String {
                    self.policyVersion = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AuthAction"] as? String {
                self.authAction = value
            }
            if let value = dict["AuthConditions"] as? [Any?] {
                var tmp : [DecodeDiagnosticMessageResponseBody.DecodedDiagnosticMessage.AuthConditions] = []
                for v in value {
                    if v != nil {
                        var model = DecodeDiagnosticMessageResponseBody.DecodedDiagnosticMessage.AuthConditions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.authConditions = tmp
            }
            if let value = dict["AuthPrincipal"] as? [String: Any?] {
                var model = DecodeDiagnosticMessageResponseBody.DecodedDiagnosticMessage.AuthPrincipal()
                model.fromMap(value)
                self.authPrincipal = model
            }
            if let value = dict["AuthResource"] as? String {
                self.authResource = value
            }
            if let value = dict["ExplicitDeny"] as? Bool {
                self.explicitDeny = value
            }
            if let value = dict["MatchedPolicies"] as? [Any?] {
                var tmp : [DecodeDiagnosticMessageResponseBody.DecodedDiagnosticMessage.MatchedPolicies] = []
                for v in value {
                    if v != nil {
                        var model = DecodeDiagnosticMessageResponseBody.DecodedDiagnosticMessage.MatchedPolicies()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.matchedPolicies = tmp
            }
            if let value = dict["NoPermissionPolicyType"] as? String {
                self.noPermissionPolicyType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DecodedDiagnosticMessage"] as? [String: Any?] {
            var model = DecodeDiagnosticMessageResponseBody.DecodedDiagnosticMessage()
            model.fromMap(value)
            self.decodedDiagnosticMessage = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DecodeDiagnosticMessageResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserAccessKeyId"] as? String {
            self.userAccessKeyId = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteAccessKeyResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserName"] as? String {
            self.userName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteLoginProfileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeletePolicyRequest : Tea.TeaModel {
    public var cascadingDelete: Bool?

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
        if self.cascadingDelete != nil {
            map["CascadingDelete"] = self.cascadingDelete!
        }
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CascadingDelete"] as? Bool {
            self.cascadingDelete = value
        }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeletePolicyResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
        }
        if let value = dict["VersionId"] as? String {
            self.versionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeletePolicyVersionResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RoleName"] as? String {
            self.roleName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteRoleResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserName"] as? String {
            self.userName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SerialNumber"] as? String {
            self.serialNumber = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteVirtualMFADeviceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
        }
        if let value = dict["PolicyType"] as? String {
            self.policyType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DetachPolicyFromGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
        }
        if let value = dict["PolicyType"] as? String {
            self.policyType = value
        }
        if let value = dict["RoleName"] as? String {
            self.roleName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DetachPolicyFromRoleResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
        }
        if let value = dict["PolicyType"] as? String {
            self.policyType = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DetachPolicyFromUserResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserAccessKeyId"] as? String {
            self.userAccessKeyId = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LastUsedDate"] as? String {
                self.lastUsedDate = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessKeyLastUsed"] as? [String: Any?] {
            var model = GetAccessKeyLastUsedResponseBody.AccessKeyLastUsed()
            model.fromMap(value)
            self.accessKeyLastUsed = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetAccessKeyLastUsedResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountAlias"] as? String {
            self.accountAlias = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetAccountAliasResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Comments"] as? String {
                self.comments = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["GroupId"] as? String {
                self.groupId = value
            }
            if let value = dict["GroupName"] as? String {
                self.groupName = value
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Group"] as? [String: Any?] {
            var model = GetGroupResponseBody.Group()
            model.fromMap(value)
            self.group = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserName"] as? String {
            self.userName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["MFABindRequired"] as? Bool {
                self.MFABindRequired = value
            }
            if let value = dict["PasswordResetRequired"] as? Bool {
                self.passwordResetRequired = value
            }
            if let value = dict["UserName"] as? String {
                self.userName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LoginProfile"] as? [String: Any?] {
            var model = GetLoginProfileResponseBody.LoginProfile()
            model.fromMap(value)
            self.loginProfile = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetLoginProfileResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["HardExpiry"] as? Bool {
                self.hardExpiry = value
            }
            if let value = dict["MaxLoginAttemps"] as? Int32 {
                self.maxLoginAttemps = value
            }
            if let value = dict["MaxPasswordAge"] as? Int32 {
                self.maxPasswordAge = value
            }
            if let value = dict["MinimumPasswordLength"] as? Int32 {
                self.minimumPasswordLength = value
            }
            if let value = dict["PasswordReusePrevention"] as? Int32 {
                self.passwordReusePrevention = value
            }
            if let value = dict["RequireLowercaseCharacters"] as? Bool {
                self.requireLowercaseCharacters = value
            }
            if let value = dict["RequireNumbers"] as? Bool {
                self.requireNumbers = value
            }
            if let value = dict["RequireSymbols"] as? Bool {
                self.requireSymbols = value
            }
            if let value = dict["RequireUppercaseCharacters"] as? Bool {
                self.requireUppercaseCharacters = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PasswordPolicy"] as? [String: Any?] {
            var model = GetPasswordPolicyResponseBody.PasswordPolicy()
            model.fromMap(value)
            self.passwordPolicy = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetPasswordPolicyResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
        }
        if let value = dict["PolicyType"] as? String {
            self.policyType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["IsDefaultVersion"] as? Bool {
                self.isDefaultVersion = value
            }
            if let value = dict["PolicyDocument"] as? String {
                self.policyDocument = value
            }
            if let value = dict["VersionId"] as? String {
                self.versionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AttachmentCount"] as? Int32 {
                self.attachmentCount = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["DefaultVersion"] as? String {
                self.defaultVersion = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["PolicyDocument"] as? String {
                self.policyDocument = value
            }
            if let value = dict["PolicyName"] as? String {
                self.policyName = value
            }
            if let value = dict["PolicyType"] as? String {
                self.policyType = value
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DefaultPolicyVersion"] as? [String: Any?] {
            var model = GetPolicyResponseBody.DefaultPolicyVersion()
            model.fromMap(value)
            self.defaultPolicyVersion = model
        }
        if let value = dict["Policy"] as? [String: Any?] {
            var model = GetPolicyResponseBody.Policy()
            model.fromMap(value)
            self.policy = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetPolicyResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
        }
        if let value = dict["PolicyType"] as? String {
            self.policyType = value
        }
        if let value = dict["VersionId"] as? String {
            self.versionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["IsDefaultVersion"] as? Bool {
                self.isDefaultVersion = value
            }
            if let value = dict["PolicyDocument"] as? String {
                self.policyDocument = value
            }
            if let value = dict["VersionId"] as? String {
                self.versionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicyVersion"] as? [String: Any?] {
            var model = GetPolicyVersionResponseBody.PolicyVersion()
            model.fromMap(value)
            self.policyVersion = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetPolicyVersionResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RoleName"] as? String {
            self.roleName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Arn"] as? String {
                self.arn = value
            }
            if let value = dict["AssumeRolePolicyDocument"] as? String {
                self.assumeRolePolicyDocument = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["MaxSessionDuration"] as? Int64 {
                self.maxSessionDuration = value
            }
            if let value = dict["RoleId"] as? String {
                self.roleId = value
            }
            if let value = dict["RoleName"] as? String {
                self.roleName = value
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Role"] as? [String: Any?] {
            var model = GetRoleResponseBody.Role()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetRoleResponseBody()
            model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AllowUserToManageAccessKeys"] as? Bool {
                    self.allowUserToManageAccessKeys = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AllowUserToChangePassword"] as? Bool {
                    self.allowUserToChangePassword = value
                }
                if let value = dict["EnableSaveMFATicket"] as? Bool {
                    self.enableSaveMFATicket = value
                }
                if let value = dict["LoginNetworkMasks"] as? String {
                    self.loginNetworkMasks = value
                }
                if let value = dict["LoginSessionDuration"] as? Int32 {
                    self.loginSessionDuration = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AllowUserToManageMFADevices"] as? Bool {
                    self.allowUserToManageMFADevices = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AllowUserToManagePublicKeys"] as? Bool {
                    self.allowUserToManagePublicKeys = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessKeyPreference"] as? [String: Any?] {
                var model = GetSecurityPreferenceResponseBody.SecurityPreference.AccessKeyPreference()
                model.fromMap(value)
                self.accessKeyPreference = model
            }
            if let value = dict["LoginProfilePreference"] as? [String: Any?] {
                var model = GetSecurityPreferenceResponseBody.SecurityPreference.LoginProfilePreference()
                model.fromMap(value)
                self.loginProfilePreference = model
            }
            if let value = dict["MFAPreference"] as? [String: Any?] {
                var model = GetSecurityPreferenceResponseBody.SecurityPreference.MFAPreference()
                model.fromMap(value)
                self.MFAPreference = model
            }
            if let value = dict["PublicKeyPreference"] as? [String: Any?] {
                var model = GetSecurityPreferenceResponseBody.SecurityPreference.PublicKeyPreference()
                model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SecurityPreference"] as? [String: Any?] {
            var model = GetSecurityPreferenceResponseBody.SecurityPreference()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetSecurityPreferenceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserName"] as? String {
            self.userName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Comments"] as? String {
                self.comments = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["LastLoginDate"] as? String {
                self.lastLoginDate = value
            }
            if let value = dict["MobilePhone"] as? String {
                self.mobilePhone = value
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
            if let value = dict["UserName"] as? String {
                self.userName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["User"] as? [String: Any?] {
            var model = GetUserResponseBody.User()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetUserResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserName"] as? String {
            self.userName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SerialNumber"] as? String {
                self.serialNumber = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MFADevice"] as? [String: Any?] {
            var model = GetUserMFAInfoResponseBody.MFADevice()
            model.fromMap(value)
            self.MFADevice = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetUserMFAInfoResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserName"] as? String {
            self.userName = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccessKeyId"] as? String {
                    self.accessKeyId = value
                }
                if let value = dict["CreateDate"] as? String {
                    self.createDate = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessKey"] as? [Any?] {
                var tmp : [ListAccessKeysResponseBody.AccessKeys.AccessKey] = []
                for v in value {
                    if v != nil {
                        var model = ListAccessKeysResponseBody.AccessKeys.AccessKey()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessKeys"] as? [String: Any?] {
            var model = ListAccessKeysResponseBody.AccessKeys()
            model.fromMap(value)
            self.accessKeys = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListAccessKeysResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
        }
        if let value = dict["PolicyType"] as? String {
            self.policyType = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AttachDate"] as? String {
                    self.attachDate = value
                }
                if let value = dict["Comments"] as? String {
                    self.comments = value
                }
                if let value = dict["GroupName"] as? String {
                    self.groupName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Group"] as? [Any?] {
                var tmp : [ListEntitiesForPolicyResponseBody.Groups.Group] = []
                for v in value {
                    if v != nil {
                        var model = ListEntitiesForPolicyResponseBody.Groups.Group()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Arn"] as? String {
                    self.arn = value
                }
                if let value = dict["AttachDate"] as? String {
                    self.attachDate = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["RoleId"] as? String {
                    self.roleId = value
                }
                if let value = dict["RoleName"] as? String {
                    self.roleName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Role"] as? [Any?] {
                var tmp : [ListEntitiesForPolicyResponseBody.Roles.Role] = []
                for v in value {
                    if v != nil {
                        var model = ListEntitiesForPolicyResponseBody.Roles.Role()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AttachDate"] as? String {
                    self.attachDate = value
                }
                if let value = dict["DisplayName"] as? String {
                    self.displayName = value
                }
                if let value = dict["UserId"] as? String {
                    self.userId = value
                }
                if let value = dict["UserName"] as? String {
                    self.userName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["User"] as? [Any?] {
                var tmp : [ListEntitiesForPolicyResponseBody.Users.User] = []
                for v in value {
                    if v != nil {
                        var model = ListEntitiesForPolicyResponseBody.Users.User()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Groups"] as? [String: Any?] {
            var model = ListEntitiesForPolicyResponseBody.Groups()
            model.fromMap(value)
            self.groups = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Roles"] as? [String: Any?] {
            var model = ListEntitiesForPolicyResponseBody.Roles()
            model.fromMap(value)
            self.roles = model
        }
        if let value = dict["Users"] as? [String: Any?] {
            var model = ListEntitiesForPolicyResponseBody.Users()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListEntitiesForPolicyResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Marker"] as? String {
            self.marker = value
        }
        if let value = dict["MaxItems"] as? Int32 {
            self.maxItems = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Comments"] as? String {
                    self.comments = value
                }
                if let value = dict["CreateDate"] as? String {
                    self.createDate = value
                }
                if let value = dict["GroupId"] as? String {
                    self.groupId = value
                }
                if let value = dict["GroupName"] as? String {
                    self.groupName = value
                }
                if let value = dict["UpdateDate"] as? String {
                    self.updateDate = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Group"] as? [Any?] {
                var tmp : [ListGroupsResponseBody.Groups.Group] = []
                for v in value {
                    if v != nil {
                        var model = ListGroupsResponseBody.Groups.Group()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Groups"] as? [String: Any?] {
            var model = ListGroupsResponseBody.Groups()
            model.fromMap(value)
            self.groups = model
        }
        if let value = dict["IsTruncated"] as? Bool {
            self.isTruncated = value
        }
        if let value = dict["Marker"] as? String {
            self.marker = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListGroupsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserName"] as? String {
            self.userName = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Comments"] as? String {
                    self.comments = value
                }
                if let value = dict["GroupId"] as? String {
                    self.groupId = value
                }
                if let value = dict["GroupName"] as? String {
                    self.groupName = value
                }
                if let value = dict["JoinDate"] as? String {
                    self.joinDate = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Group"] as? [Any?] {
                var tmp : [ListGroupsForUserResponseBody.Groups.Group] = []
                for v in value {
                    if v != nil {
                        var model = ListGroupsForUserResponseBody.Groups.Group()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Groups"] as? [String: Any?] {
            var model = ListGroupsForUserResponseBody.Groups()
            model.fromMap(value)
            self.groups = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListGroupsForUserResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListPoliciesRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var marker: String?

    public var maxItems: Int32?

    public var policyType: String?

    public var tag: [ListPoliciesRequest.Tag]?

    public override init() {
        super.init()
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
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Marker"] as? String {
            self.marker = value
        }
        if let value = dict["MaxItems"] as? Int32 {
            self.maxItems = value
        }
        if let value = dict["PolicyType"] as? String {
            self.policyType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListPoliciesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListPoliciesRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
    }
}

public class ListPoliciesShrinkRequest : Tea.TeaModel {
    public var marker: String?

    public var maxItems: Int32?

    public var policyType: String?

    public var tagShrink: String?

    public override init() {
        super.init()
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
        if self.tagShrink != nil {
            map["Tag"] = self.tagShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Marker"] as? String {
            self.marker = value
        }
        if let value = dict["MaxItems"] as? Int32 {
            self.maxItems = value
        }
        if let value = dict["PolicyType"] as? String {
            self.policyType = value
        }
        if let value = dict["Tag"] as? String {
            self.tagShrink = value
        }
    }
}

public class ListPoliciesResponseBody : Tea.TeaModel {
    public class Policies : Tea.TeaModel {
        public class Policy : Tea.TeaModel {
            public class Tags : Tea.TeaModel {
                public class Tag : Tea.TeaModel {
                    public var tagKey: String?

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
                        if self.tagKey != nil {
                            map["TagKey"] = self.tagKey!
                        }
                        if self.tagValue != nil {
                            map["TagValue"] = self.tagValue!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["TagKey"] as? String {
                            self.tagKey = value
                        }
                        if let value = dict["TagValue"] as? String {
                            self.tagValue = value
                        }
                    }
                }
                public var tag: [ListPoliciesResponseBody.Policies.Policy.Tags.Tag]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.tag != nil {
                        var tmp : [Any] = []
                        for k in self.tag! {
                            tmp.append(k.toMap())
                        }
                        map["Tag"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Tag"] as? [Any?] {
                        var tmp : [ListPoliciesResponseBody.Policies.Policy.Tags.Tag] = []
                        for v in value {
                            if v != nil {
                                var model = ListPoliciesResponseBody.Policies.Policy.Tags.Tag()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.tag = tmp
                    }
                }
            }
            public var attachmentCount: Int32?

            public var createDate: String?

            public var defaultVersion: String?

            public var description_: String?

            public var policyName: String?

            public var policyType: String?

            public var tags: ListPoliciesResponseBody.Policies.Policy.Tags?

            public var updateDate: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.tags?.validate()
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
                if self.tags != nil {
                    map["Tags"] = self.tags?.toMap()
                }
                if self.updateDate != nil {
                    map["UpdateDate"] = self.updateDate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AttachmentCount"] as? Int32 {
                    self.attachmentCount = value
                }
                if let value = dict["CreateDate"] as? String {
                    self.createDate = value
                }
                if let value = dict["DefaultVersion"] as? String {
                    self.defaultVersion = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["PolicyName"] as? String {
                    self.policyName = value
                }
                if let value = dict["PolicyType"] as? String {
                    self.policyType = value
                }
                if let value = dict["Tags"] as? [String: Any?] {
                    var model = ListPoliciesResponseBody.Policies.Policy.Tags()
                    model.fromMap(value)
                    self.tags = model
                }
                if let value = dict["UpdateDate"] as? String {
                    self.updateDate = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Policy"] as? [Any?] {
                var tmp : [ListPoliciesResponseBody.Policies.Policy] = []
                for v in value {
                    if v != nil {
                        var model = ListPoliciesResponseBody.Policies.Policy()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsTruncated"] as? Bool {
            self.isTruncated = value
        }
        if let value = dict["Marker"] as? String {
            self.marker = value
        }
        if let value = dict["Policies"] as? [String: Any?] {
            var model = ListPoliciesResponseBody.Policies()
            model.fromMap(value)
            self.policies = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListPoliciesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AttachDate"] as? String {
                    self.attachDate = value
                }
                if let value = dict["DefaultVersion"] as? String {
                    self.defaultVersion = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["PolicyName"] as? String {
                    self.policyName = value
                }
                if let value = dict["PolicyType"] as? String {
                    self.policyType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Policy"] as? [Any?] {
                var tmp : [ListPoliciesForGroupResponseBody.Policies.Policy] = []
                for v in value {
                    if v != nil {
                        var model = ListPoliciesForGroupResponseBody.Policies.Policy()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Policies"] as? [String: Any?] {
            var model = ListPoliciesForGroupResponseBody.Policies()
            model.fromMap(value)
            self.policies = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListPoliciesForGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RoleName"] as? String {
            self.roleName = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AttachDate"] as? String {
                    self.attachDate = value
                }
                if let value = dict["DefaultVersion"] as? String {
                    self.defaultVersion = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["PolicyName"] as? String {
                    self.policyName = value
                }
                if let value = dict["PolicyType"] as? String {
                    self.policyType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Policy"] as? [Any?] {
                var tmp : [ListPoliciesForRoleResponseBody.Policies.Policy] = []
                for v in value {
                    if v != nil {
                        var model = ListPoliciesForRoleResponseBody.Policies.Policy()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Policies"] as? [String: Any?] {
            var model = ListPoliciesForRoleResponseBody.Policies()
            model.fromMap(value)
            self.policies = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListPoliciesForRoleResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserName"] as? String {
            self.userName = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AttachDate"] as? String {
                    self.attachDate = value
                }
                if let value = dict["DefaultVersion"] as? String {
                    self.defaultVersion = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["PolicyName"] as? String {
                    self.policyName = value
                }
                if let value = dict["PolicyType"] as? String {
                    self.policyType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Policy"] as? [Any?] {
                var tmp : [ListPoliciesForUserResponseBody.Policies.Policy] = []
                for v in value {
                    if v != nil {
                        var model = ListPoliciesForUserResponseBody.Policies.Policy()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Policies"] as? [String: Any?] {
            var model = ListPoliciesForUserResponseBody.Policies()
            model.fromMap(value)
            self.policies = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListPoliciesForUserResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
        }
        if let value = dict["PolicyType"] as? String {
            self.policyType = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateDate"] as? String {
                    self.createDate = value
                }
                if let value = dict["IsDefaultVersion"] as? Bool {
                    self.isDefaultVersion = value
                }
                if let value = dict["PolicyDocument"] as? String {
                    self.policyDocument = value
                }
                if let value = dict["VersionId"] as? String {
                    self.versionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PolicyVersion"] as? [Any?] {
                var tmp : [ListPolicyVersionsResponseBody.PolicyVersions.PolicyVersion] = []
                for v in value {
                    if v != nil {
                        var model = ListPolicyVersionsResponseBody.PolicyVersions.PolicyVersion()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicyVersions"] as? [String: Any?] {
            var model = ListPolicyVersionsResponseBody.PolicyVersions()
            model.fromMap(value)
            self.policyVersions = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListPolicyVersionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListRolesRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var marker: String?

    public var maxItems: Int32?

    public var tag: [ListRolesRequest.Tag]?

    public override init() {
        super.init()
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
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Marker"] as? String {
            self.marker = value
        }
        if let value = dict["MaxItems"] as? Int32 {
            self.maxItems = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListRolesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListRolesRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
    }
}

public class ListRolesShrinkRequest : Tea.TeaModel {
    public var marker: String?

    public var maxItems: Int32?

    public var tagShrink: String?

    public override init() {
        super.init()
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
        if self.tagShrink != nil {
            map["Tag"] = self.tagShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Marker"] as? String {
            self.marker = value
        }
        if let value = dict["MaxItems"] as? Int32 {
            self.maxItems = value
        }
        if let value = dict["Tag"] as? String {
            self.tagShrink = value
        }
    }
}

public class ListRolesResponseBody : Tea.TeaModel {
    public class Roles : Tea.TeaModel {
        public class Role : Tea.TeaModel {
            public class Tags : Tea.TeaModel {
                public class Tag : Tea.TeaModel {
                    public var tagKey: String?

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
                        if self.tagKey != nil {
                            map["TagKey"] = self.tagKey!
                        }
                        if self.tagValue != nil {
                            map["TagValue"] = self.tagValue!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["TagKey"] as? String {
                            self.tagKey = value
                        }
                        if let value = dict["TagValue"] as? String {
                            self.tagValue = value
                        }
                    }
                }
                public var tag: [ListRolesResponseBody.Roles.Role.Tags.Tag]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.tag != nil {
                        var tmp : [Any] = []
                        for k in self.tag! {
                            tmp.append(k.toMap())
                        }
                        map["Tag"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Tag"] as? [Any?] {
                        var tmp : [ListRolesResponseBody.Roles.Role.Tags.Tag] = []
                        for v in value {
                            if v != nil {
                                var model = ListRolesResponseBody.Roles.Role.Tags.Tag()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.tag = tmp
                    }
                }
            }
            public var arn: String?

            public var createDate: String?

            public var description_: String?

            public var maxSessionDuration: Int64?

            public var roleId: String?

            public var roleName: String?

            public var tags: ListRolesResponseBody.Roles.Role.Tags?

            public var updateDate: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.tags?.validate()
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
                if self.tags != nil {
                    map["Tags"] = self.tags?.toMap()
                }
                if self.updateDate != nil {
                    map["UpdateDate"] = self.updateDate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Arn"] as? String {
                    self.arn = value
                }
                if let value = dict["CreateDate"] as? String {
                    self.createDate = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["MaxSessionDuration"] as? Int64 {
                    self.maxSessionDuration = value
                }
                if let value = dict["RoleId"] as? String {
                    self.roleId = value
                }
                if let value = dict["RoleName"] as? String {
                    self.roleName = value
                }
                if let value = dict["Tags"] as? [String: Any?] {
                    var model = ListRolesResponseBody.Roles.Role.Tags()
                    model.fromMap(value)
                    self.tags = model
                }
                if let value = dict["UpdateDate"] as? String {
                    self.updateDate = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Role"] as? [Any?] {
                var tmp : [ListRolesResponseBody.Roles.Role] = []
                for v in value {
                    if v != nil {
                        var model = ListRolesResponseBody.Roles.Role()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsTruncated"] as? Bool {
            self.isTruncated = value
        }
        if let value = dict["Marker"] as? String {
            self.marker = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Roles"] as? [String: Any?] {
            var model = ListRolesResponseBody.Roles()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListRolesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTagResourcesRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var nextToken: String?

    public var pageSize: Int32?

    public var resourceNames: [String]?

    public var resourceType: String?

    public var tag: [ListTagResourcesRequest.Tag]?

    public override init() {
        super.init()
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
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceNames != nil {
            map["ResourceNames"] = self.resourceNames!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ResourceNames"] as? [String] {
            self.resourceNames = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListTagResourcesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListTagResourcesRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
    }
}

public class ListTagResourcesShrinkRequest : Tea.TeaModel {
    public var nextToken: String?

    public var pageSize: Int32?

    public var resourceNamesShrink: String?

    public var resourceType: String?

    public var tagShrink: String?

    public override init() {
        super.init()
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
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceNamesShrink != nil {
            map["ResourceNames"] = self.resourceNamesShrink!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tagShrink != nil {
            map["Tag"] = self.tagShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ResourceNames"] as? String {
            self.resourceNamesShrink = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Tag"] as? String {
            self.tagShrink = value
        }
    }
}

public class ListTagResourcesResponseBody : Tea.TeaModel {
    public class TagResources : Tea.TeaModel {
        public var resourceName: String?

        public var resourceType: String?

        public var tagKey: String?

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
            if self.resourceName != nil {
                map["ResourceName"] = self.resourceName!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            if self.tagKey != nil {
                map["TagKey"] = self.tagKey!
            }
            if self.tagValue != nil {
                map["TagValue"] = self.tagValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ResourceName"] as? String {
                self.resourceName = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
            if let value = dict["TagKey"] as? String {
                self.tagKey = value
            }
            if let value = dict["TagValue"] as? String {
                self.tagValue = value
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var tagResources: [ListTagResourcesResponseBody.TagResources]?

    public override init() {
        super.init()
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
        if self.tagResources != nil {
            var tmp : [Any] = []
            for k in self.tagResources! {
                tmp.append(k.toMap())
            }
            map["TagResources"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TagResources"] as? [Any?] {
            var tmp : [ListTagResourcesResponseBody.TagResources] = []
            for v in value {
                if v != nil {
                    var model = ListTagResourcesResponseBody.TagResources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tagResources = tmp
        }
    }
}

public class ListTagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTagResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListTagResourcesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Marker"] as? String {
            self.marker = value
        }
        if let value = dict["MaxItems"] as? Int32 {
            self.maxItems = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Comments"] as? String {
                    self.comments = value
                }
                if let value = dict["CreateDate"] as? String {
                    self.createDate = value
                }
                if let value = dict["DisplayName"] as? String {
                    self.displayName = value
                }
                if let value = dict["Email"] as? String {
                    self.email = value
                }
                if let value = dict["MobilePhone"] as? String {
                    self.mobilePhone = value
                }
                if let value = dict["UpdateDate"] as? String {
                    self.updateDate = value
                }
                if let value = dict["UserId"] as? String {
                    self.userId = value
                }
                if let value = dict["UserName"] as? String {
                    self.userName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["User"] as? [Any?] {
                var tmp : [ListUsersResponseBody.Users.User] = []
                for v in value {
                    if v != nil {
                        var model = ListUsersResponseBody.Users.User()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsTruncated"] as? Bool {
            self.isTruncated = value
        }
        if let value = dict["Marker"] as? String {
            self.marker = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Users"] as? [String: Any?] {
            var model = ListUsersResponseBody.Users()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListUsersResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["Marker"] as? String {
            self.marker = value
        }
        if let value = dict["MaxItems"] as? Int32 {
            self.maxItems = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DisplayName"] as? String {
                    self.displayName = value
                }
                if let value = dict["JoinDate"] as? String {
                    self.joinDate = value
                }
                if let value = dict["UserName"] as? String {
                    self.userName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["User"] as? [Any?] {
                var tmp : [ListUsersForGroupResponseBody.Users.User] = []
                for v in value {
                    if v != nil {
                        var model = ListUsersForGroupResponseBody.Users.User()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsTruncated"] as? Bool {
            self.isTruncated = value
        }
        if let value = dict["Marker"] as? String {
            self.marker = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Users"] as? [String: Any?] {
            var model = ListUsersForGroupResponseBody.Users()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListUsersForGroupResponseBody()
            model.fromMap(value)
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["DisplayName"] as? String {
                        self.displayName = value
                    }
                    if let value = dict["UserId"] as? String {
                        self.userId = value
                    }
                    if let value = dict["UserName"] as? String {
                        self.userName = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ActivateDate"] as? String {
                    self.activateDate = value
                }
                if let value = dict["SerialNumber"] as? String {
                    self.serialNumber = value
                }
                if let value = dict["User"] as? [String: Any?] {
                    var model = ListVirtualMFADevicesResponseBody.VirtualMFADevices.VirtualMFADevice.User()
                    model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["VirtualMFADevice"] as? [Any?] {
                var tmp : [ListVirtualMFADevicesResponseBody.VirtualMFADevices.VirtualMFADevice] = []
                for v in value {
                    if v != nil {
                        var model = ListVirtualMFADevicesResponseBody.VirtualMFADevices.VirtualMFADevice()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["VirtualMFADevices"] as? [String: Any?] {
            var model = ListVirtualMFADevicesResponseBody.VirtualMFADevices()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListVirtualMFADevicesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RemoveUserFromGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountAlias"] as? String {
            self.accountAlias = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetAccountAliasResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
        }
        if let value = dict["VersionId"] as? String {
            self.versionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetDefaultPolicyVersionResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HardExpiry"] as? Bool {
            self.hardExpiry = value
        }
        if let value = dict["MaxLoginAttemps"] as? Int32 {
            self.maxLoginAttemps = value
        }
        if let value = dict["MaxPasswordAge"] as? Int32 {
            self.maxPasswordAge = value
        }
        if let value = dict["MinimumPasswordLength"] as? Int32 {
            self.minimumPasswordLength = value
        }
        if let value = dict["PasswordReusePrevention"] as? Int32 {
            self.passwordReusePrevention = value
        }
        if let value = dict["RequireLowercaseCharacters"] as? Bool {
            self.requireLowercaseCharacters = value
        }
        if let value = dict["RequireNumbers"] as? Bool {
            self.requireNumbers = value
        }
        if let value = dict["RequireSymbols"] as? Bool {
            self.requireSymbols = value
        }
        if let value = dict["RequireUppercaseCharacters"] as? Bool {
            self.requireUppercaseCharacters = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["HardExpiry"] as? Bool {
                self.hardExpiry = value
            }
            if let value = dict["MaxLoginAttemps"] as? Int32 {
                self.maxLoginAttemps = value
            }
            if let value = dict["MaxPasswordAge"] as? Int32 {
                self.maxPasswordAge = value
            }
            if let value = dict["MinimumPasswordLength"] as? Int32 {
                self.minimumPasswordLength = value
            }
            if let value = dict["PasswordReusePrevention"] as? Int32 {
                self.passwordReusePrevention = value
            }
            if let value = dict["RequireLowercaseCharacters"] as? Bool {
                self.requireLowercaseCharacters = value
            }
            if let value = dict["RequireNumbers"] as? Bool {
                self.requireNumbers = value
            }
            if let value = dict["RequireSymbols"] as? Bool {
                self.requireSymbols = value
            }
            if let value = dict["RequireUppercaseCharacters"] as? Bool {
                self.requireUppercaseCharacters = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PasswordPolicy"] as? [String: Any?] {
            var model = SetPasswordPolicyResponseBody.PasswordPolicy()
            model.fromMap(value)
            self.passwordPolicy = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetPasswordPolicyResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllowUserToChangePassword"] as? Bool {
            self.allowUserToChangePassword = value
        }
        if let value = dict["AllowUserToManageAccessKeys"] as? Bool {
            self.allowUserToManageAccessKeys = value
        }
        if let value = dict["AllowUserToManageMFADevices"] as? Bool {
            self.allowUserToManageMFADevices = value
        }
        if let value = dict["AllowUserToManagePublicKeys"] as? Bool {
            self.allowUserToManagePublicKeys = value
        }
        if let value = dict["EnableSaveMFATicket"] as? Bool {
            self.enableSaveMFATicket = value
        }
        if let value = dict["LoginNetworkMasks"] as? String {
            self.loginNetworkMasks = value
        }
        if let value = dict["LoginSessionDuration"] as? Int32 {
            self.loginSessionDuration = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AllowUserToManageAccessKeys"] as? Bool {
                    self.allowUserToManageAccessKeys = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AllowUserToChangePassword"] as? Bool {
                    self.allowUserToChangePassword = value
                }
                if let value = dict["EnableSaveMFATicket"] as? Bool {
                    self.enableSaveMFATicket = value
                }
                if let value = dict["LoginNetworkMasks"] as? String {
                    self.loginNetworkMasks = value
                }
                if let value = dict["LoginSessionDuration"] as? Int32 {
                    self.loginSessionDuration = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AllowUserToManageMFADevices"] as? Bool {
                    self.allowUserToManageMFADevices = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AllowUserToManagePublicKeys"] as? Bool {
                    self.allowUserToManagePublicKeys = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessKeyPreference"] as? [String: Any?] {
                var model = SetSecurityPreferenceResponseBody.SecurityPreference.AccessKeyPreference()
                model.fromMap(value)
                self.accessKeyPreference = model
            }
            if let value = dict["LoginProfilePreference"] as? [String: Any?] {
                var model = SetSecurityPreferenceResponseBody.SecurityPreference.LoginProfilePreference()
                model.fromMap(value)
                self.loginProfilePreference = model
            }
            if let value = dict["MFAPreference"] as? [String: Any?] {
                var model = SetSecurityPreferenceResponseBody.SecurityPreference.MFAPreference()
                model.fromMap(value)
                self.MFAPreference = model
            }
            if let value = dict["PublicKeyPreference"] as? [String: Any?] {
                var model = SetSecurityPreferenceResponseBody.SecurityPreference.PublicKeyPreference()
                model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SecurityPreference"] as? [String: Any?] {
            var model = SetSecurityPreferenceResponseBody.SecurityPreference()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetSecurityPreferenceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class TagResourcesRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var resourceNames: [String]?

    public var resourceType: String?

    public var tag: [TagResourcesRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.resourceNames != nil {
            map["ResourceNames"] = self.resourceNames!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceNames"] as? [String] {
            self.resourceNames = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [TagResourcesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = TagResourcesRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
    }
}

public class TagResourcesShrinkRequest : Tea.TeaModel {
    public var resourceNamesShrink: String?

    public var resourceType: String?

    public var tagShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.resourceNamesShrink != nil {
            map["ResourceNames"] = self.resourceNamesShrink!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tagShrink != nil {
            map["Tag"] = self.tagShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceNames"] as? String {
            self.resourceNamesShrink = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Tag"] as? String {
            self.tagShrink = value
        }
    }
}

public class TagResourcesResponseBody : Tea.TeaModel {
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

public class TagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TagResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = TagResourcesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserName"] as? String {
            self.userName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SerialNumber"] as? String {
                self.serialNumber = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MFADevice"] as? [String: Any?] {
            var model = UnbindMFADeviceResponseBody.MFADevice()
            model.fromMap(value)
            self.MFADevice = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UnbindMFADeviceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UntagResourcesRequest : Tea.TeaModel {
    public var all: Bool?

    public var resourceNames: [String]?

    public var resourceType: String?

    public var tagKeys: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.all != nil {
            map["All"] = self.all!
        }
        if self.resourceNames != nil {
            map["ResourceNames"] = self.resourceNames!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tagKeys != nil {
            map["TagKeys"] = self.tagKeys!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["All"] as? Bool {
            self.all = value
        }
        if let value = dict["ResourceNames"] as? [String] {
            self.resourceNames = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["TagKeys"] as? [String] {
            self.tagKeys = value
        }
    }
}

public class UntagResourcesShrinkRequest : Tea.TeaModel {
    public var all: Bool?

    public var resourceNamesShrink: String?

    public var resourceType: String?

    public var tagKeysShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.all != nil {
            map["All"] = self.all!
        }
        if self.resourceNamesShrink != nil {
            map["ResourceNames"] = self.resourceNamesShrink!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tagKeysShrink != nil {
            map["TagKeys"] = self.tagKeysShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["All"] as? Bool {
            self.all = value
        }
        if let value = dict["ResourceNames"] as? String {
            self.resourceNamesShrink = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["TagKeys"] as? String {
            self.tagKeysShrink = value
        }
    }
}

public class UntagResourcesResponseBody : Tea.TeaModel {
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

public class UntagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UntagResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UntagResourcesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["UserAccessKeyId"] as? String {
            self.userAccessKeyId = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateAccessKeyResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["NewComments"] as? String {
            self.newComments = value
        }
        if let value = dict["NewGroupName"] as? String {
            self.newGroupName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Comments"] as? String {
                self.comments = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["GroupId"] as? String {
                self.groupId = value
            }
            if let value = dict["GroupName"] as? String {
                self.groupName = value
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Group"] as? [String: Any?] {
            var model = UpdateGroupResponseBody.Group()
            model.fromMap(value)
            self.group = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MFABindRequired"] as? Bool {
            self.MFABindRequired = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["PasswordResetRequired"] as? Bool {
            self.passwordResetRequired = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateLoginProfileResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NewDescription"] as? String {
            self.newDescription = value
        }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["DefaultVersion"] as? String {
                self.defaultVersion = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["PolicyName"] as? String {
                self.policyName = value
            }
            if let value = dict["PolicyType"] as? String {
                self.policyType = value
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Policy"] as? [String: Any?] {
            var model = UpdatePolicyDescriptionResponseBody.Policy()
            model.fromMap(value)
            self.policy = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdatePolicyDescriptionResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NewAssumeRolePolicyDocument"] as? String {
            self.newAssumeRolePolicyDocument = value
        }
        if let value = dict["NewDescription"] as? String {
            self.newDescription = value
        }
        if let value = dict["NewMaxSessionDuration"] as? Int64 {
            self.newMaxSessionDuration = value
        }
        if let value = dict["RoleName"] as? String {
            self.roleName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Arn"] as? String {
                self.arn = value
            }
            if let value = dict["AssumeRolePolicyDocument"] as? String {
                self.assumeRolePolicyDocument = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["MaxSessionDuration"] as? Int64 {
                self.maxSessionDuration = value
            }
            if let value = dict["RoleId"] as? String {
                self.roleId = value
            }
            if let value = dict["RoleName"] as? String {
                self.roleName = value
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Role"] as? [String: Any?] {
            var model = UpdateRoleResponseBody.Role()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateRoleResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NewComments"] as? String {
            self.newComments = value
        }
        if let value = dict["NewDisplayName"] as? String {
            self.newDisplayName = value
        }
        if let value = dict["NewEmail"] as? String {
            self.newEmail = value
        }
        if let value = dict["NewMobilePhone"] as? String {
            self.newMobilePhone = value
        }
        if let value = dict["NewUserName"] as? String {
            self.newUserName = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Comments"] as? String {
                self.comments = value
            }
            if let value = dict["CreateDate"] as? String {
                self.createDate = value
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["MobilePhone"] as? String {
                self.mobilePhone = value
            }
            if let value = dict["UpdateDate"] as? String {
                self.updateDate = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
            if let value = dict["UserName"] as? String {
                self.userName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["User"] as? [String: Any?] {
            var model = UpdateUserResponseBody.User()
            model.fromMap(value)
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
