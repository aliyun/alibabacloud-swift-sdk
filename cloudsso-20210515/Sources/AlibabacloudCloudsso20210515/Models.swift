import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddExternalSAMLIdPCertificateRequest : Tea.TeaModel {
    public var directoryId: String?

    public var x509Certificate: String?

    public override init() {
        super.init()
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
        if self.x509Certificate != nil {
            map["X509Certificate"] = self.x509Certificate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("X509Certificate") {
            self.x509Certificate = dict["X509Certificate"] as! String
        }
    }
}

public class AddExternalSAMLIdPCertificateResponseBody : Tea.TeaModel {
    public var certificateId: String?

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
        if self.certificateId != nil {
            map["CertificateId"] = self.certificateId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertificateId") {
            self.certificateId = dict["CertificateId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AddExternalSAMLIdPCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddExternalSAMLIdPCertificateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AddExternalSAMLIdPCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddPermissionPolicyToAccessConfigurationRequest : Tea.TeaModel {
    public var accessConfigurationId: String?

    public var directoryId: String?

    public var inlinePolicyDocument: String?

    public var permissionPolicyName: String?

    public var permissionPolicyType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessConfigurationId != nil {
            map["AccessConfigurationId"] = self.accessConfigurationId!
        }
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.inlinePolicyDocument != nil {
            map["InlinePolicyDocument"] = self.inlinePolicyDocument!
        }
        if self.permissionPolicyName != nil {
            map["PermissionPolicyName"] = self.permissionPolicyName!
        }
        if self.permissionPolicyType != nil {
            map["PermissionPolicyType"] = self.permissionPolicyType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessConfigurationId") {
            self.accessConfigurationId = dict["AccessConfigurationId"] as! String
        }
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("InlinePolicyDocument") {
            self.inlinePolicyDocument = dict["InlinePolicyDocument"] as! String
        }
        if dict.keys.contains("PermissionPolicyName") {
            self.permissionPolicyName = dict["PermissionPolicyName"] as! String
        }
        if dict.keys.contains("PermissionPolicyType") {
            self.permissionPolicyType = dict["PermissionPolicyType"] as! String
        }
    }
}

public class AddPermissionPolicyToAccessConfigurationResponseBody : Tea.TeaModel {
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

public class AddPermissionPolicyToAccessConfigurationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddPermissionPolicyToAccessConfigurationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AddPermissionPolicyToAccessConfigurationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddUserToGroupRequest : Tea.TeaModel {
    public var directoryId: String?

    public var groupId: String?

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
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
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

public class ClearExternalSAMLIdentityProviderRequest : Tea.TeaModel {
    public var directoryId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
    }
}

public class ClearExternalSAMLIdentityProviderResponseBody : Tea.TeaModel {
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

public class ClearExternalSAMLIdentityProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ClearExternalSAMLIdentityProviderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ClearExternalSAMLIdentityProviderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAccessAssignmentRequest : Tea.TeaModel {
    public var accessConfigurationId: String?

    public var directoryId: String?

    public var principalId: String?

    public var principalType: String?

    public var targetId: String?

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
        if self.accessConfigurationId != nil {
            map["AccessConfigurationId"] = self.accessConfigurationId!
        }
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.principalId != nil {
            map["PrincipalId"] = self.principalId!
        }
        if self.principalType != nil {
            map["PrincipalType"] = self.principalType!
        }
        if self.targetId != nil {
            map["TargetId"] = self.targetId!
        }
        if self.targetType != nil {
            map["TargetType"] = self.targetType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessConfigurationId") {
            self.accessConfigurationId = dict["AccessConfigurationId"] as! String
        }
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("PrincipalId") {
            self.principalId = dict["PrincipalId"] as! String
        }
        if dict.keys.contains("PrincipalType") {
            self.principalType = dict["PrincipalType"] as! String
        }
        if dict.keys.contains("TargetId") {
            self.targetId = dict["TargetId"] as! String
        }
        if dict.keys.contains("TargetType") {
            self.targetType = dict["TargetType"] as! String
        }
    }
}

public class CreateAccessAssignmentResponseBody : Tea.TeaModel {
    public class Task : Tea.TeaModel {
        public var accessConfigurationId: String?

        public var accessConfigurationName: String?

        public var principalId: String?

        public var principalName: String?

        public var principalType: String?

        public var status: String?

        public var targetId: String?

        public var targetName: String?

        public var targetPath: String?

        public var targetPathName: String?

        public var targetType: String?

        public var taskId: String?

        public var taskType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessConfigurationId != nil {
                map["AccessConfigurationId"] = self.accessConfigurationId!
            }
            if self.accessConfigurationName != nil {
                map["AccessConfigurationName"] = self.accessConfigurationName!
            }
            if self.principalId != nil {
                map["PrincipalId"] = self.principalId!
            }
            if self.principalName != nil {
                map["PrincipalName"] = self.principalName!
            }
            if self.principalType != nil {
                map["PrincipalType"] = self.principalType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.targetId != nil {
                map["TargetId"] = self.targetId!
            }
            if self.targetName != nil {
                map["TargetName"] = self.targetName!
            }
            if self.targetPath != nil {
                map["TargetPath"] = self.targetPath!
            }
            if self.targetPathName != nil {
                map["TargetPathName"] = self.targetPathName!
            }
            if self.targetType != nil {
                map["TargetType"] = self.targetType!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskType != nil {
                map["TaskType"] = self.taskType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessConfigurationId") {
                self.accessConfigurationId = dict["AccessConfigurationId"] as! String
            }
            if dict.keys.contains("AccessConfigurationName") {
                self.accessConfigurationName = dict["AccessConfigurationName"] as! String
            }
            if dict.keys.contains("PrincipalId") {
                self.principalId = dict["PrincipalId"] as! String
            }
            if dict.keys.contains("PrincipalName") {
                self.principalName = dict["PrincipalName"] as! String
            }
            if dict.keys.contains("PrincipalType") {
                self.principalType = dict["PrincipalType"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TargetId") {
                self.targetId = dict["TargetId"] as! String
            }
            if dict.keys.contains("TargetName") {
                self.targetName = dict["TargetName"] as! String
            }
            if dict.keys.contains("TargetPath") {
                self.targetPath = dict["TargetPath"] as! String
            }
            if dict.keys.contains("TargetPathName") {
                self.targetPathName = dict["TargetPathName"] as! String
            }
            if dict.keys.contains("TargetType") {
                self.targetType = dict["TargetType"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TaskType") {
                self.taskType = dict["TaskType"] as! String
            }
        }
    }
    public var requestId: String?

    public var task: CreateAccessAssignmentResponseBody.Task?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.task != nil {
            map["Task"] = self.task?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Task") {
            var model = CreateAccessAssignmentResponseBody.Task()
            model.fromMap(dict["Task"] as! [String: Any])
            self.task = model
        }
    }
}

public class CreateAccessAssignmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAccessAssignmentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateAccessAssignmentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAccessConfigurationRequest : Tea.TeaModel {
    public var accessConfigurationName: String?

    public var description_: String?

    public var directoryId: String?

    public var relayState: String?

    public var sessionDuration: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessConfigurationName != nil {
            map["AccessConfigurationName"] = self.accessConfigurationName!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.relayState != nil {
            map["RelayState"] = self.relayState!
        }
        if self.sessionDuration != nil {
            map["SessionDuration"] = self.sessionDuration!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessConfigurationName") {
            self.accessConfigurationName = dict["AccessConfigurationName"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("RelayState") {
            self.relayState = dict["RelayState"] as! String
        }
        if dict.keys.contains("SessionDuration") {
            self.sessionDuration = dict["SessionDuration"] as! Int32
        }
    }
}

public class CreateAccessConfigurationResponseBody : Tea.TeaModel {
    public class AccessConfiguration : Tea.TeaModel {
        public var accessConfigurationId: String?

        public var accessConfigurationName: String?

        public var createTime: String?

        public var description_: String?

        public var relayState: String?

        public var sessionDuration: Int32?

        public var statusNotifications: [String]?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessConfigurationId != nil {
                map["AccessConfigurationId"] = self.accessConfigurationId!
            }
            if self.accessConfigurationName != nil {
                map["AccessConfigurationName"] = self.accessConfigurationName!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.relayState != nil {
                map["RelayState"] = self.relayState!
            }
            if self.sessionDuration != nil {
                map["SessionDuration"] = self.sessionDuration!
            }
            if self.statusNotifications != nil {
                map["StatusNotifications"] = self.statusNotifications!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessConfigurationId") {
                self.accessConfigurationId = dict["AccessConfigurationId"] as! String
            }
            if dict.keys.contains("AccessConfigurationName") {
                self.accessConfigurationName = dict["AccessConfigurationName"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("RelayState") {
                self.relayState = dict["RelayState"] as! String
            }
            if dict.keys.contains("SessionDuration") {
                self.sessionDuration = dict["SessionDuration"] as! Int32
            }
            if dict.keys.contains("StatusNotifications") {
                self.statusNotifications = dict["StatusNotifications"] as! [String]
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var accessConfiguration: CreateAccessConfigurationResponseBody.AccessConfiguration?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accessConfiguration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessConfiguration != nil {
            map["AccessConfiguration"] = self.accessConfiguration?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessConfiguration") {
            var model = CreateAccessConfigurationResponseBody.AccessConfiguration()
            model.fromMap(dict["AccessConfiguration"] as! [String: Any])
            self.accessConfiguration = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateAccessConfigurationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAccessConfigurationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateAccessConfigurationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDirectoryRequest : Tea.TeaModel {
    public var directoryName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.directoryName != nil {
            map["DirectoryName"] = self.directoryName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryName") {
            self.directoryName = dict["DirectoryName"] as! String
        }
    }
}

public class CreateDirectoryResponseBody : Tea.TeaModel {
    public class Directory : Tea.TeaModel {
        public var createTime: String?

        public var directoryId: String?

        public var directoryName: String?

        public var region: String?

        public var updateTime: String?

        public override init() {
            super.init()
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
            if self.directoryId != nil {
                map["DirectoryId"] = self.directoryId!
            }
            if self.directoryName != nil {
                map["DirectoryName"] = self.directoryName!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DirectoryId") {
                self.directoryId = dict["DirectoryId"] as! String
            }
            if dict.keys.contains("DirectoryName") {
                self.directoryName = dict["DirectoryName"] as! String
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var directory: CreateDirectoryResponseBody.Directory?

    public var requestId: String?

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
        if self.directory != nil {
            map["Directory"] = self.directory?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Directory") {
            var model = CreateDirectoryResponseBody.Directory()
            model.fromMap(dict["Directory"] as! [String: Any])
            self.directory = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateDirectoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDirectoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateDirectoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateGroupRequest : Tea.TeaModel {
    public var description_: String?

    public var directoryId: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
        }
    }
}

public class CreateGroupResponseBody : Tea.TeaModel {
    public class Group : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var groupId: String?

        public var groupName: String?

        public var provisionType: String?

        public var updateTime: String?

        public override init() {
            super.init()
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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.provisionType != nil {
                map["ProvisionType"] = self.provisionType!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
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
            if dict.keys.contains("GroupId") {
                self.groupId = dict["GroupId"] as! String
            }
            if dict.keys.contains("GroupName") {
                self.groupName = dict["GroupName"] as! String
            }
            if dict.keys.contains("ProvisionType") {
                self.provisionType = dict["ProvisionType"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
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

public class CreateSCIMServerCredentialRequest : Tea.TeaModel {
    public var directoryId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
    }
}

public class CreateSCIMServerCredentialResponseBody : Tea.TeaModel {
    public class SCIMServerCredential : Tea.TeaModel {
        public var createTime: String?

        public var credentialId: String?

        public var credentialSecret: String?

        public var credentialType: String?

        public var directoryId: String?

        public var expireTime: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.credentialId != nil {
                map["CredentialId"] = self.credentialId!
            }
            if self.credentialSecret != nil {
                map["CredentialSecret"] = self.credentialSecret!
            }
            if self.credentialType != nil {
                map["CredentialType"] = self.credentialType!
            }
            if self.directoryId != nil {
                map["DirectoryId"] = self.directoryId!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CredentialId") {
                self.credentialId = dict["CredentialId"] as! String
            }
            if dict.keys.contains("CredentialSecret") {
                self.credentialSecret = dict["CredentialSecret"] as! String
            }
            if dict.keys.contains("CredentialType") {
                self.credentialType = dict["CredentialType"] as! String
            }
            if dict.keys.contains("DirectoryId") {
                self.directoryId = dict["DirectoryId"] as! String
            }
            if dict.keys.contains("ExpireTime") {
                self.expireTime = dict["ExpireTime"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var requestId: String?

    public var SCIMServerCredential: CreateSCIMServerCredentialResponseBody.SCIMServerCredential?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.SCIMServerCredential?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.SCIMServerCredential != nil {
            map["SCIMServerCredential"] = self.SCIMServerCredential?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SCIMServerCredential") {
            var model = CreateSCIMServerCredentialResponseBody.SCIMServerCredential()
            model.fromMap(dict["SCIMServerCredential"] as! [String: Any])
            self.SCIMServerCredential = model
        }
    }
}

public class CreateSCIMServerCredentialResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSCIMServerCredentialResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateSCIMServerCredentialResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateUserRequest : Tea.TeaModel {
    public var description_: String?

    public var directoryId: String?

    public var displayName: String?

    public var email: String?

    public var firstName: String?

    public var lastName: String?

    public var status: String?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.firstName != nil {
            map["FirstName"] = self.firstName!
        }
        if self.lastName != nil {
            map["LastName"] = self.lastName!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("DisplayName") {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("Email") {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("FirstName") {
            self.firstName = dict["FirstName"] as! String
        }
        if dict.keys.contains("LastName") {
            self.lastName = dict["LastName"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class CreateUserResponseBody : Tea.TeaModel {
    public class User : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var displayName: String?

        public var email: String?

        public var firstName: String?

        public var lastName: String?

        public var provisionType: String?

        public var status: String?

        public var updateTime: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.firstName != nil {
                map["FirstName"] = self.firstName!
            }
            if self.lastName != nil {
                map["LastName"] = self.lastName!
            }
            if self.provisionType != nil {
                map["ProvisionType"] = self.provisionType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
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
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DisplayName") {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("Email") {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("FirstName") {
                self.firstName = dict["FirstName"] as! String
            }
            if dict.keys.contains("LastName") {
                self.lastName = dict["LastName"] as! String
            }
            if dict.keys.contains("ProvisionType") {
                self.provisionType = dict["ProvisionType"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
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

public class CreateUserProvisioningRequest : Tea.TeaModel {
    public var deletionStrategy: String?

    public var description_: String?

    public var directoryId: String?

    public var duplicationStrategy: String?

    public var principalId: String?

    public var principalType: String?

    public var targetId: String?

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
        if self.deletionStrategy != nil {
            map["DeletionStrategy"] = self.deletionStrategy!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.duplicationStrategy != nil {
            map["DuplicationStrategy"] = self.duplicationStrategy!
        }
        if self.principalId != nil {
            map["PrincipalId"] = self.principalId!
        }
        if self.principalType != nil {
            map["PrincipalType"] = self.principalType!
        }
        if self.targetId != nil {
            map["TargetId"] = self.targetId!
        }
        if self.targetType != nil {
            map["TargetType"] = self.targetType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeletionStrategy") {
            self.deletionStrategy = dict["DeletionStrategy"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("DuplicationStrategy") {
            self.duplicationStrategy = dict["DuplicationStrategy"] as! String
        }
        if dict.keys.contains("PrincipalId") {
            self.principalId = dict["PrincipalId"] as! String
        }
        if dict.keys.contains("PrincipalType") {
            self.principalType = dict["PrincipalType"] as! String
        }
        if dict.keys.contains("TargetId") {
            self.targetId = dict["TargetId"] as! String
        }
        if dict.keys.contains("TargetType") {
            self.targetType = dict["TargetType"] as! String
        }
    }
}

public class CreateUserProvisioningResponseBody : Tea.TeaModel {
    public class UserProvisioning : Tea.TeaModel {
        public var createTime: String?

        public var deletionStrategy: String?

        public var description_: String?

        public var directoryId: String?

        public var duplicationStrategy: String?

        public var ownerPk: String?

        public var principalId: String?

        public var principalName: String?

        public var principalType: String?

        public var status: String?

        public var targetId: String?

        public var targetName: String?

        public var targetPath: String?

        public var targetType: String?

        public var updateTime: String?

        public var userProvisioningId: String?

        public override init() {
            super.init()
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
            if self.deletionStrategy != nil {
                map["DeletionStrategy"] = self.deletionStrategy!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.directoryId != nil {
                map["DirectoryId"] = self.directoryId!
            }
            if self.duplicationStrategy != nil {
                map["DuplicationStrategy"] = self.duplicationStrategy!
            }
            if self.ownerPk != nil {
                map["OwnerPk"] = self.ownerPk!
            }
            if self.principalId != nil {
                map["PrincipalId"] = self.principalId!
            }
            if self.principalName != nil {
                map["PrincipalName"] = self.principalName!
            }
            if self.principalType != nil {
                map["PrincipalType"] = self.principalType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.targetId != nil {
                map["TargetId"] = self.targetId!
            }
            if self.targetName != nil {
                map["TargetName"] = self.targetName!
            }
            if self.targetPath != nil {
                map["TargetPath"] = self.targetPath!
            }
            if self.targetType != nil {
                map["TargetType"] = self.targetType!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.userProvisioningId != nil {
                map["UserProvisioningId"] = self.userProvisioningId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DeletionStrategy") {
                self.deletionStrategy = dict["DeletionStrategy"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DirectoryId") {
                self.directoryId = dict["DirectoryId"] as! String
            }
            if dict.keys.contains("DuplicationStrategy") {
                self.duplicationStrategy = dict["DuplicationStrategy"] as! String
            }
            if dict.keys.contains("OwnerPk") {
                self.ownerPk = dict["OwnerPk"] as! String
            }
            if dict.keys.contains("PrincipalId") {
                self.principalId = dict["PrincipalId"] as! String
            }
            if dict.keys.contains("PrincipalName") {
                self.principalName = dict["PrincipalName"] as! String
            }
            if dict.keys.contains("PrincipalType") {
                self.principalType = dict["PrincipalType"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TargetId") {
                self.targetId = dict["TargetId"] as! String
            }
            if dict.keys.contains("TargetName") {
                self.targetName = dict["TargetName"] as! String
            }
            if dict.keys.contains("TargetPath") {
                self.targetPath = dict["TargetPath"] as! String
            }
            if dict.keys.contains("TargetType") {
                self.targetType = dict["TargetType"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("UserProvisioningId") {
                self.userProvisioningId = dict["UserProvisioningId"] as! String
            }
        }
    }
    public var requestId: String?

    public var userProvisioning: CreateUserProvisioningResponseBody.UserProvisioning?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.userProvisioning?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.userProvisioning != nil {
            map["UserProvisioning"] = self.userProvisioning?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UserProvisioning") {
            var model = CreateUserProvisioningResponseBody.UserProvisioning()
            model.fromMap(dict["UserProvisioning"] as! [String: Any])
            self.userProvisioning = model
        }
    }
}

public class CreateUserProvisioningResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateUserProvisioningResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateUserProvisioningResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAccessAssignmentRequest : Tea.TeaModel {
    public var accessConfigurationId: String?

    public var deprovisionStrategy: String?

    public var directoryId: String?

    public var principalId: String?

    public var principalType: String?

    public var targetId: String?

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
        if self.accessConfigurationId != nil {
            map["AccessConfigurationId"] = self.accessConfigurationId!
        }
        if self.deprovisionStrategy != nil {
            map["DeprovisionStrategy"] = self.deprovisionStrategy!
        }
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.principalId != nil {
            map["PrincipalId"] = self.principalId!
        }
        if self.principalType != nil {
            map["PrincipalType"] = self.principalType!
        }
        if self.targetId != nil {
            map["TargetId"] = self.targetId!
        }
        if self.targetType != nil {
            map["TargetType"] = self.targetType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessConfigurationId") {
            self.accessConfigurationId = dict["AccessConfigurationId"] as! String
        }
        if dict.keys.contains("DeprovisionStrategy") {
            self.deprovisionStrategy = dict["DeprovisionStrategy"] as! String
        }
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("PrincipalId") {
            self.principalId = dict["PrincipalId"] as! String
        }
        if dict.keys.contains("PrincipalType") {
            self.principalType = dict["PrincipalType"] as! String
        }
        if dict.keys.contains("TargetId") {
            self.targetId = dict["TargetId"] as! String
        }
        if dict.keys.contains("TargetType") {
            self.targetType = dict["TargetType"] as! String
        }
    }
}

public class DeleteAccessAssignmentResponseBody : Tea.TeaModel {
    public class Task : Tea.TeaModel {
        public var accessConfigurationId: String?

        public var accessConfigurationName: String?

        public var principalId: String?

        public var principalName: String?

        public var principalType: String?

        public var status: String?

        public var targetId: String?

        public var targetName: String?

        public var targetPath: String?

        public var targetPathName: String?

        public var targetType: String?

        public var taskId: String?

        public var taskType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessConfigurationId != nil {
                map["AccessConfigurationId"] = self.accessConfigurationId!
            }
            if self.accessConfigurationName != nil {
                map["AccessConfigurationName"] = self.accessConfigurationName!
            }
            if self.principalId != nil {
                map["PrincipalId"] = self.principalId!
            }
            if self.principalName != nil {
                map["PrincipalName"] = self.principalName!
            }
            if self.principalType != nil {
                map["PrincipalType"] = self.principalType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.targetId != nil {
                map["TargetId"] = self.targetId!
            }
            if self.targetName != nil {
                map["TargetName"] = self.targetName!
            }
            if self.targetPath != nil {
                map["TargetPath"] = self.targetPath!
            }
            if self.targetPathName != nil {
                map["TargetPathName"] = self.targetPathName!
            }
            if self.targetType != nil {
                map["TargetType"] = self.targetType!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskType != nil {
                map["TaskType"] = self.taskType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessConfigurationId") {
                self.accessConfigurationId = dict["AccessConfigurationId"] as! String
            }
            if dict.keys.contains("AccessConfigurationName") {
                self.accessConfigurationName = dict["AccessConfigurationName"] as! String
            }
            if dict.keys.contains("PrincipalId") {
                self.principalId = dict["PrincipalId"] as! String
            }
            if dict.keys.contains("PrincipalName") {
                self.principalName = dict["PrincipalName"] as! String
            }
            if dict.keys.contains("PrincipalType") {
                self.principalType = dict["PrincipalType"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TargetId") {
                self.targetId = dict["TargetId"] as! String
            }
            if dict.keys.contains("TargetName") {
                self.targetName = dict["TargetName"] as! String
            }
            if dict.keys.contains("TargetPath") {
                self.targetPath = dict["TargetPath"] as! String
            }
            if dict.keys.contains("TargetPathName") {
                self.targetPathName = dict["TargetPathName"] as! String
            }
            if dict.keys.contains("TargetType") {
                self.targetType = dict["TargetType"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TaskType") {
                self.taskType = dict["TaskType"] as! String
            }
        }
    }
    public var requestId: String?

    public var task: DeleteAccessAssignmentResponseBody.Task?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.task != nil {
            map["Task"] = self.task?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Task") {
            var model = DeleteAccessAssignmentResponseBody.Task()
            model.fromMap(dict["Task"] as! [String: Any])
            self.task = model
        }
    }
}

public class DeleteAccessAssignmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAccessAssignmentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteAccessAssignmentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAccessConfigurationRequest : Tea.TeaModel {
    public var accessConfigurationId: String?

    public var directoryId: String?

    public var forceRemovePermissionPolicies: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessConfigurationId != nil {
            map["AccessConfigurationId"] = self.accessConfigurationId!
        }
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.forceRemovePermissionPolicies != nil {
            map["ForceRemovePermissionPolicies"] = self.forceRemovePermissionPolicies!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessConfigurationId") {
            self.accessConfigurationId = dict["AccessConfigurationId"] as! String
        }
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("ForceRemovePermissionPolicies") {
            self.forceRemovePermissionPolicies = dict["ForceRemovePermissionPolicies"] as! Bool
        }
    }
}

public class DeleteAccessConfigurationResponseBody : Tea.TeaModel {
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

public class DeleteAccessConfigurationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAccessConfigurationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteAccessConfigurationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDirectoryRequest : Tea.TeaModel {
    public var directoryId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
    }
}

public class DeleteDirectoryResponseBody : Tea.TeaModel {
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

public class DeleteDirectoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDirectoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteDirectoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteGroupRequest : Tea.TeaModel {
    public var directoryId: String?

    public var groupId: String?

    public override init() {
        super.init()
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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
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

public class DeleteMFADeviceForUserRequest : Tea.TeaModel {
    public var directoryId: String?

    public var MFADeviceId: String?

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
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.MFADeviceId != nil {
            map["MFADeviceId"] = self.MFADeviceId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("MFADeviceId") {
            self.MFADeviceId = dict["MFADeviceId"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class DeleteMFADeviceForUserResponseBody : Tea.TeaModel {
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

public class DeleteMFADeviceForUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteMFADeviceForUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteMFADeviceForUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteSCIMServerCredentialRequest : Tea.TeaModel {
    public var credentialId: String?

    public var directoryId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialId != nil {
            map["CredentialId"] = self.credentialId!
        }
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CredentialId") {
            self.credentialId = dict["CredentialId"] as! String
        }
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
    }
}

public class DeleteSCIMServerCredentialResponseBody : Tea.TeaModel {
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

public class DeleteSCIMServerCredentialResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSCIMServerCredentialResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteSCIMServerCredentialResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteUserRequest : Tea.TeaModel {
    public var directoryId: String?

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
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
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

public class DeleteUserProvisioningRequest : Tea.TeaModel {
    public var deletionStrategy: String?

    public var directoryId: String?

    public var userProvisioningId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deletionStrategy != nil {
            map["DeletionStrategy"] = self.deletionStrategy!
        }
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.userProvisioningId != nil {
            map["UserProvisioningId"] = self.userProvisioningId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeletionStrategy") {
            self.deletionStrategy = dict["DeletionStrategy"] as! String
        }
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("UserProvisioningId") {
            self.userProvisioningId = dict["UserProvisioningId"] as! String
        }
    }
}

public class DeleteUserProvisioningResponseBody : Tea.TeaModel {
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

public class DeleteUserProvisioningResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUserProvisioningResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteUserProvisioningResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteUserProvisioningEventRequest : Tea.TeaModel {
    public var directoryId: String?

    public var eventId: String?

    public var userProvisioningId: String?

    public override init() {
        super.init()
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
        if self.eventId != nil {
            map["EventId"] = self.eventId!
        }
        if self.userProvisioningId != nil {
            map["UserProvisioningId"] = self.userProvisioningId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("EventId") {
            self.eventId = dict["EventId"] as! String
        }
        if dict.keys.contains("UserProvisioningId") {
            self.userProvisioningId = dict["UserProvisioningId"] as! String
        }
    }
}

public class DeleteUserProvisioningEventResponseBody : Tea.TeaModel {
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

public class DeleteUserProvisioningEventResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUserProvisioningEventResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteUserProvisioningEventResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeprovisionAccessConfigurationRequest : Tea.TeaModel {
    public var accessConfigurationId: String?

    public var directoryId: String?

    public var targetId: String?

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
        if self.accessConfigurationId != nil {
            map["AccessConfigurationId"] = self.accessConfigurationId!
        }
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.targetId != nil {
            map["TargetId"] = self.targetId!
        }
        if self.targetType != nil {
            map["TargetType"] = self.targetType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessConfigurationId") {
            self.accessConfigurationId = dict["AccessConfigurationId"] as! String
        }
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("TargetId") {
            self.targetId = dict["TargetId"] as! String
        }
        if dict.keys.contains("TargetType") {
            self.targetType = dict["TargetType"] as! String
        }
    }
}

public class DeprovisionAccessConfigurationResponseBody : Tea.TeaModel {
    public class Tasks : Tea.TeaModel {
        public var accessConfigurationId: String?

        public var accessConfigurationName: String?

        public var status: String?

        public var targetId: String?

        public var targetName: String?

        public var targetPath: String?

        public var targetPathName: String?

        public var targetType: String?

        public var taskId: String?

        public var taskType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessConfigurationId != nil {
                map["AccessConfigurationId"] = self.accessConfigurationId!
            }
            if self.accessConfigurationName != nil {
                map["AccessConfigurationName"] = self.accessConfigurationName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.targetId != nil {
                map["TargetId"] = self.targetId!
            }
            if self.targetName != nil {
                map["TargetName"] = self.targetName!
            }
            if self.targetPath != nil {
                map["TargetPath"] = self.targetPath!
            }
            if self.targetPathName != nil {
                map["TargetPathName"] = self.targetPathName!
            }
            if self.targetType != nil {
                map["TargetType"] = self.targetType!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskType != nil {
                map["TaskType"] = self.taskType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessConfigurationId") {
                self.accessConfigurationId = dict["AccessConfigurationId"] as! String
            }
            if dict.keys.contains("AccessConfigurationName") {
                self.accessConfigurationName = dict["AccessConfigurationName"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TargetId") {
                self.targetId = dict["TargetId"] as! String
            }
            if dict.keys.contains("TargetName") {
                self.targetName = dict["TargetName"] as! String
            }
            if dict.keys.contains("TargetPath") {
                self.targetPath = dict["TargetPath"] as! String
            }
            if dict.keys.contains("TargetPathName") {
                self.targetPathName = dict["TargetPathName"] as! String
            }
            if dict.keys.contains("TargetType") {
                self.targetType = dict["TargetType"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TaskType") {
                self.taskType = dict["TaskType"] as! String
            }
        }
    }
    public var requestId: String?

    public var tasks: [DeprovisionAccessConfigurationResponseBody.Tasks]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tasks != nil {
            var tmp : [Any] = []
            for k in self.tasks! {
                tmp.append(k.toMap())
            }
            map["Tasks"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Tasks") {
            var tmp : [DeprovisionAccessConfigurationResponseBody.Tasks] = []
            for v in dict["Tasks"] as! [Any] {
                var model = DeprovisionAccessConfigurationResponseBody.Tasks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tasks = tmp
        }
    }
}

public class DeprovisionAccessConfigurationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeprovisionAccessConfigurationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeprovisionAccessConfigurationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisableDelegateAccountRequest : Tea.TeaModel {
    public var accountId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountId") {
            self.accountId = dict["AccountId"] as! String
        }
    }
}

public class DisableDelegateAccountResponseBody : Tea.TeaModel {
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

public class DisableDelegateAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableDelegateAccountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DisableDelegateAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisableServiceResponseBody : Tea.TeaModel {
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

public class DisableServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableServiceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DisableServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EnableDelegateAccountRequest : Tea.TeaModel {
    public var accountId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountId") {
            self.accountId = dict["AccountId"] as! String
        }
    }
}

public class EnableDelegateAccountResponseBody : Tea.TeaModel {
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

public class EnableDelegateAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableDelegateAccountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = EnableDelegateAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EnableServiceResponseBody : Tea.TeaModel {
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

public class EnableServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableServiceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = EnableServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAccessConfigurationRequest : Tea.TeaModel {
    public var accessConfigurationId: String?

    public var directoryId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessConfigurationId != nil {
            map["AccessConfigurationId"] = self.accessConfigurationId!
        }
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessConfigurationId") {
            self.accessConfigurationId = dict["AccessConfigurationId"] as! String
        }
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
    }
}

public class GetAccessConfigurationResponseBody : Tea.TeaModel {
    public class AccessConfiguration : Tea.TeaModel {
        public var accessConfigurationId: String?

        public var accessConfigurationName: String?

        public var createTime: String?

        public var description_: String?

        public var relayState: String?

        public var sessionDuration: Int32?

        public var statusNotifications: [String]?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessConfigurationId != nil {
                map["AccessConfigurationId"] = self.accessConfigurationId!
            }
            if self.accessConfigurationName != nil {
                map["AccessConfigurationName"] = self.accessConfigurationName!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.relayState != nil {
                map["RelayState"] = self.relayState!
            }
            if self.sessionDuration != nil {
                map["SessionDuration"] = self.sessionDuration!
            }
            if self.statusNotifications != nil {
                map["StatusNotifications"] = self.statusNotifications!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessConfigurationId") {
                self.accessConfigurationId = dict["AccessConfigurationId"] as! String
            }
            if dict.keys.contains("AccessConfigurationName") {
                self.accessConfigurationName = dict["AccessConfigurationName"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("RelayState") {
                self.relayState = dict["RelayState"] as! String
            }
            if dict.keys.contains("SessionDuration") {
                self.sessionDuration = dict["SessionDuration"] as! Int32
            }
            if dict.keys.contains("StatusNotifications") {
                self.statusNotifications = dict["StatusNotifications"] as! [String]
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var accessConfiguration: GetAccessConfigurationResponseBody.AccessConfiguration?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accessConfiguration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessConfiguration != nil {
            map["AccessConfiguration"] = self.accessConfiguration?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessConfiguration") {
            var model = GetAccessConfigurationResponseBody.AccessConfiguration()
            model.fromMap(dict["AccessConfiguration"] as! [String: Any])
            self.accessConfiguration = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAccessConfigurationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAccessConfigurationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetAccessConfigurationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDirectoryRequest : Tea.TeaModel {
    public var directoryId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
    }
}

public class GetDirectoryResponseBody : Tea.TeaModel {
    public class Directory : Tea.TeaModel {
        public var createTime: String?

        public var directoryId: String?

        public var directoryName: String?

        public var region: String?

        public var updateTime: String?

        public override init() {
            super.init()
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
            if self.directoryId != nil {
                map["DirectoryId"] = self.directoryId!
            }
            if self.directoryName != nil {
                map["DirectoryName"] = self.directoryName!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DirectoryId") {
                self.directoryId = dict["DirectoryId"] as! String
            }
            if dict.keys.contains("DirectoryName") {
                self.directoryName = dict["DirectoryName"] as! String
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var directory: GetDirectoryResponseBody.Directory?

    public var requestId: String?

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
        if self.directory != nil {
            map["Directory"] = self.directory?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Directory") {
            var model = GetDirectoryResponseBody.Directory()
            model.fromMap(dict["Directory"] as! [String: Any])
            self.directory = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetDirectoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDirectoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetDirectoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDirectorySAMLServiceProviderInfoRequest : Tea.TeaModel {
    public var directoryId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
    }
}

public class GetDirectorySAMLServiceProviderInfoResponseBody : Tea.TeaModel {
    public class SAMLServiceProvider : Tea.TeaModel {
        public var acsUrl: String?

        public var authnSignAlgo: String?

        public var certificateType: String?

        public var directoryId: String?

        public var encodedMetadataDocument: String?

        public var entityId: String?

        public var supportEncryptedAssertion: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.acsUrl != nil {
                map["AcsUrl"] = self.acsUrl!
            }
            if self.authnSignAlgo != nil {
                map["AuthnSignAlgo"] = self.authnSignAlgo!
            }
            if self.certificateType != nil {
                map["CertificateType"] = self.certificateType!
            }
            if self.directoryId != nil {
                map["DirectoryId"] = self.directoryId!
            }
            if self.encodedMetadataDocument != nil {
                map["EncodedMetadataDocument"] = self.encodedMetadataDocument!
            }
            if self.entityId != nil {
                map["EntityId"] = self.entityId!
            }
            if self.supportEncryptedAssertion != nil {
                map["SupportEncryptedAssertion"] = self.supportEncryptedAssertion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AcsUrl") {
                self.acsUrl = dict["AcsUrl"] as! String
            }
            if dict.keys.contains("AuthnSignAlgo") {
                self.authnSignAlgo = dict["AuthnSignAlgo"] as! String
            }
            if dict.keys.contains("CertificateType") {
                self.certificateType = dict["CertificateType"] as! String
            }
            if dict.keys.contains("DirectoryId") {
                self.directoryId = dict["DirectoryId"] as! String
            }
            if dict.keys.contains("EncodedMetadataDocument") {
                self.encodedMetadataDocument = dict["EncodedMetadataDocument"] as! String
            }
            if dict.keys.contains("EntityId") {
                self.entityId = dict["EntityId"] as! String
            }
            if dict.keys.contains("SupportEncryptedAssertion") {
                self.supportEncryptedAssertion = dict["SupportEncryptedAssertion"] as! Bool
            }
        }
    }
    public var requestId: String?

    public var SAMLServiceProvider: GetDirectorySAMLServiceProviderInfoResponseBody.SAMLServiceProvider?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.SAMLServiceProvider?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.SAMLServiceProvider != nil {
            map["SAMLServiceProvider"] = self.SAMLServiceProvider?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SAMLServiceProvider") {
            var model = GetDirectorySAMLServiceProviderInfoResponseBody.SAMLServiceProvider()
            model.fromMap(dict["SAMLServiceProvider"] as! [String: Any])
            self.SAMLServiceProvider = model
        }
    }
}

public class GetDirectorySAMLServiceProviderInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDirectorySAMLServiceProviderInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetDirectorySAMLServiceProviderInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDirectoryStatisticsRequest : Tea.TeaModel {
    public var directoryId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
    }
}

public class GetDirectoryStatisticsResponseBody : Tea.TeaModel {
    public class DirectoryStatistics : Tea.TeaModel {
        public var accessAssignmentCount: Int32?

        public var accessConfigurationCount: Int32?

        public var accessConfigurationQuota: Int32?

        public var directoryId: String?

        public var directoryName: String?

        public var groupCount: Int32?

        public var groupQuota: Int32?

        public var inProgressTaskCount: Int32?

        public var inlinePolicyPerAccessConfigurationQuota: Int32?

        public var region: String?

        public var SCIMServerCredentialCount: Int32?

        public var SCIMSyncEnabled: Bool?

        public var SSOEnabled: Bool?

        public var systemPolicyPerAccessConfigurationQuota: Int32?

        public var userCount: Int32?

        public var userQuota: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessAssignmentCount != nil {
                map["AccessAssignmentCount"] = self.accessAssignmentCount!
            }
            if self.accessConfigurationCount != nil {
                map["AccessConfigurationCount"] = self.accessConfigurationCount!
            }
            if self.accessConfigurationQuota != nil {
                map["AccessConfigurationQuota"] = self.accessConfigurationQuota!
            }
            if self.directoryId != nil {
                map["DirectoryId"] = self.directoryId!
            }
            if self.directoryName != nil {
                map["DirectoryName"] = self.directoryName!
            }
            if self.groupCount != nil {
                map["GroupCount"] = self.groupCount!
            }
            if self.groupQuota != nil {
                map["GroupQuota"] = self.groupQuota!
            }
            if self.inProgressTaskCount != nil {
                map["InProgressTaskCount"] = self.inProgressTaskCount!
            }
            if self.inlinePolicyPerAccessConfigurationQuota != nil {
                map["InlinePolicyPerAccessConfigurationQuota"] = self.inlinePolicyPerAccessConfigurationQuota!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.SCIMServerCredentialCount != nil {
                map["SCIMServerCredentialCount"] = self.SCIMServerCredentialCount!
            }
            if self.SCIMSyncEnabled != nil {
                map["SCIMSyncEnabled"] = self.SCIMSyncEnabled!
            }
            if self.SSOEnabled != nil {
                map["SSOEnabled"] = self.SSOEnabled!
            }
            if self.systemPolicyPerAccessConfigurationQuota != nil {
                map["SystemPolicyPerAccessConfigurationQuota"] = self.systemPolicyPerAccessConfigurationQuota!
            }
            if self.userCount != nil {
                map["UserCount"] = self.userCount!
            }
            if self.userQuota != nil {
                map["UserQuota"] = self.userQuota!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessAssignmentCount") {
                self.accessAssignmentCount = dict["AccessAssignmentCount"] as! Int32
            }
            if dict.keys.contains("AccessConfigurationCount") {
                self.accessConfigurationCount = dict["AccessConfigurationCount"] as! Int32
            }
            if dict.keys.contains("AccessConfigurationQuota") {
                self.accessConfigurationQuota = dict["AccessConfigurationQuota"] as! Int32
            }
            if dict.keys.contains("DirectoryId") {
                self.directoryId = dict["DirectoryId"] as! String
            }
            if dict.keys.contains("DirectoryName") {
                self.directoryName = dict["DirectoryName"] as! String
            }
            if dict.keys.contains("GroupCount") {
                self.groupCount = dict["GroupCount"] as! Int32
            }
            if dict.keys.contains("GroupQuota") {
                self.groupQuota = dict["GroupQuota"] as! Int32
            }
            if dict.keys.contains("InProgressTaskCount") {
                self.inProgressTaskCount = dict["InProgressTaskCount"] as! Int32
            }
            if dict.keys.contains("InlinePolicyPerAccessConfigurationQuota") {
                self.inlinePolicyPerAccessConfigurationQuota = dict["InlinePolicyPerAccessConfigurationQuota"] as! Int32
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("SCIMServerCredentialCount") {
                self.SCIMServerCredentialCount = dict["SCIMServerCredentialCount"] as! Int32
            }
            if dict.keys.contains("SCIMSyncEnabled") {
                self.SCIMSyncEnabled = dict["SCIMSyncEnabled"] as! Bool
            }
            if dict.keys.contains("SSOEnabled") {
                self.SSOEnabled = dict["SSOEnabled"] as! Bool
            }
            if dict.keys.contains("SystemPolicyPerAccessConfigurationQuota") {
                self.systemPolicyPerAccessConfigurationQuota = dict["SystemPolicyPerAccessConfigurationQuota"] as! Int32
            }
            if dict.keys.contains("UserCount") {
                self.userCount = dict["UserCount"] as! Int32
            }
            if dict.keys.contains("UserQuota") {
                self.userQuota = dict["UserQuota"] as! Int32
            }
        }
    }
    public var directoryStatistics: GetDirectoryStatisticsResponseBody.DirectoryStatistics?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.directoryStatistics?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.directoryStatistics != nil {
            map["DirectoryStatistics"] = self.directoryStatistics?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryStatistics") {
            var model = GetDirectoryStatisticsResponseBody.DirectoryStatistics()
            model.fromMap(dict["DirectoryStatistics"] as! [String: Any])
            self.directoryStatistics = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetDirectoryStatisticsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDirectoryStatisticsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetDirectoryStatisticsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetExternalSAMLIdentityProviderRequest : Tea.TeaModel {
    public var directoryId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
    }
}

public class GetExternalSAMLIdentityProviderResponseBody : Tea.TeaModel {
    public class SAMLIdentityProviderConfiguration : Tea.TeaModel {
        public var certificateIds: [String]?

        public var createTime: String?

        public var directoryId: String?

        public var encodedMetadataDocument: String?

        public var entityId: String?

        public var loginUrl: String?

        public var SSOStatus: String?

        public var updateTime: String?

        public var wantRequestSigned: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.certificateIds != nil {
                map["CertificateIds"] = self.certificateIds!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.directoryId != nil {
                map["DirectoryId"] = self.directoryId!
            }
            if self.encodedMetadataDocument != nil {
                map["EncodedMetadataDocument"] = self.encodedMetadataDocument!
            }
            if self.entityId != nil {
                map["EntityId"] = self.entityId!
            }
            if self.loginUrl != nil {
                map["LoginUrl"] = self.loginUrl!
            }
            if self.SSOStatus != nil {
                map["SSOStatus"] = self.SSOStatus!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.wantRequestSigned != nil {
                map["WantRequestSigned"] = self.wantRequestSigned!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CertificateIds") {
                self.certificateIds = dict["CertificateIds"] as! [String]
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DirectoryId") {
                self.directoryId = dict["DirectoryId"] as! String
            }
            if dict.keys.contains("EncodedMetadataDocument") {
                self.encodedMetadataDocument = dict["EncodedMetadataDocument"] as! String
            }
            if dict.keys.contains("EntityId") {
                self.entityId = dict["EntityId"] as! String
            }
            if dict.keys.contains("LoginUrl") {
                self.loginUrl = dict["LoginUrl"] as! String
            }
            if dict.keys.contains("SSOStatus") {
                self.SSOStatus = dict["SSOStatus"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("WantRequestSigned") {
                self.wantRequestSigned = dict["WantRequestSigned"] as! Bool
            }
        }
    }
    public var requestId: String?

    public var SAMLIdentityProviderConfiguration: GetExternalSAMLIdentityProviderResponseBody.SAMLIdentityProviderConfiguration?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.SAMLIdentityProviderConfiguration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.SAMLIdentityProviderConfiguration != nil {
            map["SAMLIdentityProviderConfiguration"] = self.SAMLIdentityProviderConfiguration?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SAMLIdentityProviderConfiguration") {
            var model = GetExternalSAMLIdentityProviderResponseBody.SAMLIdentityProviderConfiguration()
            model.fromMap(dict["SAMLIdentityProviderConfiguration"] as! [String: Any])
            self.SAMLIdentityProviderConfiguration = model
        }
    }
}

public class GetExternalSAMLIdentityProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetExternalSAMLIdentityProviderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetExternalSAMLIdentityProviderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetGroupRequest : Tea.TeaModel {
    public var directoryId: String?

    public var groupId: String?

    public override init() {
        super.init()
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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
    }
}

public class GetGroupResponseBody : Tea.TeaModel {
    public class Group : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var groupId: String?

        public var groupName: String?

        public var provisionType: String?

        public var updateTime: String?

        public override init() {
            super.init()
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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.provisionType != nil {
                map["ProvisionType"] = self.provisionType!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
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
            if dict.keys.contains("GroupId") {
                self.groupId = dict["GroupId"] as! String
            }
            if dict.keys.contains("GroupName") {
                self.groupName = dict["GroupName"] as! String
            }
            if dict.keys.contains("ProvisionType") {
                self.provisionType = dict["ProvisionType"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
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

public class GetLoginPreferenceRequest : Tea.TeaModel {
    public var directoryId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
    }
}

public class GetLoginPreferenceResponseBody : Tea.TeaModel {
    public class LoginPreference : Tea.TeaModel {
        public var loginNetworkMasks: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.loginNetworkMasks != nil {
                map["LoginNetworkMasks"] = self.loginNetworkMasks!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LoginNetworkMasks") {
                self.loginNetworkMasks = dict["LoginNetworkMasks"] as! String
            }
        }
    }
    public var loginPreference: GetLoginPreferenceResponseBody.LoginPreference?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.loginPreference?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.loginPreference != nil {
            map["LoginPreference"] = self.loginPreference?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LoginPreference") {
            var model = GetLoginPreferenceResponseBody.LoginPreference()
            model.fromMap(dict["LoginPreference"] as! [String: Any])
            self.loginPreference = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetLoginPreferenceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLoginPreferenceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetLoginPreferenceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetMFAAuthenticationSettingInfoRequest : Tea.TeaModel {
    public var directoryId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
    }
}

public class GetMFAAuthenticationSettingInfoResponseBody : Tea.TeaModel {
    public class MFAAuthenticationSettingInfo : Tea.TeaModel {
        public var mfaAuthenticationAdvanceSettings: String?

        public var operationForRiskLogin: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.mfaAuthenticationAdvanceSettings != nil {
                map["MfaAuthenticationAdvanceSettings"] = self.mfaAuthenticationAdvanceSettings!
            }
            if self.operationForRiskLogin != nil {
                map["OperationForRiskLogin"] = self.operationForRiskLogin!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MfaAuthenticationAdvanceSettings") {
                self.mfaAuthenticationAdvanceSettings = dict["MfaAuthenticationAdvanceSettings"] as! String
            }
            if dict.keys.contains("OperationForRiskLogin") {
                self.operationForRiskLogin = dict["OperationForRiskLogin"] as! String
            }
        }
    }
    public var MFAAuthenticationSettingInfo: GetMFAAuthenticationSettingInfoResponseBody.MFAAuthenticationSettingInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.MFAAuthenticationSettingInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.MFAAuthenticationSettingInfo != nil {
            map["MFAAuthenticationSettingInfo"] = self.MFAAuthenticationSettingInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MFAAuthenticationSettingInfo") {
            var model = GetMFAAuthenticationSettingInfoResponseBody.MFAAuthenticationSettingInfo()
            model.fromMap(dict["MFAAuthenticationSettingInfo"] as! [String: Any])
            self.MFAAuthenticationSettingInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetMFAAuthenticationSettingInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMFAAuthenticationSettingInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetMFAAuthenticationSettingInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetMFAAuthenticationSettingsRequest : Tea.TeaModel {
    public var directoryId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
    }
}

public class GetMFAAuthenticationSettingsResponseBody : Tea.TeaModel {
    public var MFAAuthenticationAdvanceSettings: String?

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
        if self.MFAAuthenticationAdvanceSettings != nil {
            map["MFAAuthenticationAdvanceSettings"] = self.MFAAuthenticationAdvanceSettings!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MFAAuthenticationAdvanceSettings") {
            self.MFAAuthenticationAdvanceSettings = dict["MFAAuthenticationAdvanceSettings"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetMFAAuthenticationSettingsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMFAAuthenticationSettingsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetMFAAuthenticationSettingsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetMFAAuthenticationStatusRequest : Tea.TeaModel {
    public var directoryId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
    }
}

public class GetMFAAuthenticationStatusResponseBody : Tea.TeaModel {
    public var MFAAuthenticationStatus: String?

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
        if self.MFAAuthenticationStatus != nil {
            map["MFAAuthenticationStatus"] = self.MFAAuthenticationStatus!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MFAAuthenticationStatus") {
            self.MFAAuthenticationStatus = dict["MFAAuthenticationStatus"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetMFAAuthenticationStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMFAAuthenticationStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetMFAAuthenticationStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPasswordPolicyRequest : Tea.TeaModel {
    public var directoryId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
    }
}

public class GetPasswordPolicyResponseBody : Tea.TeaModel {
    public class PasswordPolicy : Tea.TeaModel {
        public var hardExpire: Bool?

        public var maxLoginAttempts: Int32?

        public var maxPasswordAge: Int32?

        public var maxPasswordLength: Int32?

        public var minPasswordDifferentChars: Int32?

        public var minPasswordLength: Int32?

        public var passwordNotContainUsername: Bool?

        public var passwordReusePrevention: Int32?

        public var requireLowerCaseChars: Bool?

        public var requireNumbers: Bool?

        public var requireSymbols: Bool?

        public var requireUpperCaseChars: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hardExpire != nil {
                map["HardExpire"] = self.hardExpire!
            }
            if self.maxLoginAttempts != nil {
                map["MaxLoginAttempts"] = self.maxLoginAttempts!
            }
            if self.maxPasswordAge != nil {
                map["MaxPasswordAge"] = self.maxPasswordAge!
            }
            if self.maxPasswordLength != nil {
                map["MaxPasswordLength"] = self.maxPasswordLength!
            }
            if self.minPasswordDifferentChars != nil {
                map["MinPasswordDifferentChars"] = self.minPasswordDifferentChars!
            }
            if self.minPasswordLength != nil {
                map["MinPasswordLength"] = self.minPasswordLength!
            }
            if self.passwordNotContainUsername != nil {
                map["PasswordNotContainUsername"] = self.passwordNotContainUsername!
            }
            if self.passwordReusePrevention != nil {
                map["PasswordReusePrevention"] = self.passwordReusePrevention!
            }
            if self.requireLowerCaseChars != nil {
                map["RequireLowerCaseChars"] = self.requireLowerCaseChars!
            }
            if self.requireNumbers != nil {
                map["RequireNumbers"] = self.requireNumbers!
            }
            if self.requireSymbols != nil {
                map["RequireSymbols"] = self.requireSymbols!
            }
            if self.requireUpperCaseChars != nil {
                map["RequireUpperCaseChars"] = self.requireUpperCaseChars!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HardExpire") {
                self.hardExpire = dict["HardExpire"] as! Bool
            }
            if dict.keys.contains("MaxLoginAttempts") {
                self.maxLoginAttempts = dict["MaxLoginAttempts"] as! Int32
            }
            if dict.keys.contains("MaxPasswordAge") {
                self.maxPasswordAge = dict["MaxPasswordAge"] as! Int32
            }
            if dict.keys.contains("MaxPasswordLength") {
                self.maxPasswordLength = dict["MaxPasswordLength"] as! Int32
            }
            if dict.keys.contains("MinPasswordDifferentChars") {
                self.minPasswordDifferentChars = dict["MinPasswordDifferentChars"] as! Int32
            }
            if dict.keys.contains("MinPasswordLength") {
                self.minPasswordLength = dict["MinPasswordLength"] as! Int32
            }
            if dict.keys.contains("PasswordNotContainUsername") {
                self.passwordNotContainUsername = dict["PasswordNotContainUsername"] as! Bool
            }
            if dict.keys.contains("PasswordReusePrevention") {
                self.passwordReusePrevention = dict["PasswordReusePrevention"] as! Int32
            }
            if dict.keys.contains("RequireLowerCaseChars") {
                self.requireLowerCaseChars = dict["RequireLowerCaseChars"] as! Bool
            }
            if dict.keys.contains("RequireNumbers") {
                self.requireNumbers = dict["RequireNumbers"] as! Bool
            }
            if dict.keys.contains("RequireSymbols") {
                self.requireSymbols = dict["RequireSymbols"] as! Bool
            }
            if dict.keys.contains("RequireUpperCaseChars") {
                self.requireUpperCaseChars = dict["RequireUpperCaseChars"] as! Bool
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

public class GetSCIMSynchronizationStatusRequest : Tea.TeaModel {
    public var directoryId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
    }
}

public class GetSCIMSynchronizationStatusResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var SCIMSynchronizationStatus: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.SCIMSynchronizationStatus != nil {
            map["SCIMSynchronizationStatus"] = self.SCIMSynchronizationStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SCIMSynchronizationStatus") {
            self.SCIMSynchronizationStatus = dict["SCIMSynchronizationStatus"] as! String
        }
    }
}

public class GetSCIMSynchronizationStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSCIMSynchronizationStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetSCIMSynchronizationStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetServiceStatusResponseBody : Tea.TeaModel {
    public class ServiceStatus : Tea.TeaModel {
        public var accountId: String?

        public var prerequisiteCheckResult: String?

        public var regionsInUse: [String]?

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
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.prerequisiteCheckResult != nil {
                map["PrerequisiteCheckResult"] = self.prerequisiteCheckResult!
            }
            if self.regionsInUse != nil {
                map["RegionsInUse"] = self.regionsInUse!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountId") {
                self.accountId = dict["AccountId"] as! String
            }
            if dict.keys.contains("PrerequisiteCheckResult") {
                self.prerequisiteCheckResult = dict["PrerequisiteCheckResult"] as! String
            }
            if dict.keys.contains("RegionsInUse") {
                self.regionsInUse = dict["RegionsInUse"] as! [String]
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var requestId: String?

    public var serviceStatus: GetServiceStatusResponseBody.ServiceStatus?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.serviceStatus?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceStatus != nil {
            map["ServiceStatus"] = self.serviceStatus?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceStatus") {
            var model = GetServiceStatusResponseBody.ServiceStatus()
            model.fromMap(dict["ServiceStatus"] as! [String: Any])
            self.serviceStatus = model
        }
    }
}

public class GetServiceStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetServiceStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetServiceStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTaskRequest : Tea.TeaModel {
    public var directoryId: String?

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
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class GetTaskResponseBody : Tea.TeaModel {
    public class Task : Tea.TeaModel {
        public var accessConfigurationId: String?

        public var accessConfigurationName: String?

        public var endTime: String?

        public var failureReason: String?

        public var principalId: String?

        public var principalName: String?

        public var principalType: String?

        public var startTime: String?

        public var status: String?

        public var targetId: String?

        public var targetName: String?

        public var targetPath: String?

        public var targetPathName: String?

        public var targetType: String?

        public var taskId: String?

        public var taskType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessConfigurationId != nil {
                map["AccessConfigurationId"] = self.accessConfigurationId!
            }
            if self.accessConfigurationName != nil {
                map["AccessConfigurationName"] = self.accessConfigurationName!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.failureReason != nil {
                map["FailureReason"] = self.failureReason!
            }
            if self.principalId != nil {
                map["PrincipalId"] = self.principalId!
            }
            if self.principalName != nil {
                map["PrincipalName"] = self.principalName!
            }
            if self.principalType != nil {
                map["PrincipalType"] = self.principalType!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.targetId != nil {
                map["TargetId"] = self.targetId!
            }
            if self.targetName != nil {
                map["TargetName"] = self.targetName!
            }
            if self.targetPath != nil {
                map["TargetPath"] = self.targetPath!
            }
            if self.targetPathName != nil {
                map["TargetPathName"] = self.targetPathName!
            }
            if self.targetType != nil {
                map["TargetType"] = self.targetType!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskType != nil {
                map["TaskType"] = self.taskType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessConfigurationId") {
                self.accessConfigurationId = dict["AccessConfigurationId"] as! String
            }
            if dict.keys.contains("AccessConfigurationName") {
                self.accessConfigurationName = dict["AccessConfigurationName"] as! String
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("FailureReason") {
                self.failureReason = dict["FailureReason"] as! String
            }
            if dict.keys.contains("PrincipalId") {
                self.principalId = dict["PrincipalId"] as! String
            }
            if dict.keys.contains("PrincipalName") {
                self.principalName = dict["PrincipalName"] as! String
            }
            if dict.keys.contains("PrincipalType") {
                self.principalType = dict["PrincipalType"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TargetId") {
                self.targetId = dict["TargetId"] as! String
            }
            if dict.keys.contains("TargetName") {
                self.targetName = dict["TargetName"] as! String
            }
            if dict.keys.contains("TargetPath") {
                self.targetPath = dict["TargetPath"] as! String
            }
            if dict.keys.contains("TargetPathName") {
                self.targetPathName = dict["TargetPathName"] as! String
            }
            if dict.keys.contains("TargetType") {
                self.targetType = dict["TargetType"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TaskType") {
                self.taskType = dict["TaskType"] as! String
            }
        }
    }
    public var requestId: String?

    public var task: GetTaskResponseBody.Task?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.task != nil {
            map["Task"] = self.task?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Task") {
            var model = GetTaskResponseBody.Task()
            model.fromMap(dict["Task"] as! [String: Any])
            self.task = model
        }
    }
}

public class GetTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTaskStatusRequest : Tea.TeaModel {
    public var directoryId: String?

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
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class GetTaskStatusResponseBody : Tea.TeaModel {
    public class TaskStatus : Tea.TeaModel {
        public var endTime: String?

        public var failureReason: String?

        public var startTime: String?

        public var status: String?

        public var taskId: String?

        public var taskType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.failureReason != nil {
                map["FailureReason"] = self.failureReason!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskType != nil {
                map["TaskType"] = self.taskType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("FailureReason") {
                self.failureReason = dict["FailureReason"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TaskType") {
                self.taskType = dict["TaskType"] as! String
            }
        }
    }
    public var requestId: String?

    public var taskStatus: GetTaskStatusResponseBody.TaskStatus?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.taskStatus?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskStatus != nil {
            map["TaskStatus"] = self.taskStatus?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskStatus") {
            var model = GetTaskStatusResponseBody.TaskStatus()
            model.fromMap(dict["TaskStatus"] as! [String: Any])
            self.taskStatus = model
        }
    }
}

public class GetTaskStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTaskStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetTaskStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserRequest : Tea.TeaModel {
    public var directoryId: String?

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
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class GetUserResponseBody : Tea.TeaModel {
    public class User : Tea.TeaModel {
        public class ExternalId : Tea.TeaModel {
            public var id: String?

            public var issuer: String?

            public override init() {
                super.init()
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
                if self.issuer != nil {
                    map["Issuer"] = self.issuer!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Issuer") {
                    self.issuer = dict["Issuer"] as! String
                }
            }
        }
        public var createTime: String?

        public var description_: String?

        public var displayName: String?

        public var email: String?

        public var externalId: GetUserResponseBody.User.ExternalId?

        public var firstName: String?

        public var lastName: String?

        public var provisionType: String?

        public var status: String?

        public var updateTime: String?

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
            try self.externalId?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.externalId != nil {
                map["ExternalId"] = self.externalId?.toMap()
            }
            if self.firstName != nil {
                map["FirstName"] = self.firstName!
            }
            if self.lastName != nil {
                map["LastName"] = self.lastName!
            }
            if self.provisionType != nil {
                map["ProvisionType"] = self.provisionType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
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
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DisplayName") {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("Email") {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("ExternalId") {
                var model = GetUserResponseBody.User.ExternalId()
                model.fromMap(dict["ExternalId"] as! [String: Any])
                self.externalId = model
            }
            if dict.keys.contains("FirstName") {
                self.firstName = dict["FirstName"] as! String
            }
            if dict.keys.contains("LastName") {
                self.lastName = dict["LastName"] as! String
            }
            if dict.keys.contains("ProvisionType") {
                self.provisionType = dict["ProvisionType"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
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

public class GetUserIdRequest : Tea.TeaModel {
    public class ExternalId : Tea.TeaModel {
        public var id: String?

        public var issuer: String?

        public override init() {
            super.init()
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
            if self.issuer != nil {
                map["Issuer"] = self.issuer!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("Issuer") {
                self.issuer = dict["Issuer"] as! String
            }
        }
    }
    public var directoryId: String?

    public var externalId: GetUserIdRequest.ExternalId?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.externalId?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.externalId != nil {
            map["ExternalId"] = self.externalId?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("ExternalId") {
            var model = GetUserIdRequest.ExternalId()
            model.fromMap(dict["ExternalId"] as! [String: Any])
            self.externalId = model
        }
    }
}

public class GetUserIdShrinkRequest : Tea.TeaModel {
    public var directoryId: String?

    public var externalIdShrink: String?

    public override init() {
        super.init()
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
        if self.externalIdShrink != nil {
            map["ExternalId"] = self.externalIdShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("ExternalId") {
            self.externalIdShrink = dict["ExternalId"] as! String
        }
    }
}

public class GetUserIdResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class GetUserIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserIdResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetUserIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserMFAAuthenticationSettingsRequest : Tea.TeaModel {
    public var directoryId: String?

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
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class GetUserMFAAuthenticationSettingsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var userMFAAuthenticationSettings: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.userMFAAuthenticationSettings != nil {
            map["UserMFAAuthenticationSettings"] = self.userMFAAuthenticationSettings!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UserMFAAuthenticationSettings") {
            self.userMFAAuthenticationSettings = dict["UserMFAAuthenticationSettings"] as! String
        }
    }
}

public class GetUserMFAAuthenticationSettingsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserMFAAuthenticationSettingsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetUserMFAAuthenticationSettingsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserProvisioningRequest : Tea.TeaModel {
    public var directoryId: String?

    public var userProvisioningId: String?

    public override init() {
        super.init()
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
        if self.userProvisioningId != nil {
            map["UserProvisioningId"] = self.userProvisioningId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("UserProvisioningId") {
            self.userProvisioningId = dict["UserProvisioningId"] as! String
        }
    }
}

public class GetUserProvisioningResponseBody : Tea.TeaModel {
    public class UserProvisioning : Tea.TeaModel {
        public var createTime: String?

        public var deletionStrategy: String?

        public var description_: String?

        public var directoryId: String?

        public var duplicationStrategy: String?

        public var ownerPk: String?

        public var principalId: String?

        public var principalName: String?

        public var principalType: String?

        public var status: String?

        public var targetId: String?

        public var targetName: String?

        public var targetPath: String?

        public var targetType: String?

        public var updateTime: String?

        public var userProvisioningId: String?

        public override init() {
            super.init()
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
            if self.deletionStrategy != nil {
                map["DeletionStrategy"] = self.deletionStrategy!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.directoryId != nil {
                map["DirectoryId"] = self.directoryId!
            }
            if self.duplicationStrategy != nil {
                map["DuplicationStrategy"] = self.duplicationStrategy!
            }
            if self.ownerPk != nil {
                map["OwnerPk"] = self.ownerPk!
            }
            if self.principalId != nil {
                map["PrincipalId"] = self.principalId!
            }
            if self.principalName != nil {
                map["PrincipalName"] = self.principalName!
            }
            if self.principalType != nil {
                map["PrincipalType"] = self.principalType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.targetId != nil {
                map["TargetId"] = self.targetId!
            }
            if self.targetName != nil {
                map["TargetName"] = self.targetName!
            }
            if self.targetPath != nil {
                map["TargetPath"] = self.targetPath!
            }
            if self.targetType != nil {
                map["TargetType"] = self.targetType!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.userProvisioningId != nil {
                map["UserProvisioningId"] = self.userProvisioningId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DeletionStrategy") {
                self.deletionStrategy = dict["DeletionStrategy"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DirectoryId") {
                self.directoryId = dict["DirectoryId"] as! String
            }
            if dict.keys.contains("DuplicationStrategy") {
                self.duplicationStrategy = dict["DuplicationStrategy"] as! String
            }
            if dict.keys.contains("OwnerPk") {
                self.ownerPk = dict["OwnerPk"] as! String
            }
            if dict.keys.contains("PrincipalId") {
                self.principalId = dict["PrincipalId"] as! String
            }
            if dict.keys.contains("PrincipalName") {
                self.principalName = dict["PrincipalName"] as! String
            }
            if dict.keys.contains("PrincipalType") {
                self.principalType = dict["PrincipalType"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TargetId") {
                self.targetId = dict["TargetId"] as! String
            }
            if dict.keys.contains("TargetName") {
                self.targetName = dict["TargetName"] as! String
            }
            if dict.keys.contains("TargetPath") {
                self.targetPath = dict["TargetPath"] as! String
            }
            if dict.keys.contains("TargetType") {
                self.targetType = dict["TargetType"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("UserProvisioningId") {
                self.userProvisioningId = dict["UserProvisioningId"] as! String
            }
        }
    }
    public var requestId: String?

    public var userProvisioning: GetUserProvisioningResponseBody.UserProvisioning?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.userProvisioning?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.userProvisioning != nil {
            map["UserProvisioning"] = self.userProvisioning?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UserProvisioning") {
            var model = GetUserProvisioningResponseBody.UserProvisioning()
            model.fromMap(dict["UserProvisioning"] as! [String: Any])
            self.userProvisioning = model
        }
    }
}

public class GetUserProvisioningResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserProvisioningResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetUserProvisioningResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserProvisioningConfigurationRequest : Tea.TeaModel {
    public var directoryId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
    }
}

public class GetUserProvisioningConfigurationResponseBody : Tea.TeaModel {
    public class UserProvisioningConfiguration : Tea.TeaModel {
        public var createTime: String?

        public var defaultLandingPage: String?

        public var directoryId: String?

        public var sessionDuration: Int32?

        public var updateTime: String?

        public override init() {
            super.init()
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
            if self.defaultLandingPage != nil {
                map["DefaultLandingPage"] = self.defaultLandingPage!
            }
            if self.directoryId != nil {
                map["DirectoryId"] = self.directoryId!
            }
            if self.sessionDuration != nil {
                map["SessionDuration"] = self.sessionDuration!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DefaultLandingPage") {
                self.defaultLandingPage = dict["DefaultLandingPage"] as! String
            }
            if dict.keys.contains("DirectoryId") {
                self.directoryId = dict["DirectoryId"] as! String
            }
            if dict.keys.contains("SessionDuration") {
                self.sessionDuration = dict["SessionDuration"] as! Int32
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var requestId: String?

    public var userProvisioningConfiguration: GetUserProvisioningConfigurationResponseBody.UserProvisioningConfiguration?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.userProvisioningConfiguration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.userProvisioningConfiguration != nil {
            map["UserProvisioningConfiguration"] = self.userProvisioningConfiguration?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UserProvisioningConfiguration") {
            var model = GetUserProvisioningConfigurationResponseBody.UserProvisioningConfiguration()
            model.fromMap(dict["UserProvisioningConfiguration"] as! [String: Any])
            self.userProvisioningConfiguration = model
        }
    }
}

public class GetUserProvisioningConfigurationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserProvisioningConfigurationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetUserProvisioningConfigurationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserProvisioningEventRequest : Tea.TeaModel {
    public var directoryId: String?

    public var eventId: String?

    public override init() {
        super.init()
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
        if self.eventId != nil {
            map["EventId"] = self.eventId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("EventId") {
            self.eventId = dict["EventId"] as! String
        }
    }
}

public class GetUserProvisioningEventResponseBody : Tea.TeaModel {
    public class UserProvisioningEvent : Tea.TeaModel {
        public var createTime: String?

        public var deletionStrategy: String?

        public var directoryId: String?

        public var duplicationStrategy: String?

        public var errorCount: Int64?

        public var errorInfo: String?

        public var eventId: String?

        public var latestAsyncTime: String?

        public var principalId: String?

        public var principalName: String?

        public var principalType: String?

        public var sourceType: String?

        public var targetId: String?

        public var targetName: String?

        public var targetPath: String?

        public var targetType: String?

        public var updateTime: String?

        public var userProvisioningId: String?

        public override init() {
            super.init()
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
            if self.deletionStrategy != nil {
                map["DeletionStrategy"] = self.deletionStrategy!
            }
            if self.directoryId != nil {
                map["DirectoryId"] = self.directoryId!
            }
            if self.duplicationStrategy != nil {
                map["DuplicationStrategy"] = self.duplicationStrategy!
            }
            if self.errorCount != nil {
                map["ErrorCount"] = self.errorCount!
            }
            if self.errorInfo != nil {
                map["ErrorInfo"] = self.errorInfo!
            }
            if self.eventId != nil {
                map["EventId"] = self.eventId!
            }
            if self.latestAsyncTime != nil {
                map["LatestAsyncTime"] = self.latestAsyncTime!
            }
            if self.principalId != nil {
                map["PrincipalId"] = self.principalId!
            }
            if self.principalName != nil {
                map["PrincipalName"] = self.principalName!
            }
            if self.principalType != nil {
                map["PrincipalType"] = self.principalType!
            }
            if self.sourceType != nil {
                map["SourceType"] = self.sourceType!
            }
            if self.targetId != nil {
                map["TargetId"] = self.targetId!
            }
            if self.targetName != nil {
                map["TargetName"] = self.targetName!
            }
            if self.targetPath != nil {
                map["TargetPath"] = self.targetPath!
            }
            if self.targetType != nil {
                map["TargetType"] = self.targetType!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.userProvisioningId != nil {
                map["UserProvisioningId"] = self.userProvisioningId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DeletionStrategy") {
                self.deletionStrategy = dict["DeletionStrategy"] as! String
            }
            if dict.keys.contains("DirectoryId") {
                self.directoryId = dict["DirectoryId"] as! String
            }
            if dict.keys.contains("DuplicationStrategy") {
                self.duplicationStrategy = dict["DuplicationStrategy"] as! String
            }
            if dict.keys.contains("ErrorCount") {
                self.errorCount = dict["ErrorCount"] as! Int64
            }
            if dict.keys.contains("ErrorInfo") {
                self.errorInfo = dict["ErrorInfo"] as! String
            }
            if dict.keys.contains("EventId") {
                self.eventId = dict["EventId"] as! String
            }
            if dict.keys.contains("LatestAsyncTime") {
                self.latestAsyncTime = dict["LatestAsyncTime"] as! String
            }
            if dict.keys.contains("PrincipalId") {
                self.principalId = dict["PrincipalId"] as! String
            }
            if dict.keys.contains("PrincipalName") {
                self.principalName = dict["PrincipalName"] as! String
            }
            if dict.keys.contains("PrincipalType") {
                self.principalType = dict["PrincipalType"] as! String
            }
            if dict.keys.contains("SourceType") {
                self.sourceType = dict["SourceType"] as! String
            }
            if dict.keys.contains("TargetId") {
                self.targetId = dict["TargetId"] as! String
            }
            if dict.keys.contains("TargetName") {
                self.targetName = dict["TargetName"] as! String
            }
            if dict.keys.contains("TargetPath") {
                self.targetPath = dict["TargetPath"] as! String
            }
            if dict.keys.contains("TargetType") {
                self.targetType = dict["TargetType"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("UserProvisioningId") {
                self.userProvisioningId = dict["UserProvisioningId"] as! String
            }
        }
    }
    public var requestId: String?

    public var userProvisioningEvent: GetUserProvisioningEventResponseBody.UserProvisioningEvent?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.userProvisioningEvent?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.userProvisioningEvent != nil {
            map["UserProvisioningEvent"] = self.userProvisioningEvent?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UserProvisioningEvent") {
            var model = GetUserProvisioningEventResponseBody.UserProvisioningEvent()
            model.fromMap(dict["UserProvisioningEvent"] as! [String: Any])
            self.userProvisioningEvent = model
        }
    }
}

public class GetUserProvisioningEventResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserProvisioningEventResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetUserProvisioningEventResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserProvisioningRdAccountStatisticsRequest : Tea.TeaModel {
    public var directoryId: String?

    public var rdMemberId: String?

    public override init() {
        super.init()
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
        if self.rdMemberId != nil {
            map["RdMemberId"] = self.rdMemberId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("RdMemberId") {
            self.rdMemberId = dict["RdMemberId"] as! String
        }
    }
}

public class GetUserProvisioningRdAccountStatisticsResponseBody : Tea.TeaModel {
    public class UserProvisioningStatistics : Tea.TeaModel {
        public var directoryId: String?

        public var entityId: String?

        public var failedEventCount: Int64?

        public var latestAsyncTime: String?

        public var ownerPk: String?

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
            if self.directoryId != nil {
                map["DirectoryId"] = self.directoryId!
            }
            if self.entityId != nil {
                map["EntityId"] = self.entityId!
            }
            if self.failedEventCount != nil {
                map["FailedEventCount"] = self.failedEventCount!
            }
            if self.latestAsyncTime != nil {
                map["LatestAsyncTime"] = self.latestAsyncTime!
            }
            if self.ownerPk != nil {
                map["OwnerPk"] = self.ownerPk!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DirectoryId") {
                self.directoryId = dict["DirectoryId"] as! String
            }
            if dict.keys.contains("EntityId") {
                self.entityId = dict["EntityId"] as! String
            }
            if dict.keys.contains("FailedEventCount") {
                self.failedEventCount = dict["FailedEventCount"] as! Int64
            }
            if dict.keys.contains("LatestAsyncTime") {
                self.latestAsyncTime = dict["LatestAsyncTime"] as! String
            }
            if dict.keys.contains("OwnerPk") {
                self.ownerPk = dict["OwnerPk"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var requestId: String?

    public var userProvisioningStatistics: GetUserProvisioningRdAccountStatisticsResponseBody.UserProvisioningStatistics?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.userProvisioningStatistics?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.userProvisioningStatistics != nil {
            map["UserProvisioningStatistics"] = self.userProvisioningStatistics?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UserProvisioningStatistics") {
            var model = GetUserProvisioningRdAccountStatisticsResponseBody.UserProvisioningStatistics()
            model.fromMap(dict["UserProvisioningStatistics"] as! [String: Any])
            self.userProvisioningStatistics = model
        }
    }
}

public class GetUserProvisioningRdAccountStatisticsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserProvisioningRdAccountStatisticsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetUserProvisioningRdAccountStatisticsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserProvisioningStatisticsRequest : Tea.TeaModel {
    public var directoryId: String?

    public var userProvisioningId: String?

    public override init() {
        super.init()
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
        if self.userProvisioningId != nil {
            map["UserProvisioningId"] = self.userProvisioningId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("UserProvisioningId") {
            self.userProvisioningId = dict["UserProvisioningId"] as! String
        }
    }
}

public class GetUserProvisioningStatisticsResponseBody : Tea.TeaModel {
    public class UserProvisioningStatistics : Tea.TeaModel {
        public var directoryId: String?

        public var entityId: String?

        public var failedEventCount: Int64?

        public var latestAsyncTime: String?

        public var ownerPk: String?

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
            if self.directoryId != nil {
                map["DirectoryId"] = self.directoryId!
            }
            if self.entityId != nil {
                map["EntityId"] = self.entityId!
            }
            if self.failedEventCount != nil {
                map["FailedEventCount"] = self.failedEventCount!
            }
            if self.latestAsyncTime != nil {
                map["LatestAsyncTime"] = self.latestAsyncTime!
            }
            if self.ownerPk != nil {
                map["OwnerPk"] = self.ownerPk!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DirectoryId") {
                self.directoryId = dict["DirectoryId"] as! String
            }
            if dict.keys.contains("EntityId") {
                self.entityId = dict["EntityId"] as! String
            }
            if dict.keys.contains("FailedEventCount") {
                self.failedEventCount = dict["FailedEventCount"] as! Int64
            }
            if dict.keys.contains("LatestAsyncTime") {
                self.latestAsyncTime = dict["LatestAsyncTime"] as! String
            }
            if dict.keys.contains("OwnerPk") {
                self.ownerPk = dict["OwnerPk"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var requestId: String?

    public var userProvisioningStatistics: GetUserProvisioningStatisticsResponseBody.UserProvisioningStatistics?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.userProvisioningStatistics?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.userProvisioningStatistics != nil {
            map["UserProvisioningStatistics"] = self.userProvisioningStatistics?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UserProvisioningStatistics") {
            var model = GetUserProvisioningStatisticsResponseBody.UserProvisioningStatistics()
            model.fromMap(dict["UserProvisioningStatistics"] as! [String: Any])
            self.userProvisioningStatistics = model
        }
    }
}

public class GetUserProvisioningStatisticsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserProvisioningStatisticsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = GetUserProvisioningStatisticsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAccessAssignmentsRequest : Tea.TeaModel {
    public var accessConfigurationId: String?

    public var directoryId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var principalId: String?

    public var principalType: String?

    public var targetId: String?

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
        if self.accessConfigurationId != nil {
            map["AccessConfigurationId"] = self.accessConfigurationId!
        }
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.principalId != nil {
            map["PrincipalId"] = self.principalId!
        }
        if self.principalType != nil {
            map["PrincipalType"] = self.principalType!
        }
        if self.targetId != nil {
            map["TargetId"] = self.targetId!
        }
        if self.targetType != nil {
            map["TargetType"] = self.targetType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessConfigurationId") {
            self.accessConfigurationId = dict["AccessConfigurationId"] as! String
        }
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("PrincipalId") {
            self.principalId = dict["PrincipalId"] as! String
        }
        if dict.keys.contains("PrincipalType") {
            self.principalType = dict["PrincipalType"] as! String
        }
        if dict.keys.contains("TargetId") {
            self.targetId = dict["TargetId"] as! String
        }
        if dict.keys.contains("TargetType") {
            self.targetType = dict["TargetType"] as! String
        }
    }
}

public class ListAccessAssignmentsResponseBody : Tea.TeaModel {
    public class AccessAssignments : Tea.TeaModel {
        public var accessConfigurationId: String?

        public var accessConfigurationName: String?

        public var createTime: String?

        public var principalId: String?

        public var principalName: String?

        public var principalType: String?

        public var targetId: String?

        public var targetName: String?

        public var targetPath: String?

        public var targetPathName: String?

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
            if self.accessConfigurationId != nil {
                map["AccessConfigurationId"] = self.accessConfigurationId!
            }
            if self.accessConfigurationName != nil {
                map["AccessConfigurationName"] = self.accessConfigurationName!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.principalId != nil {
                map["PrincipalId"] = self.principalId!
            }
            if self.principalName != nil {
                map["PrincipalName"] = self.principalName!
            }
            if self.principalType != nil {
                map["PrincipalType"] = self.principalType!
            }
            if self.targetId != nil {
                map["TargetId"] = self.targetId!
            }
            if self.targetName != nil {
                map["TargetName"] = self.targetName!
            }
            if self.targetPath != nil {
                map["TargetPath"] = self.targetPath!
            }
            if self.targetPathName != nil {
                map["TargetPathName"] = self.targetPathName!
            }
            if self.targetType != nil {
                map["TargetType"] = self.targetType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessConfigurationId") {
                self.accessConfigurationId = dict["AccessConfigurationId"] as! String
            }
            if dict.keys.contains("AccessConfigurationName") {
                self.accessConfigurationName = dict["AccessConfigurationName"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("PrincipalId") {
                self.principalId = dict["PrincipalId"] as! String
            }
            if dict.keys.contains("PrincipalName") {
                self.principalName = dict["PrincipalName"] as! String
            }
            if dict.keys.contains("PrincipalType") {
                self.principalType = dict["PrincipalType"] as! String
            }
            if dict.keys.contains("TargetId") {
                self.targetId = dict["TargetId"] as! String
            }
            if dict.keys.contains("TargetName") {
                self.targetName = dict["TargetName"] as! String
            }
            if dict.keys.contains("TargetPath") {
                self.targetPath = dict["TargetPath"] as! String
            }
            if dict.keys.contains("TargetPathName") {
                self.targetPathName = dict["TargetPathName"] as! String
            }
            if dict.keys.contains("TargetType") {
                self.targetType = dict["TargetType"] as! String
            }
        }
    }
    public var accessAssignments: [ListAccessAssignmentsResponseBody.AccessAssignments]?

    public var isTruncated: Bool?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var totalCounts: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessAssignments != nil {
            var tmp : [Any] = []
            for k in self.accessAssignments! {
                tmp.append(k.toMap())
            }
            map["AccessAssignments"] = tmp
        }
        if self.isTruncated != nil {
            map["IsTruncated"] = self.isTruncated!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCounts != nil {
            map["TotalCounts"] = self.totalCounts!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessAssignments") {
            var tmp : [ListAccessAssignmentsResponseBody.AccessAssignments] = []
            for v in dict["AccessAssignments"] as! [Any] {
                var model = ListAccessAssignmentsResponseBody.AccessAssignments()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.accessAssignments = tmp
        }
        if dict.keys.contains("IsTruncated") {
            self.isTruncated = dict["IsTruncated"] as! Bool
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCounts") {
            self.totalCounts = dict["TotalCounts"] as! Int32
        }
    }
}

public class ListAccessAssignmentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAccessAssignmentsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListAccessAssignmentsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAccessConfigurationProvisioningsRequest : Tea.TeaModel {
    public var accessConfigurationId: String?

    public var directoryId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var provisioningStatus: String?

    public var targetId: String?

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
        if self.accessConfigurationId != nil {
            map["AccessConfigurationId"] = self.accessConfigurationId!
        }
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.provisioningStatus != nil {
            map["ProvisioningStatus"] = self.provisioningStatus!
        }
        if self.targetId != nil {
            map["TargetId"] = self.targetId!
        }
        if self.targetType != nil {
            map["TargetType"] = self.targetType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessConfigurationId") {
            self.accessConfigurationId = dict["AccessConfigurationId"] as! String
        }
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ProvisioningStatus") {
            self.provisioningStatus = dict["ProvisioningStatus"] as! String
        }
        if dict.keys.contains("TargetId") {
            self.targetId = dict["TargetId"] as! String
        }
        if dict.keys.contains("TargetType") {
            self.targetType = dict["TargetType"] as! String
        }
    }
}

public class ListAccessConfigurationProvisioningsResponseBody : Tea.TeaModel {
    public class AccessConfigurationProvisionings : Tea.TeaModel {
        public var accessConfigurationId: String?

        public var accessConfigurationName: String?

        public var createTime: String?

        public var RAMPolicyNames: [String]?

        public var RAMRoleName: String?

        public var SAMLProviderName: String?

        public var status: String?

        public var targetId: String?

        public var targetName: String?

        public var targetPath: String?

        public var targetPathName: String?

        public var targetType: String?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessConfigurationId != nil {
                map["AccessConfigurationId"] = self.accessConfigurationId!
            }
            if self.accessConfigurationName != nil {
                map["AccessConfigurationName"] = self.accessConfigurationName!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.RAMPolicyNames != nil {
                map["RAMPolicyNames"] = self.RAMPolicyNames!
            }
            if self.RAMRoleName != nil {
                map["RAMRoleName"] = self.RAMRoleName!
            }
            if self.SAMLProviderName != nil {
                map["SAMLProviderName"] = self.SAMLProviderName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.targetId != nil {
                map["TargetId"] = self.targetId!
            }
            if self.targetName != nil {
                map["TargetName"] = self.targetName!
            }
            if self.targetPath != nil {
                map["TargetPath"] = self.targetPath!
            }
            if self.targetPathName != nil {
                map["TargetPathName"] = self.targetPathName!
            }
            if self.targetType != nil {
                map["TargetType"] = self.targetType!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessConfigurationId") {
                self.accessConfigurationId = dict["AccessConfigurationId"] as! String
            }
            if dict.keys.contains("AccessConfigurationName") {
                self.accessConfigurationName = dict["AccessConfigurationName"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("RAMPolicyNames") {
                self.RAMPolicyNames = dict["RAMPolicyNames"] as! [String]
            }
            if dict.keys.contains("RAMRoleName") {
                self.RAMRoleName = dict["RAMRoleName"] as! String
            }
            if dict.keys.contains("SAMLProviderName") {
                self.SAMLProviderName = dict["SAMLProviderName"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TargetId") {
                self.targetId = dict["TargetId"] as! String
            }
            if dict.keys.contains("TargetName") {
                self.targetName = dict["TargetName"] as! String
            }
            if dict.keys.contains("TargetPath") {
                self.targetPath = dict["TargetPath"] as! String
            }
            if dict.keys.contains("TargetPathName") {
                self.targetPathName = dict["TargetPathName"] as! String
            }
            if dict.keys.contains("TargetType") {
                self.targetType = dict["TargetType"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var accessConfigurationProvisionings: [ListAccessConfigurationProvisioningsResponseBody.AccessConfigurationProvisionings]?

    public var isTruncated: Bool?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var totalCounts: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessConfigurationProvisionings != nil {
            var tmp : [Any] = []
            for k in self.accessConfigurationProvisionings! {
                tmp.append(k.toMap())
            }
            map["AccessConfigurationProvisionings"] = tmp
        }
        if self.isTruncated != nil {
            map["IsTruncated"] = self.isTruncated!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCounts != nil {
            map["TotalCounts"] = self.totalCounts!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessConfigurationProvisionings") {
            var tmp : [ListAccessConfigurationProvisioningsResponseBody.AccessConfigurationProvisionings] = []
            for v in dict["AccessConfigurationProvisionings"] as! [Any] {
                var model = ListAccessConfigurationProvisioningsResponseBody.AccessConfigurationProvisionings()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.accessConfigurationProvisionings = tmp
        }
        if dict.keys.contains("IsTruncated") {
            self.isTruncated = dict["IsTruncated"] as! Bool
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCounts") {
            self.totalCounts = dict["TotalCounts"] as! Int32
        }
    }
}

public class ListAccessConfigurationProvisioningsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAccessConfigurationProvisioningsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListAccessConfigurationProvisioningsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAccessConfigurationsRequest : Tea.TeaModel {
    public var directoryId: String?

    public var filter: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var statusNotifications: String?

    public override init() {
        super.init()
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
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.statusNotifications != nil {
            map["StatusNotifications"] = self.statusNotifications!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("Filter") {
            self.filter = dict["Filter"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("StatusNotifications") {
            self.statusNotifications = dict["StatusNotifications"] as! String
        }
    }
}

public class ListAccessConfigurationsResponseBody : Tea.TeaModel {
    public class AccessConfigurations : Tea.TeaModel {
        public var accessConfigurationId: String?

        public var accessConfigurationName: String?

        public var createTime: String?

        public var description_: String?

        public var relayState: String?

        public var sessionDuration: Int32?

        public var statusNotifications: [String]?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessConfigurationId != nil {
                map["AccessConfigurationId"] = self.accessConfigurationId!
            }
            if self.accessConfigurationName != nil {
                map["AccessConfigurationName"] = self.accessConfigurationName!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.relayState != nil {
                map["RelayState"] = self.relayState!
            }
            if self.sessionDuration != nil {
                map["SessionDuration"] = self.sessionDuration!
            }
            if self.statusNotifications != nil {
                map["StatusNotifications"] = self.statusNotifications!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessConfigurationId") {
                self.accessConfigurationId = dict["AccessConfigurationId"] as! String
            }
            if dict.keys.contains("AccessConfigurationName") {
                self.accessConfigurationName = dict["AccessConfigurationName"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("RelayState") {
                self.relayState = dict["RelayState"] as! String
            }
            if dict.keys.contains("SessionDuration") {
                self.sessionDuration = dict["SessionDuration"] as! Int32
            }
            if dict.keys.contains("StatusNotifications") {
                self.statusNotifications = dict["StatusNotifications"] as! [String]
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var accessConfigurations: [ListAccessConfigurationsResponseBody.AccessConfigurations]?

    public var isTruncated: Bool?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var totalCounts: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessConfigurations != nil {
            var tmp : [Any] = []
            for k in self.accessConfigurations! {
                tmp.append(k.toMap())
            }
            map["AccessConfigurations"] = tmp
        }
        if self.isTruncated != nil {
            map["IsTruncated"] = self.isTruncated!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCounts != nil {
            map["TotalCounts"] = self.totalCounts!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessConfigurations") {
            var tmp : [ListAccessConfigurationsResponseBody.AccessConfigurations] = []
            for v in dict["AccessConfigurations"] as! [Any] {
                var model = ListAccessConfigurationsResponseBody.AccessConfigurations()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.accessConfigurations = tmp
        }
        if dict.keys.contains("IsTruncated") {
            self.isTruncated = dict["IsTruncated"] as! Bool
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCounts") {
            self.totalCounts = dict["TotalCounts"] as! Int32
        }
    }
}

public class ListAccessConfigurationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAccessConfigurationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListAccessConfigurationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDirectoriesResponseBody : Tea.TeaModel {
    public class Directories : Tea.TeaModel {
        public var createTime: String?

        public var directoryId: String?

        public var directoryName: String?

        public var region: String?

        public var updateTime: String?

        public override init() {
            super.init()
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
            if self.directoryId != nil {
                map["DirectoryId"] = self.directoryId!
            }
            if self.directoryName != nil {
                map["DirectoryName"] = self.directoryName!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DirectoryId") {
                self.directoryId = dict["DirectoryId"] as! String
            }
            if dict.keys.contains("DirectoryName") {
                self.directoryName = dict["DirectoryName"] as! String
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var directories: [ListDirectoriesResponseBody.Directories]?

    public var requestId: String?

    public var totalCounts: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.directories != nil {
            var tmp : [Any] = []
            for k in self.directories! {
                tmp.append(k.toMap())
            }
            map["Directories"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCounts != nil {
            map["TotalCounts"] = self.totalCounts!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Directories") {
            var tmp : [ListDirectoriesResponseBody.Directories] = []
            for v in dict["Directories"] as! [Any] {
                var model = ListDirectoriesResponseBody.Directories()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.directories = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCounts") {
            self.totalCounts = dict["TotalCounts"] as! Int32
        }
    }
}

public class ListDirectoriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDirectoriesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListDirectoriesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListExternalSAMLIdPCertificatesRequest : Tea.TeaModel {
    public var directoryId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
    }
}

public class ListExternalSAMLIdPCertificatesResponseBody : Tea.TeaModel {
    public class SAMLIdPCertificates : Tea.TeaModel {
        public var certificateId: String?

        public var issuer: String?

        public var notAfter: String?

        public var notBefore: String?

        public var publicKey: String?

        public var serialNumber: String?

        public var signatureAlgorithm: String?

        public var subject: String?

        public var version: Int32?

        public var x509Certificate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.certificateId != nil {
                map["CertificateId"] = self.certificateId!
            }
            if self.issuer != nil {
                map["Issuer"] = self.issuer!
            }
            if self.notAfter != nil {
                map["NotAfter"] = self.notAfter!
            }
            if self.notBefore != nil {
                map["NotBefore"] = self.notBefore!
            }
            if self.publicKey != nil {
                map["PublicKey"] = self.publicKey!
            }
            if self.serialNumber != nil {
                map["SerialNumber"] = self.serialNumber!
            }
            if self.signatureAlgorithm != nil {
                map["SignatureAlgorithm"] = self.signatureAlgorithm!
            }
            if self.subject != nil {
                map["Subject"] = self.subject!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            if self.x509Certificate != nil {
                map["X509Certificate"] = self.x509Certificate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CertificateId") {
                self.certificateId = dict["CertificateId"] as! String
            }
            if dict.keys.contains("Issuer") {
                self.issuer = dict["Issuer"] as! String
            }
            if dict.keys.contains("NotAfter") {
                self.notAfter = dict["NotAfter"] as! String
            }
            if dict.keys.contains("NotBefore") {
                self.notBefore = dict["NotBefore"] as! String
            }
            if dict.keys.contains("PublicKey") {
                self.publicKey = dict["PublicKey"] as! String
            }
            if dict.keys.contains("SerialNumber") {
                self.serialNumber = dict["SerialNumber"] as! String
            }
            if dict.keys.contains("SignatureAlgorithm") {
                self.signatureAlgorithm = dict["SignatureAlgorithm"] as! String
            }
            if dict.keys.contains("Subject") {
                self.subject = dict["Subject"] as! String
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! Int32
            }
            if dict.keys.contains("X509Certificate") {
                self.x509Certificate = dict["X509Certificate"] as! String
            }
        }
    }
    public var requestId: String?

    public var SAMLIdPCertificates: [ListExternalSAMLIdPCertificatesResponseBody.SAMLIdPCertificates]?

    public var totalCounts: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.SAMLIdPCertificates != nil {
            var tmp : [Any] = []
            for k in self.SAMLIdPCertificates! {
                tmp.append(k.toMap())
            }
            map["SAMLIdPCertificates"] = tmp
        }
        if self.totalCounts != nil {
            map["TotalCounts"] = self.totalCounts!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SAMLIdPCertificates") {
            var tmp : [ListExternalSAMLIdPCertificatesResponseBody.SAMLIdPCertificates] = []
            for v in dict["SAMLIdPCertificates"] as! [Any] {
                var model = ListExternalSAMLIdPCertificatesResponseBody.SAMLIdPCertificates()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.SAMLIdPCertificates = tmp
        }
        if dict.keys.contains("TotalCounts") {
            self.totalCounts = dict["TotalCounts"] as! Int32
        }
    }
}

public class ListExternalSAMLIdPCertificatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListExternalSAMLIdPCertificatesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListExternalSAMLIdPCertificatesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListGroupMembersRequest : Tea.TeaModel {
    public var directoryId: String?

    public var groupId: String?

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
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
    }
}

public class ListGroupMembersResponseBody : Tea.TeaModel {
    public class GroupMembers : Tea.TeaModel {
        public var description_: String?

        public var displayName: String?

        public var email: String?

        public var groupId: String?

        public var joinTime: String?

        public var provisionType: String?

        public var status: String?

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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            if self.joinTime != nil {
                map["JoinTime"] = self.joinTime!
            }
            if self.provisionType != nil {
                map["ProvisionType"] = self.provisionType!
            }
            if self.status != nil {
                map["Status"] = self.status!
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
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DisplayName") {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("Email") {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("GroupId") {
                self.groupId = dict["GroupId"] as! String
            }
            if dict.keys.contains("JoinTime") {
                self.joinTime = dict["JoinTime"] as! String
            }
            if dict.keys.contains("ProvisionType") {
                self.provisionType = dict["ProvisionType"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
            if dict.keys.contains("UserName") {
                self.userName = dict["UserName"] as! String
            }
        }
    }
    public var groupMembers: [ListGroupMembersResponseBody.GroupMembers]?

    public var isTruncated: Bool?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var totalCounts: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupMembers != nil {
            var tmp : [Any] = []
            for k in self.groupMembers! {
                tmp.append(k.toMap())
            }
            map["GroupMembers"] = tmp
        }
        if self.isTruncated != nil {
            map["IsTruncated"] = self.isTruncated!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCounts != nil {
            map["TotalCounts"] = self.totalCounts!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupMembers") {
            var tmp : [ListGroupMembersResponseBody.GroupMembers] = []
            for v in dict["GroupMembers"] as! [Any] {
                var model = ListGroupMembersResponseBody.GroupMembers()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.groupMembers = tmp
        }
        if dict.keys.contains("IsTruncated") {
            self.isTruncated = dict["IsTruncated"] as! Bool
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCounts") {
            self.totalCounts = dict["TotalCounts"] as! Int32
        }
    }
}

public class ListGroupMembersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGroupMembersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListGroupMembersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListGroupsRequest : Tea.TeaModel {
    public var directoryId: String?

    public var filter: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var provisionType: String?

    public override init() {
        super.init()
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
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.provisionType != nil {
            map["ProvisionType"] = self.provisionType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("Filter") {
            self.filter = dict["Filter"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ProvisionType") {
            self.provisionType = dict["ProvisionType"] as! String
        }
    }
}

public class ListGroupsResponseBody : Tea.TeaModel {
    public class Groups : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var groupId: String?

        public var groupName: String?

        public var provisionType: String?

        public var updateTime: String?

        public override init() {
            super.init()
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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.provisionType != nil {
                map["ProvisionType"] = self.provisionType!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
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
            if dict.keys.contains("GroupId") {
                self.groupId = dict["GroupId"] as! String
            }
            if dict.keys.contains("GroupName") {
                self.groupName = dict["GroupName"] as! String
            }
            if dict.keys.contains("ProvisionType") {
                self.provisionType = dict["ProvisionType"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var groups: [ListGroupsResponseBody.Groups]?

    public var isTruncated: Bool?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var totalCounts: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groups != nil {
            var tmp : [Any] = []
            for k in self.groups! {
                tmp.append(k.toMap())
            }
            map["Groups"] = tmp
        }
        if self.isTruncated != nil {
            map["IsTruncated"] = self.isTruncated!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCounts != nil {
            map["TotalCounts"] = self.totalCounts!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Groups") {
            var tmp : [ListGroupsResponseBody.Groups] = []
            for v in dict["Groups"] as! [Any] {
                var model = ListGroupsResponseBody.Groups()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.groups = tmp
        }
        if dict.keys.contains("IsTruncated") {
            self.isTruncated = dict["IsTruncated"] as! Bool
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCounts") {
            self.totalCounts = dict["TotalCounts"] as! Int32
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

public class ListJoinedGroupsForUserRequest : Tea.TeaModel {
    public var directoryId: String?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class ListJoinedGroupsForUserResponseBody : Tea.TeaModel {
    public class JoinedGroups : Tea.TeaModel {
        public var description_: String?

        public var groupId: String?

        public var groupName: String?

        public var joinTime: String?

        public var provisionType: String?

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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.joinTime != nil {
                map["JoinTime"] = self.joinTime!
            }
            if self.provisionType != nil {
                map["ProvisionType"] = self.provisionType!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("GroupId") {
                self.groupId = dict["GroupId"] as! String
            }
            if dict.keys.contains("GroupName") {
                self.groupName = dict["GroupName"] as! String
            }
            if dict.keys.contains("JoinTime") {
                self.joinTime = dict["JoinTime"] as! String
            }
            if dict.keys.contains("ProvisionType") {
                self.provisionType = dict["ProvisionType"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var isTruncated: Bool?

    public var joinedGroups: [ListJoinedGroupsForUserResponseBody.JoinedGroups]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var totalCounts: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isTruncated != nil {
            map["IsTruncated"] = self.isTruncated!
        }
        if self.joinedGroups != nil {
            var tmp : [Any] = []
            for k in self.joinedGroups! {
                tmp.append(k.toMap())
            }
            map["JoinedGroups"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCounts != nil {
            map["TotalCounts"] = self.totalCounts!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsTruncated") {
            self.isTruncated = dict["IsTruncated"] as! Bool
        }
        if dict.keys.contains("JoinedGroups") {
            var tmp : [ListJoinedGroupsForUserResponseBody.JoinedGroups] = []
            for v in dict["JoinedGroups"] as! [Any] {
                var model = ListJoinedGroupsForUserResponseBody.JoinedGroups()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.joinedGroups = tmp
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCounts") {
            self.totalCounts = dict["TotalCounts"] as! Int32
        }
    }
}

public class ListJoinedGroupsForUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListJoinedGroupsForUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListJoinedGroupsForUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListMFADevicesForUserRequest : Tea.TeaModel {
    public var directoryId: String?

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
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class ListMFADevicesForUserResponseBody : Tea.TeaModel {
    public class MFADevices : Tea.TeaModel {
        public var deviceId: String?

        public var deviceName: String?

        public var deviceType: String?

        public var effectiveTime: String?

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
            if self.deviceId != nil {
                map["DeviceId"] = self.deviceId!
            }
            if self.deviceName != nil {
                map["DeviceName"] = self.deviceName!
            }
            if self.deviceType != nil {
                map["DeviceType"] = self.deviceType!
            }
            if self.effectiveTime != nil {
                map["EffectiveTime"] = self.effectiveTime!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeviceId") {
                self.deviceId = dict["DeviceId"] as! String
            }
            if dict.keys.contains("DeviceName") {
                self.deviceName = dict["DeviceName"] as! String
            }
            if dict.keys.contains("DeviceType") {
                self.deviceType = dict["DeviceType"] as! String
            }
            if dict.keys.contains("EffectiveTime") {
                self.effectiveTime = dict["EffectiveTime"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var MFADevices: [ListMFADevicesForUserResponseBody.MFADevices]?

    public var requestId: String?

    public var totalCounts: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.MFADevices != nil {
            var tmp : [Any] = []
            for k in self.MFADevices! {
                tmp.append(k.toMap())
            }
            map["MFADevices"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCounts != nil {
            map["TotalCounts"] = self.totalCounts!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MFADevices") {
            var tmp : [ListMFADevicesForUserResponseBody.MFADevices] = []
            for v in dict["MFADevices"] as! [Any] {
                var model = ListMFADevicesForUserResponseBody.MFADevices()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.MFADevices = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCounts") {
            self.totalCounts = dict["TotalCounts"] as! Int32
        }
    }
}

public class ListMFADevicesForUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMFADevicesForUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListMFADevicesForUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPermissionPoliciesInAccessConfigurationRequest : Tea.TeaModel {
    public var accessConfigurationId: String?

    public var directoryId: String?

    public var permissionPolicyType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessConfigurationId != nil {
            map["AccessConfigurationId"] = self.accessConfigurationId!
        }
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.permissionPolicyType != nil {
            map["PermissionPolicyType"] = self.permissionPolicyType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessConfigurationId") {
            self.accessConfigurationId = dict["AccessConfigurationId"] as! String
        }
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("PermissionPolicyType") {
            self.permissionPolicyType = dict["PermissionPolicyType"] as! String
        }
    }
}

public class ListPermissionPoliciesInAccessConfigurationResponseBody : Tea.TeaModel {
    public class PermissionPolicies : Tea.TeaModel {
        public var addTime: String?

        public var permissionPolicyDocument: String?

        public var permissionPolicyName: String?

        public var permissionPolicyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.addTime != nil {
                map["AddTime"] = self.addTime!
            }
            if self.permissionPolicyDocument != nil {
                map["PermissionPolicyDocument"] = self.permissionPolicyDocument!
            }
            if self.permissionPolicyName != nil {
                map["PermissionPolicyName"] = self.permissionPolicyName!
            }
            if self.permissionPolicyType != nil {
                map["PermissionPolicyType"] = self.permissionPolicyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AddTime") {
                self.addTime = dict["AddTime"] as! String
            }
            if dict.keys.contains("PermissionPolicyDocument") {
                self.permissionPolicyDocument = dict["PermissionPolicyDocument"] as! String
            }
            if dict.keys.contains("PermissionPolicyName") {
                self.permissionPolicyName = dict["PermissionPolicyName"] as! String
            }
            if dict.keys.contains("PermissionPolicyType") {
                self.permissionPolicyType = dict["PermissionPolicyType"] as! String
            }
        }
    }
    public var permissionPolicies: [ListPermissionPoliciesInAccessConfigurationResponseBody.PermissionPolicies]?

    public var requestId: String?

    public var totalCounts: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.permissionPolicies != nil {
            var tmp : [Any] = []
            for k in self.permissionPolicies! {
                tmp.append(k.toMap())
            }
            map["PermissionPolicies"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCounts != nil {
            map["TotalCounts"] = self.totalCounts!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PermissionPolicies") {
            var tmp : [ListPermissionPoliciesInAccessConfigurationResponseBody.PermissionPolicies] = []
            for v in dict["PermissionPolicies"] as! [Any] {
                var model = ListPermissionPoliciesInAccessConfigurationResponseBody.PermissionPolicies()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.permissionPolicies = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCounts") {
            self.totalCounts = dict["TotalCounts"] as! Int32
        }
    }
}

public class ListPermissionPoliciesInAccessConfigurationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPermissionPoliciesInAccessConfigurationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListPermissionPoliciesInAccessConfigurationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSCIMServerCredentialsRequest : Tea.TeaModel {
    public var directoryId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
    }
}

public class ListSCIMServerCredentialsResponseBody : Tea.TeaModel {
    public class SCIMServerCredentials : Tea.TeaModel {
        public var createTime: String?

        public var credentialId: String?

        public var credentialType: String?

        public var directoryId: String?

        public var expireTime: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.credentialId != nil {
                map["CredentialId"] = self.credentialId!
            }
            if self.credentialType != nil {
                map["CredentialType"] = self.credentialType!
            }
            if self.directoryId != nil {
                map["DirectoryId"] = self.directoryId!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CredentialId") {
                self.credentialId = dict["CredentialId"] as! String
            }
            if dict.keys.contains("CredentialType") {
                self.credentialType = dict["CredentialType"] as! String
            }
            if dict.keys.contains("DirectoryId") {
                self.directoryId = dict["DirectoryId"] as! String
            }
            if dict.keys.contains("ExpireTime") {
                self.expireTime = dict["ExpireTime"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var requestId: String?

    public var SCIMServerCredentials: [ListSCIMServerCredentialsResponseBody.SCIMServerCredentials]?

    public var totalCounts: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.SCIMServerCredentials != nil {
            var tmp : [Any] = []
            for k in self.SCIMServerCredentials! {
                tmp.append(k.toMap())
            }
            map["SCIMServerCredentials"] = tmp
        }
        if self.totalCounts != nil {
            map["TotalCounts"] = self.totalCounts!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SCIMServerCredentials") {
            var tmp : [ListSCIMServerCredentialsResponseBody.SCIMServerCredentials] = []
            for v in dict["SCIMServerCredentials"] as! [Any] {
                var model = ListSCIMServerCredentialsResponseBody.SCIMServerCredentials()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.SCIMServerCredentials = tmp
        }
        if dict.keys.contains("TotalCounts") {
            self.totalCounts = dict["TotalCounts"] as! Int32
        }
    }
}

public class ListSCIMServerCredentialsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSCIMServerCredentialsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListSCIMServerCredentialsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTasksRequest : Tea.TeaModel {
    public var accessConfigurationId: String?

    public var directoryId: String?

    public var filter: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var principalId: String?

    public var principalType: String?

    public var status: String?

    public var targetId: String?

    public var targetType: String?

    public var taskType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessConfigurationId != nil {
            map["AccessConfigurationId"] = self.accessConfigurationId!
        }
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.principalId != nil {
            map["PrincipalId"] = self.principalId!
        }
        if self.principalType != nil {
            map["PrincipalType"] = self.principalType!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.targetId != nil {
            map["TargetId"] = self.targetId!
        }
        if self.targetType != nil {
            map["TargetType"] = self.targetType!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessConfigurationId") {
            self.accessConfigurationId = dict["AccessConfigurationId"] as! String
        }
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("Filter") {
            self.filter = dict["Filter"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("PrincipalId") {
            self.principalId = dict["PrincipalId"] as! String
        }
        if dict.keys.contains("PrincipalType") {
            self.principalType = dict["PrincipalType"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TargetId") {
            self.targetId = dict["TargetId"] as! String
        }
        if dict.keys.contains("TargetType") {
            self.targetType = dict["TargetType"] as! String
        }
        if dict.keys.contains("TaskType") {
            self.taskType = dict["TaskType"] as! String
        }
    }
}

public class ListTasksResponseBody : Tea.TeaModel {
    public class Tasks : Tea.TeaModel {
        public var accessConfigurationId: String?

        public var accessConfigurationName: String?

        public var endTime: String?

        public var failureReason: String?

        public var principalId: String?

        public var principalName: String?

        public var principalType: String?

        public var startTime: String?

        public var status: String?

        public var targetId: String?

        public var targetName: String?

        public var targetPath: String?

        public var targetPathName: String?

        public var targetType: String?

        public var taskId: String?

        public var taskType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessConfigurationId != nil {
                map["AccessConfigurationId"] = self.accessConfigurationId!
            }
            if self.accessConfigurationName != nil {
                map["AccessConfigurationName"] = self.accessConfigurationName!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.failureReason != nil {
                map["FailureReason"] = self.failureReason!
            }
            if self.principalId != nil {
                map["PrincipalId"] = self.principalId!
            }
            if self.principalName != nil {
                map["PrincipalName"] = self.principalName!
            }
            if self.principalType != nil {
                map["PrincipalType"] = self.principalType!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.targetId != nil {
                map["TargetId"] = self.targetId!
            }
            if self.targetName != nil {
                map["TargetName"] = self.targetName!
            }
            if self.targetPath != nil {
                map["TargetPath"] = self.targetPath!
            }
            if self.targetPathName != nil {
                map["TargetPathName"] = self.targetPathName!
            }
            if self.targetType != nil {
                map["TargetType"] = self.targetType!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskType != nil {
                map["TaskType"] = self.taskType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessConfigurationId") {
                self.accessConfigurationId = dict["AccessConfigurationId"] as! String
            }
            if dict.keys.contains("AccessConfigurationName") {
                self.accessConfigurationName = dict["AccessConfigurationName"] as! String
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("FailureReason") {
                self.failureReason = dict["FailureReason"] as! String
            }
            if dict.keys.contains("PrincipalId") {
                self.principalId = dict["PrincipalId"] as! String
            }
            if dict.keys.contains("PrincipalName") {
                self.principalName = dict["PrincipalName"] as! String
            }
            if dict.keys.contains("PrincipalType") {
                self.principalType = dict["PrincipalType"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TargetId") {
                self.targetId = dict["TargetId"] as! String
            }
            if dict.keys.contains("TargetName") {
                self.targetName = dict["TargetName"] as! String
            }
            if dict.keys.contains("TargetPath") {
                self.targetPath = dict["TargetPath"] as! String
            }
            if dict.keys.contains("TargetPathName") {
                self.targetPathName = dict["TargetPathName"] as! String
            }
            if dict.keys.contains("TargetType") {
                self.targetType = dict["TargetType"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TaskType") {
                self.taskType = dict["TaskType"] as! String
            }
        }
    }
    public var isTruncated: Bool?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var tasks: [ListTasksResponseBody.Tasks]?

    public var totalCounts: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isTruncated != nil {
            map["IsTruncated"] = self.isTruncated!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tasks != nil {
            var tmp : [Any] = []
            for k in self.tasks! {
                tmp.append(k.toMap())
            }
            map["Tasks"] = tmp
        }
        if self.totalCounts != nil {
            map["TotalCounts"] = self.totalCounts!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsTruncated") {
            self.isTruncated = dict["IsTruncated"] as! Bool
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Tasks") {
            var tmp : [ListTasksResponseBody.Tasks] = []
            for v in dict["Tasks"] as! [Any] {
                var model = ListTasksResponseBody.Tasks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tasks = tmp
        }
        if dict.keys.contains("TotalCounts") {
            self.totalCounts = dict["TotalCounts"] as! Int32
        }
    }
}

public class ListTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTasksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUserProvisioningEventsRequest : Tea.TeaModel {
    public var directoryId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var userProvisioningId: String?

    public override init() {
        super.init()
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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.userProvisioningId != nil {
            map["UserProvisioningId"] = self.userProvisioningId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("UserProvisioningId") {
            self.userProvisioningId = dict["UserProvisioningId"] as! String
        }
    }
}

public class ListUserProvisioningEventsResponseBody : Tea.TeaModel {
    public class UserProvisioningEvents : Tea.TeaModel {
        public var createTime: String?

        public var deletionStrategy: String?

        public var directoryId: String?

        public var duplicationStrategy: String?

        public var errorCount: Int64?

        public var errorInfo: String?

        public var eventId: String?

        public var latestAsyncTime: String?

        public var principalId: String?

        public var principalName: String?

        public var principalType: String?

        public var sourceType: String?

        public var targetId: String?

        public var targetName: String?

        public var targetPath: String?

        public var targetType: String?

        public var updateTime: String?

        public var userProvisioningId: String?

        public override init() {
            super.init()
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
            if self.deletionStrategy != nil {
                map["DeletionStrategy"] = self.deletionStrategy!
            }
            if self.directoryId != nil {
                map["DirectoryId"] = self.directoryId!
            }
            if self.duplicationStrategy != nil {
                map["DuplicationStrategy"] = self.duplicationStrategy!
            }
            if self.errorCount != nil {
                map["ErrorCount"] = self.errorCount!
            }
            if self.errorInfo != nil {
                map["ErrorInfo"] = self.errorInfo!
            }
            if self.eventId != nil {
                map["EventId"] = self.eventId!
            }
            if self.latestAsyncTime != nil {
                map["LatestAsyncTime"] = self.latestAsyncTime!
            }
            if self.principalId != nil {
                map["PrincipalId"] = self.principalId!
            }
            if self.principalName != nil {
                map["PrincipalName"] = self.principalName!
            }
            if self.principalType != nil {
                map["PrincipalType"] = self.principalType!
            }
            if self.sourceType != nil {
                map["SourceType"] = self.sourceType!
            }
            if self.targetId != nil {
                map["TargetId"] = self.targetId!
            }
            if self.targetName != nil {
                map["TargetName"] = self.targetName!
            }
            if self.targetPath != nil {
                map["TargetPath"] = self.targetPath!
            }
            if self.targetType != nil {
                map["TargetType"] = self.targetType!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.userProvisioningId != nil {
                map["UserProvisioningId"] = self.userProvisioningId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DeletionStrategy") {
                self.deletionStrategy = dict["DeletionStrategy"] as! String
            }
            if dict.keys.contains("DirectoryId") {
                self.directoryId = dict["DirectoryId"] as! String
            }
            if dict.keys.contains("DuplicationStrategy") {
                self.duplicationStrategy = dict["DuplicationStrategy"] as! String
            }
            if dict.keys.contains("ErrorCount") {
                self.errorCount = dict["ErrorCount"] as! Int64
            }
            if dict.keys.contains("ErrorInfo") {
                self.errorInfo = dict["ErrorInfo"] as! String
            }
            if dict.keys.contains("EventId") {
                self.eventId = dict["EventId"] as! String
            }
            if dict.keys.contains("LatestAsyncTime") {
                self.latestAsyncTime = dict["LatestAsyncTime"] as! String
            }
            if dict.keys.contains("PrincipalId") {
                self.principalId = dict["PrincipalId"] as! String
            }
            if dict.keys.contains("PrincipalName") {
                self.principalName = dict["PrincipalName"] as! String
            }
            if dict.keys.contains("PrincipalType") {
                self.principalType = dict["PrincipalType"] as! String
            }
            if dict.keys.contains("SourceType") {
                self.sourceType = dict["SourceType"] as! String
            }
            if dict.keys.contains("TargetId") {
                self.targetId = dict["TargetId"] as! String
            }
            if dict.keys.contains("TargetName") {
                self.targetName = dict["TargetName"] as! String
            }
            if dict.keys.contains("TargetPath") {
                self.targetPath = dict["TargetPath"] as! String
            }
            if dict.keys.contains("TargetType") {
                self.targetType = dict["TargetType"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("UserProvisioningId") {
                self.userProvisioningId = dict["UserProvisioningId"] as! String
            }
        }
    }
    public var isTruncated: Bool?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var totalCounts: Int32?

    public var userProvisioningEvents: [ListUserProvisioningEventsResponseBody.UserProvisioningEvents]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isTruncated != nil {
            map["IsTruncated"] = self.isTruncated!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCounts != nil {
            map["TotalCounts"] = self.totalCounts!
        }
        if self.userProvisioningEvents != nil {
            var tmp : [Any] = []
            for k in self.userProvisioningEvents! {
                tmp.append(k.toMap())
            }
            map["UserProvisioningEvents"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsTruncated") {
            self.isTruncated = dict["IsTruncated"] as! Bool
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCounts") {
            self.totalCounts = dict["TotalCounts"] as! Int32
        }
        if dict.keys.contains("UserProvisioningEvents") {
            var tmp : [ListUserProvisioningEventsResponseBody.UserProvisioningEvents] = []
            for v in dict["UserProvisioningEvents"] as! [Any] {
                var model = ListUserProvisioningEventsResponseBody.UserProvisioningEvents()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.userProvisioningEvents = tmp
        }
    }
}

public class ListUserProvisioningEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUserProvisioningEventsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListUserProvisioningEventsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUserProvisioningsRequest : Tea.TeaModel {
    public var directoryId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var principalId: String?

    public var principalType: String?

    public var targetId: String?

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
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.principalId != nil {
            map["PrincipalId"] = self.principalId!
        }
        if self.principalType != nil {
            map["PrincipalType"] = self.principalType!
        }
        if self.targetId != nil {
            map["TargetId"] = self.targetId!
        }
        if self.targetType != nil {
            map["TargetType"] = self.targetType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("PrincipalId") {
            self.principalId = dict["PrincipalId"] as! String
        }
        if dict.keys.contains("PrincipalType") {
            self.principalType = dict["PrincipalType"] as! String
        }
        if dict.keys.contains("TargetId") {
            self.targetId = dict["TargetId"] as! String
        }
        if dict.keys.contains("TargetType") {
            self.targetType = dict["TargetType"] as! String
        }
    }
}

public class ListUserProvisioningsResponseBody : Tea.TeaModel {
    public class UserProvisionings : Tea.TeaModel {
        public var createTime: String?

        public var deletionStrategy: String?

        public var description_: String?

        public var directoryId: String?

        public var duplicationStrategy: String?

        public var ownerPk: String?

        public var principalId: String?

        public var principalName: String?

        public var principalType: String?

        public var status: String?

        public var targetId: String?

        public var targetName: String?

        public var targetPath: String?

        public var targetType: String?

        public var updateTime: String?

        public var userProvisioningId: String?

        public override init() {
            super.init()
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
            if self.deletionStrategy != nil {
                map["DeletionStrategy"] = self.deletionStrategy!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.directoryId != nil {
                map["DirectoryId"] = self.directoryId!
            }
            if self.duplicationStrategy != nil {
                map["DuplicationStrategy"] = self.duplicationStrategy!
            }
            if self.ownerPk != nil {
                map["OwnerPk"] = self.ownerPk!
            }
            if self.principalId != nil {
                map["PrincipalId"] = self.principalId!
            }
            if self.principalName != nil {
                map["PrincipalName"] = self.principalName!
            }
            if self.principalType != nil {
                map["PrincipalType"] = self.principalType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.targetId != nil {
                map["TargetId"] = self.targetId!
            }
            if self.targetName != nil {
                map["TargetName"] = self.targetName!
            }
            if self.targetPath != nil {
                map["TargetPath"] = self.targetPath!
            }
            if self.targetType != nil {
                map["TargetType"] = self.targetType!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.userProvisioningId != nil {
                map["UserProvisioningId"] = self.userProvisioningId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DeletionStrategy") {
                self.deletionStrategy = dict["DeletionStrategy"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DirectoryId") {
                self.directoryId = dict["DirectoryId"] as! String
            }
            if dict.keys.contains("DuplicationStrategy") {
                self.duplicationStrategy = dict["DuplicationStrategy"] as! String
            }
            if dict.keys.contains("OwnerPk") {
                self.ownerPk = dict["OwnerPk"] as! String
            }
            if dict.keys.contains("PrincipalId") {
                self.principalId = dict["PrincipalId"] as! String
            }
            if dict.keys.contains("PrincipalName") {
                self.principalName = dict["PrincipalName"] as! String
            }
            if dict.keys.contains("PrincipalType") {
                self.principalType = dict["PrincipalType"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TargetId") {
                self.targetId = dict["TargetId"] as! String
            }
            if dict.keys.contains("TargetName") {
                self.targetName = dict["TargetName"] as! String
            }
            if dict.keys.contains("TargetPath") {
                self.targetPath = dict["TargetPath"] as! String
            }
            if dict.keys.contains("TargetType") {
                self.targetType = dict["TargetType"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("UserProvisioningId") {
                self.userProvisioningId = dict["UserProvisioningId"] as! String
            }
        }
    }
    public var isTruncated: Bool?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var totalCounts: Int32?

    public var userProvisionings: [ListUserProvisioningsResponseBody.UserProvisionings]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isTruncated != nil {
            map["IsTruncated"] = self.isTruncated!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCounts != nil {
            map["TotalCounts"] = self.totalCounts!
        }
        if self.userProvisionings != nil {
            var tmp : [Any] = []
            for k in self.userProvisionings! {
                tmp.append(k.toMap())
            }
            map["UserProvisionings"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsTruncated") {
            self.isTruncated = dict["IsTruncated"] as! Bool
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCounts") {
            self.totalCounts = dict["TotalCounts"] as! Int32
        }
        if dict.keys.contains("UserProvisionings") {
            var tmp : [ListUserProvisioningsResponseBody.UserProvisionings] = []
            for v in dict["UserProvisionings"] as! [Any] {
                var model = ListUserProvisioningsResponseBody.UserProvisionings()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.userProvisionings = tmp
        }
    }
}

public class ListUserProvisioningsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUserProvisioningsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListUserProvisioningsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUsersRequest : Tea.TeaModel {
    public var directoryId: String?

    public var filter: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var provisionType: String?

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
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.provisionType != nil {
            map["ProvisionType"] = self.provisionType!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("Filter") {
            self.filter = dict["Filter"] as! String
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("ProvisionType") {
            self.provisionType = dict["ProvisionType"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class ListUsersResponseBody : Tea.TeaModel {
    public class Users : Tea.TeaModel {
        public class ExternalId : Tea.TeaModel {
            public var id: String?

            public var issuer: String?

            public override init() {
                super.init()
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
                if self.issuer != nil {
                    map["Issuer"] = self.issuer!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Issuer") {
                    self.issuer = dict["Issuer"] as! String
                }
            }
        }
        public var createTime: String?

        public var description_: String?

        public var displayName: String?

        public var email: String?

        public var externalId: ListUsersResponseBody.Users.ExternalId?

        public var firstName: String?

        public var lastName: String?

        public var provisionType: String?

        public var status: String?

        public var updateTime: String?

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
            try self.externalId?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.externalId != nil {
                map["ExternalId"] = self.externalId?.toMap()
            }
            if self.firstName != nil {
                map["FirstName"] = self.firstName!
            }
            if self.lastName != nil {
                map["LastName"] = self.lastName!
            }
            if self.provisionType != nil {
                map["ProvisionType"] = self.provisionType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
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
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DisplayName") {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("Email") {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("ExternalId") {
                var model = ListUsersResponseBody.Users.ExternalId()
                model.fromMap(dict["ExternalId"] as! [String: Any])
                self.externalId = model
            }
            if dict.keys.contains("FirstName") {
                self.firstName = dict["FirstName"] as! String
            }
            if dict.keys.contains("LastName") {
                self.lastName = dict["LastName"] as! String
            }
            if dict.keys.contains("ProvisionType") {
                self.provisionType = dict["ProvisionType"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
            if dict.keys.contains("UserName") {
                self.userName = dict["UserName"] as! String
            }
        }
    }
    public var isTruncated: Bool?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var totalCounts: Int32?

    public var users: [ListUsersResponseBody.Users]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isTruncated != nil {
            map["IsTruncated"] = self.isTruncated!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCounts != nil {
            map["TotalCounts"] = self.totalCounts!
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
        if dict.keys.contains("IsTruncated") {
            self.isTruncated = dict["IsTruncated"] as! Bool
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCounts") {
            self.totalCounts = dict["TotalCounts"] as! Int32
        }
        if dict.keys.contains("Users") {
            var tmp : [ListUsersResponseBody.Users] = []
            for v in dict["Users"] as! [Any] {
                var model = ListUsersResponseBody.Users()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.users = tmp
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

public class ProvisionAccessConfigurationRequest : Tea.TeaModel {
    public var accessConfigurationId: String?

    public var directoryId: String?

    public var targetId: String?

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
        if self.accessConfigurationId != nil {
            map["AccessConfigurationId"] = self.accessConfigurationId!
        }
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.targetId != nil {
            map["TargetId"] = self.targetId!
        }
        if self.targetType != nil {
            map["TargetType"] = self.targetType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessConfigurationId") {
            self.accessConfigurationId = dict["AccessConfigurationId"] as! String
        }
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("TargetId") {
            self.targetId = dict["TargetId"] as! String
        }
        if dict.keys.contains("TargetType") {
            self.targetType = dict["TargetType"] as! String
        }
    }
}

public class ProvisionAccessConfigurationResponseBody : Tea.TeaModel {
    public class Tasks : Tea.TeaModel {
        public var accessConfigurationId: String?

        public var accessConfigurationName: String?

        public var status: String?

        public var targetId: String?

        public var targetName: String?

        public var targetPath: String?

        public var targetPathName: String?

        public var targetType: String?

        public var taskId: String?

        public var taskType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessConfigurationId != nil {
                map["AccessConfigurationId"] = self.accessConfigurationId!
            }
            if self.accessConfigurationName != nil {
                map["AccessConfigurationName"] = self.accessConfigurationName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.targetId != nil {
                map["TargetId"] = self.targetId!
            }
            if self.targetName != nil {
                map["TargetName"] = self.targetName!
            }
            if self.targetPath != nil {
                map["TargetPath"] = self.targetPath!
            }
            if self.targetPathName != nil {
                map["TargetPathName"] = self.targetPathName!
            }
            if self.targetType != nil {
                map["TargetType"] = self.targetType!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskType != nil {
                map["TaskType"] = self.taskType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessConfigurationId") {
                self.accessConfigurationId = dict["AccessConfigurationId"] as! String
            }
            if dict.keys.contains("AccessConfigurationName") {
                self.accessConfigurationName = dict["AccessConfigurationName"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TargetId") {
                self.targetId = dict["TargetId"] as! String
            }
            if dict.keys.contains("TargetName") {
                self.targetName = dict["TargetName"] as! String
            }
            if dict.keys.contains("TargetPath") {
                self.targetPath = dict["TargetPath"] as! String
            }
            if dict.keys.contains("TargetPathName") {
                self.targetPathName = dict["TargetPathName"] as! String
            }
            if dict.keys.contains("TargetType") {
                self.targetType = dict["TargetType"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TaskType") {
                self.taskType = dict["TaskType"] as! String
            }
        }
    }
    public var requestId: String?

    public var tasks: [ProvisionAccessConfigurationResponseBody.Tasks]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tasks != nil {
            var tmp : [Any] = []
            for k in self.tasks! {
                tmp.append(k.toMap())
            }
            map["Tasks"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Tasks") {
            var tmp : [ProvisionAccessConfigurationResponseBody.Tasks] = []
            for v in dict["Tasks"] as! [Any] {
                var model = ProvisionAccessConfigurationResponseBody.Tasks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tasks = tmp
        }
    }
}

public class ProvisionAccessConfigurationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ProvisionAccessConfigurationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ProvisionAccessConfigurationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveExternalSAMLIdPCertificateRequest : Tea.TeaModel {
    public var certificateId: String?

    public var directoryId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certificateId != nil {
            map["CertificateId"] = self.certificateId!
        }
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertificateId") {
            self.certificateId = dict["CertificateId"] as! String
        }
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
    }
}

public class RemoveExternalSAMLIdPCertificateResponseBody : Tea.TeaModel {
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

public class RemoveExternalSAMLIdPCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveExternalSAMLIdPCertificateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = RemoveExternalSAMLIdPCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemovePermissionPolicyFromAccessConfigurationRequest : Tea.TeaModel {
    public var accessConfigurationId: String?

    public var directoryId: String?

    public var permissionPolicyName: String?

    public var permissionPolicyType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessConfigurationId != nil {
            map["AccessConfigurationId"] = self.accessConfigurationId!
        }
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.permissionPolicyName != nil {
            map["PermissionPolicyName"] = self.permissionPolicyName!
        }
        if self.permissionPolicyType != nil {
            map["PermissionPolicyType"] = self.permissionPolicyType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessConfigurationId") {
            self.accessConfigurationId = dict["AccessConfigurationId"] as! String
        }
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("PermissionPolicyName") {
            self.permissionPolicyName = dict["PermissionPolicyName"] as! String
        }
        if dict.keys.contains("PermissionPolicyType") {
            self.permissionPolicyType = dict["PermissionPolicyType"] as! String
        }
    }
}

public class RemovePermissionPolicyFromAccessConfigurationResponseBody : Tea.TeaModel {
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

public class RemovePermissionPolicyFromAccessConfigurationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemovePermissionPolicyFromAccessConfigurationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = RemovePermissionPolicyFromAccessConfigurationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveUserFromGroupRequest : Tea.TeaModel {
    public var directoryId: String?

    public var groupId: String?

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
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
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

public class ResetUserPasswordRequest : Tea.TeaModel {
    public var directoryId: String?

    public var generateRandomPassword: Bool?

    public var password: String?

    public var requirePasswordResetForNextLogin: Bool?

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
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.generateRandomPassword != nil {
            map["GenerateRandomPassword"] = self.generateRandomPassword!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.requirePasswordResetForNextLogin != nil {
            map["RequirePasswordResetForNextLogin"] = self.requirePasswordResetForNextLogin!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("GenerateRandomPassword") {
            self.generateRandomPassword = dict["GenerateRandomPassword"] as! Bool
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("RequirePasswordResetForNextLogin") {
            self.requirePasswordResetForNextLogin = dict["RequirePasswordResetForNextLogin"] as! Bool
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class ResetUserPasswordResponseBody : Tea.TeaModel {
    public var newPassword: String?

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
        if self.newPassword != nil {
            map["NewPassword"] = self.newPassword!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NewPassword") {
            self.newPassword = dict["NewPassword"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

public class RetryUserProvisioningEventRequest : Tea.TeaModel {
    public var directoryId: String?

    public var duplicationStrategy: String?

    public var eventId: String?

    public override init() {
        super.init()
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
        if self.duplicationStrategy != nil {
            map["DuplicationStrategy"] = self.duplicationStrategy!
        }
        if self.eventId != nil {
            map["EventId"] = self.eventId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("DuplicationStrategy") {
            self.duplicationStrategy = dict["DuplicationStrategy"] as! String
        }
        if dict.keys.contains("EventId") {
            self.eventId = dict["EventId"] as! String
        }
    }
}

public class RetryUserProvisioningEventResponseBody : Tea.TeaModel {
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

public class RetryUserProvisioningEventResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RetryUserProvisioningEventResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = RetryUserProvisioningEventResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetExternalSAMLIdentityProviderRequest : Tea.TeaModel {
    public var directoryId: String?

    public var encodedMetadataDocument: String?

    public var entityId: String?

    public var loginUrl: String?

    public var SSOStatus: String?

    public var wantRequestSigned: Bool?

    public var x509Certificate: String?

    public override init() {
        super.init()
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
        if self.encodedMetadataDocument != nil {
            map["EncodedMetadataDocument"] = self.encodedMetadataDocument!
        }
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
        }
        if self.loginUrl != nil {
            map["LoginUrl"] = self.loginUrl!
        }
        if self.SSOStatus != nil {
            map["SSOStatus"] = self.SSOStatus!
        }
        if self.wantRequestSigned != nil {
            map["WantRequestSigned"] = self.wantRequestSigned!
        }
        if self.x509Certificate != nil {
            map["X509Certificate"] = self.x509Certificate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("EncodedMetadataDocument") {
            self.encodedMetadataDocument = dict["EncodedMetadataDocument"] as! String
        }
        if dict.keys.contains("EntityId") {
            self.entityId = dict["EntityId"] as! String
        }
        if dict.keys.contains("LoginUrl") {
            self.loginUrl = dict["LoginUrl"] as! String
        }
        if dict.keys.contains("SSOStatus") {
            self.SSOStatus = dict["SSOStatus"] as! String
        }
        if dict.keys.contains("WantRequestSigned") {
            self.wantRequestSigned = dict["WantRequestSigned"] as! Bool
        }
        if dict.keys.contains("X509Certificate") {
            self.x509Certificate = dict["X509Certificate"] as! String
        }
    }
}

public class SetExternalSAMLIdentityProviderResponseBody : Tea.TeaModel {
    public class SAMLIdentityProviderConfiguration : Tea.TeaModel {
        public var certificateIds: [String]?

        public var createTime: String?

        public var directoryId: String?

        public var encodedMetadataDocument: String?

        public var entityId: String?

        public var loginUrl: String?

        public var SSOStatus: String?

        public var updateTime: String?

        public var wantRequestSigned: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.certificateIds != nil {
                map["CertificateIds"] = self.certificateIds!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.directoryId != nil {
                map["DirectoryId"] = self.directoryId!
            }
            if self.encodedMetadataDocument != nil {
                map["EncodedMetadataDocument"] = self.encodedMetadataDocument!
            }
            if self.entityId != nil {
                map["EntityId"] = self.entityId!
            }
            if self.loginUrl != nil {
                map["LoginUrl"] = self.loginUrl!
            }
            if self.SSOStatus != nil {
                map["SSOStatus"] = self.SSOStatus!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.wantRequestSigned != nil {
                map["WantRequestSigned"] = self.wantRequestSigned!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CertificateIds") {
                self.certificateIds = dict["CertificateIds"] as! [String]
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DirectoryId") {
                self.directoryId = dict["DirectoryId"] as! String
            }
            if dict.keys.contains("EncodedMetadataDocument") {
                self.encodedMetadataDocument = dict["EncodedMetadataDocument"] as! String
            }
            if dict.keys.contains("EntityId") {
                self.entityId = dict["EntityId"] as! String
            }
            if dict.keys.contains("LoginUrl") {
                self.loginUrl = dict["LoginUrl"] as! String
            }
            if dict.keys.contains("SSOStatus") {
                self.SSOStatus = dict["SSOStatus"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("WantRequestSigned") {
                self.wantRequestSigned = dict["WantRequestSigned"] as! Bool
            }
        }
    }
    public var requestId: String?

    public var SAMLIdentityProviderConfiguration: SetExternalSAMLIdentityProviderResponseBody.SAMLIdentityProviderConfiguration?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.SAMLIdentityProviderConfiguration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.SAMLIdentityProviderConfiguration != nil {
            map["SAMLIdentityProviderConfiguration"] = self.SAMLIdentityProviderConfiguration?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SAMLIdentityProviderConfiguration") {
            var model = SetExternalSAMLIdentityProviderResponseBody.SAMLIdentityProviderConfiguration()
            model.fromMap(dict["SAMLIdentityProviderConfiguration"] as! [String: Any])
            self.SAMLIdentityProviderConfiguration = model
        }
    }
}

public class SetExternalSAMLIdentityProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetExternalSAMLIdentityProviderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetExternalSAMLIdentityProviderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetLoginPreferenceRequest : Tea.TeaModel {
    public var directoryId: String?

    public var loginNetworkMasks: String?

    public override init() {
        super.init()
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
        if self.loginNetworkMasks != nil {
            map["LoginNetworkMasks"] = self.loginNetworkMasks!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("LoginNetworkMasks") {
            self.loginNetworkMasks = dict["LoginNetworkMasks"] as! String
        }
    }
}

public class SetLoginPreferenceResponseBody : Tea.TeaModel {
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

public class SetLoginPreferenceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetLoginPreferenceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetLoginPreferenceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetMFAAuthenticationStatusRequest : Tea.TeaModel {
    public var directoryId: String?

    public var MFAAuthenticationStatus: String?

    public override init() {
        super.init()
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
        if self.MFAAuthenticationStatus != nil {
            map["MFAAuthenticationStatus"] = self.MFAAuthenticationStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("MFAAuthenticationStatus") {
            self.MFAAuthenticationStatus = dict["MFAAuthenticationStatus"] as! String
        }
    }
}

public class SetMFAAuthenticationStatusResponseBody : Tea.TeaModel {
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

public class SetMFAAuthenticationStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetMFAAuthenticationStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetMFAAuthenticationStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetPasswordPolicyRequest : Tea.TeaModel {
    public var directoryId: String?

    public var maxLoginAttempts: Int32?

    public var maxPasswordAge: Int32?

    public var minPasswordDifferentChars: Int32?

    public var minPasswordLength: Int32?

    public var passwordNotContainUsername: Bool?

    public var passwordReusePrevention: Int32?

    public override init() {
        super.init()
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
        if self.maxLoginAttempts != nil {
            map["MaxLoginAttempts"] = self.maxLoginAttempts!
        }
        if self.maxPasswordAge != nil {
            map["MaxPasswordAge"] = self.maxPasswordAge!
        }
        if self.minPasswordDifferentChars != nil {
            map["MinPasswordDifferentChars"] = self.minPasswordDifferentChars!
        }
        if self.minPasswordLength != nil {
            map["MinPasswordLength"] = self.minPasswordLength!
        }
        if self.passwordNotContainUsername != nil {
            map["PasswordNotContainUsername"] = self.passwordNotContainUsername!
        }
        if self.passwordReusePrevention != nil {
            map["PasswordReusePrevention"] = self.passwordReusePrevention!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("MaxLoginAttempts") {
            self.maxLoginAttempts = dict["MaxLoginAttempts"] as! Int32
        }
        if dict.keys.contains("MaxPasswordAge") {
            self.maxPasswordAge = dict["MaxPasswordAge"] as! Int32
        }
        if dict.keys.contains("MinPasswordDifferentChars") {
            self.minPasswordDifferentChars = dict["MinPasswordDifferentChars"] as! Int32
        }
        if dict.keys.contains("MinPasswordLength") {
            self.minPasswordLength = dict["MinPasswordLength"] as! Int32
        }
        if dict.keys.contains("PasswordNotContainUsername") {
            self.passwordNotContainUsername = dict["PasswordNotContainUsername"] as! Bool
        }
        if dict.keys.contains("PasswordReusePrevention") {
            self.passwordReusePrevention = dict["PasswordReusePrevention"] as! Int32
        }
    }
}

public class SetPasswordPolicyResponseBody : Tea.TeaModel {
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

public class SetSCIMSynchronizationStatusRequest : Tea.TeaModel {
    public var directoryId: String?

    public var SCIMSynchronizationStatus: String?

    public override init() {
        super.init()
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
        if self.SCIMSynchronizationStatus != nil {
            map["SCIMSynchronizationStatus"] = self.SCIMSynchronizationStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("SCIMSynchronizationStatus") {
            self.SCIMSynchronizationStatus = dict["SCIMSynchronizationStatus"] as! String
        }
    }
}

public class SetSCIMSynchronizationStatusResponseBody : Tea.TeaModel {
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

public class SetSCIMSynchronizationStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetSCIMSynchronizationStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetSCIMSynchronizationStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAccessConfigurationRequest : Tea.TeaModel {
    public var accessConfigurationId: String?

    public var directoryId: String?

    public var newDescription: String?

    public var newRelayState: String?

    public var newSessionDuration: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessConfigurationId != nil {
            map["AccessConfigurationId"] = self.accessConfigurationId!
        }
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.newDescription != nil {
            map["NewDescription"] = self.newDescription!
        }
        if self.newRelayState != nil {
            map["NewRelayState"] = self.newRelayState!
        }
        if self.newSessionDuration != nil {
            map["NewSessionDuration"] = self.newSessionDuration!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessConfigurationId") {
            self.accessConfigurationId = dict["AccessConfigurationId"] as! String
        }
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("NewDescription") {
            self.newDescription = dict["NewDescription"] as! String
        }
        if dict.keys.contains("NewRelayState") {
            self.newRelayState = dict["NewRelayState"] as! String
        }
        if dict.keys.contains("NewSessionDuration") {
            self.newSessionDuration = dict["NewSessionDuration"] as! Int32
        }
    }
}

public class UpdateAccessConfigurationResponseBody : Tea.TeaModel {
    public class AccessConfiguration : Tea.TeaModel {
        public var accessConfigurationId: String?

        public var accessConfigurationName: String?

        public var createTime: String?

        public var description_: String?

        public var relayState: String?

        public var sessionDuration: Int32?

        public var statusNotifications: [String]?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessConfigurationId != nil {
                map["AccessConfigurationId"] = self.accessConfigurationId!
            }
            if self.accessConfigurationName != nil {
                map["AccessConfigurationName"] = self.accessConfigurationName!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.relayState != nil {
                map["RelayState"] = self.relayState!
            }
            if self.sessionDuration != nil {
                map["SessionDuration"] = self.sessionDuration!
            }
            if self.statusNotifications != nil {
                map["StatusNotifications"] = self.statusNotifications!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessConfigurationId") {
                self.accessConfigurationId = dict["AccessConfigurationId"] as! String
            }
            if dict.keys.contains("AccessConfigurationName") {
                self.accessConfigurationName = dict["AccessConfigurationName"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("RelayState") {
                self.relayState = dict["RelayState"] as! String
            }
            if dict.keys.contains("SessionDuration") {
                self.sessionDuration = dict["SessionDuration"] as! Int32
            }
            if dict.keys.contains("StatusNotifications") {
                self.statusNotifications = dict["StatusNotifications"] as! [String]
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var accessConfiguration: UpdateAccessConfigurationResponseBody.AccessConfiguration?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accessConfiguration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessConfiguration != nil {
            map["AccessConfiguration"] = self.accessConfiguration?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessConfiguration") {
            var model = UpdateAccessConfigurationResponseBody.AccessConfiguration()
            model.fromMap(dict["AccessConfiguration"] as! [String: Any])
            self.accessConfiguration = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateAccessConfigurationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAccessConfigurationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateAccessConfigurationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateDirectoryRequest : Tea.TeaModel {
    public var directoryId: String?

    public var newDirectoryName: String?

    public override init() {
        super.init()
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
        if self.newDirectoryName != nil {
            map["NewDirectoryName"] = self.newDirectoryName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("NewDirectoryName") {
            self.newDirectoryName = dict["NewDirectoryName"] as! String
        }
    }
}

public class UpdateDirectoryResponseBody : Tea.TeaModel {
    public class Directory : Tea.TeaModel {
        public var createTime: String?

        public var directoryId: String?

        public var directoryName: String?

        public var region: String?

        public var updateTime: String?

        public override init() {
            super.init()
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
            if self.directoryId != nil {
                map["DirectoryId"] = self.directoryId!
            }
            if self.directoryName != nil {
                map["DirectoryName"] = self.directoryName!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DirectoryId") {
                self.directoryId = dict["DirectoryId"] as! String
            }
            if dict.keys.contains("DirectoryName") {
                self.directoryName = dict["DirectoryName"] as! String
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var directory: UpdateDirectoryResponseBody.Directory?

    public var requestId: String?

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
        if self.directory != nil {
            map["Directory"] = self.directory?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Directory") {
            var model = UpdateDirectoryResponseBody.Directory()
            model.fromMap(dict["Directory"] as! [String: Any])
            self.directory = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateDirectoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDirectoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateDirectoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateGroupRequest : Tea.TeaModel {
    public var directoryId: String?

    public var groupId: String?

    public var newDescription: String?

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
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.newDescription != nil {
            map["NewDescription"] = self.newDescription!
        }
        if self.newGroupName != nil {
            map["NewGroupName"] = self.newGroupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("NewDescription") {
            self.newDescription = dict["NewDescription"] as! String
        }
        if dict.keys.contains("NewGroupName") {
            self.newGroupName = dict["NewGroupName"] as! String
        }
    }
}

public class UpdateGroupResponseBody : Tea.TeaModel {
    public class Group : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var groupId: String?

        public var groupName: String?

        public var provisionType: String?

        public var updateTime: String?

        public override init() {
            super.init()
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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.provisionType != nil {
                map["ProvisionType"] = self.provisionType!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
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
            if dict.keys.contains("GroupId") {
                self.groupId = dict["GroupId"] as! String
            }
            if dict.keys.contains("GroupName") {
                self.groupName = dict["GroupName"] as! String
            }
            if dict.keys.contains("ProvisionType") {
                self.provisionType = dict["ProvisionType"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
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

public class UpdateInlinePolicyForAccessConfigurationRequest : Tea.TeaModel {
    public var accessConfigurationId: String?

    public var directoryId: String?

    public var inlinePolicyName: String?

    public var newInlinePolicyDocument: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessConfigurationId != nil {
            map["AccessConfigurationId"] = self.accessConfigurationId!
        }
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.inlinePolicyName != nil {
            map["InlinePolicyName"] = self.inlinePolicyName!
        }
        if self.newInlinePolicyDocument != nil {
            map["NewInlinePolicyDocument"] = self.newInlinePolicyDocument!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessConfigurationId") {
            self.accessConfigurationId = dict["AccessConfigurationId"] as! String
        }
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("InlinePolicyName") {
            self.inlinePolicyName = dict["InlinePolicyName"] as! String
        }
        if dict.keys.contains("NewInlinePolicyDocument") {
            self.newInlinePolicyDocument = dict["NewInlinePolicyDocument"] as! String
        }
    }
}

public class UpdateInlinePolicyForAccessConfigurationResponseBody : Tea.TeaModel {
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

public class UpdateInlinePolicyForAccessConfigurationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateInlinePolicyForAccessConfigurationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateInlinePolicyForAccessConfigurationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateMFAAuthenticationSettingsRequest : Tea.TeaModel {
    public var directoryId: String?

    public var MFAAuthenticationSettings: String?

    public var operationForRiskLogin: String?

    public override init() {
        super.init()
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
        if self.MFAAuthenticationSettings != nil {
            map["MFAAuthenticationSettings"] = self.MFAAuthenticationSettings!
        }
        if self.operationForRiskLogin != nil {
            map["OperationForRiskLogin"] = self.operationForRiskLogin!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("MFAAuthenticationSettings") {
            self.MFAAuthenticationSettings = dict["MFAAuthenticationSettings"] as! String
        }
        if dict.keys.contains("OperationForRiskLogin") {
            self.operationForRiskLogin = dict["OperationForRiskLogin"] as! String
        }
    }
}

public class UpdateMFAAuthenticationSettingsResponseBody : Tea.TeaModel {
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

public class UpdateMFAAuthenticationSettingsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateMFAAuthenticationSettingsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateMFAAuthenticationSettingsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateSCIMServerCredentialStatusRequest : Tea.TeaModel {
    public var credentialId: String?

    public var directoryId: String?

    public var newStatus: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.credentialId != nil {
            map["CredentialId"] = self.credentialId!
        }
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.newStatus != nil {
            map["NewStatus"] = self.newStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CredentialId") {
            self.credentialId = dict["CredentialId"] as! String
        }
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("NewStatus") {
            self.newStatus = dict["NewStatus"] as! String
        }
    }
}

public class UpdateSCIMServerCredentialStatusResponseBody : Tea.TeaModel {
    public class SCIMServerCredential : Tea.TeaModel {
        public var createTime: String?

        public var credentialId: String?

        public var credentialType: String?

        public var directoryId: String?

        public var expireTime: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.credentialId != nil {
                map["CredentialId"] = self.credentialId!
            }
            if self.credentialType != nil {
                map["CredentialType"] = self.credentialType!
            }
            if self.directoryId != nil {
                map["DirectoryId"] = self.directoryId!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CredentialId") {
                self.credentialId = dict["CredentialId"] as! String
            }
            if dict.keys.contains("CredentialType") {
                self.credentialType = dict["CredentialType"] as! String
            }
            if dict.keys.contains("DirectoryId") {
                self.directoryId = dict["DirectoryId"] as! String
            }
            if dict.keys.contains("ExpireTime") {
                self.expireTime = dict["ExpireTime"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var requestId: String?

    public var SCIMServerCredential: UpdateSCIMServerCredentialStatusResponseBody.SCIMServerCredential?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.SCIMServerCredential?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.SCIMServerCredential != nil {
            map["SCIMServerCredential"] = self.SCIMServerCredential?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SCIMServerCredential") {
            var model = UpdateSCIMServerCredentialStatusResponseBody.SCIMServerCredential()
            model.fromMap(dict["SCIMServerCredential"] as! [String: Any])
            self.SCIMServerCredential = model
        }
    }
}

public class UpdateSCIMServerCredentialStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSCIMServerCredentialStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateSCIMServerCredentialStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateUserRequest : Tea.TeaModel {
    public var directoryId: String?

    public var newDescription: String?

    public var newDisplayName: String?

    public var newEmail: String?

    public var newFirstName: String?

    public var newLastName: String?

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
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.newDescription != nil {
            map["NewDescription"] = self.newDescription!
        }
        if self.newDisplayName != nil {
            map["NewDisplayName"] = self.newDisplayName!
        }
        if self.newEmail != nil {
            map["NewEmail"] = self.newEmail!
        }
        if self.newFirstName != nil {
            map["NewFirstName"] = self.newFirstName!
        }
        if self.newLastName != nil {
            map["NewLastName"] = self.newLastName!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("NewDescription") {
            self.newDescription = dict["NewDescription"] as! String
        }
        if dict.keys.contains("NewDisplayName") {
            self.newDisplayName = dict["NewDisplayName"] as! String
        }
        if dict.keys.contains("NewEmail") {
            self.newEmail = dict["NewEmail"] as! String
        }
        if dict.keys.contains("NewFirstName") {
            self.newFirstName = dict["NewFirstName"] as! String
        }
        if dict.keys.contains("NewLastName") {
            self.newLastName = dict["NewLastName"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class UpdateUserResponseBody : Tea.TeaModel {
    public class User : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var displayName: String?

        public var email: String?

        public var firstName: String?

        public var lastName: String?

        public var provisionType: String?

        public var status: String?

        public var updateTime: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.firstName != nil {
                map["FirstName"] = self.firstName!
            }
            if self.lastName != nil {
                map["LastName"] = self.lastName!
            }
            if self.provisionType != nil {
                map["ProvisionType"] = self.provisionType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
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
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DisplayName") {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("Email") {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("FirstName") {
                self.firstName = dict["FirstName"] as! String
            }
            if dict.keys.contains("LastName") {
                self.lastName = dict["LastName"] as! String
            }
            if dict.keys.contains("ProvisionType") {
                self.provisionType = dict["ProvisionType"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
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

public class UpdateUserMFAAuthenticationSettingsRequest : Tea.TeaModel {
    public var directoryId: String?

    public var userId: String?

    public var userMFAAuthenticationSettings: String?

    public override init() {
        super.init()
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
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.userMFAAuthenticationSettings != nil {
            map["UserMFAAuthenticationSettings"] = self.userMFAAuthenticationSettings!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("UserMFAAuthenticationSettings") {
            self.userMFAAuthenticationSettings = dict["UserMFAAuthenticationSettings"] as! String
        }
    }
}

public class UpdateUserMFAAuthenticationSettingsResponseBody : Tea.TeaModel {
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

public class UpdateUserMFAAuthenticationSettingsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateUserMFAAuthenticationSettingsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateUserMFAAuthenticationSettingsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateUserProvisioningRequest : Tea.TeaModel {
    public var directoryId: String?

    public var newDeletionStrategy: String?

    public var newDescription: String?

    public var newDuplicationStrategy: String?

    public var userProvisioningId: String?

    public override init() {
        super.init()
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
        if self.newDeletionStrategy != nil {
            map["NewDeletionStrategy"] = self.newDeletionStrategy!
        }
        if self.newDescription != nil {
            map["NewDescription"] = self.newDescription!
        }
        if self.newDuplicationStrategy != nil {
            map["NewDuplicationStrategy"] = self.newDuplicationStrategy!
        }
        if self.userProvisioningId != nil {
            map["UserProvisioningId"] = self.userProvisioningId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("NewDeletionStrategy") {
            self.newDeletionStrategy = dict["NewDeletionStrategy"] as! String
        }
        if dict.keys.contains("NewDescription") {
            self.newDescription = dict["NewDescription"] as! String
        }
        if dict.keys.contains("NewDuplicationStrategy") {
            self.newDuplicationStrategy = dict["NewDuplicationStrategy"] as! String
        }
        if dict.keys.contains("UserProvisioningId") {
            self.userProvisioningId = dict["UserProvisioningId"] as! String
        }
    }
}

public class UpdateUserProvisioningResponseBody : Tea.TeaModel {
    public class UserProvisioning : Tea.TeaModel {
        public var createTime: String?

        public var deletionStrategy: String?

        public var description_: String?

        public var directoryId: String?

        public var duplicationStrategy: String?

        public var ownerPk: String?

        public var principalId: String?

        public var principalName: String?

        public var principalType: String?

        public var status: String?

        public var targetId: String?

        public var targetName: String?

        public var targetPath: String?

        public var targetType: String?

        public var updateTime: String?

        public var userProvisioningId: String?

        public override init() {
            super.init()
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
            if self.deletionStrategy != nil {
                map["DeletionStrategy"] = self.deletionStrategy!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.directoryId != nil {
                map["DirectoryId"] = self.directoryId!
            }
            if self.duplicationStrategy != nil {
                map["DuplicationStrategy"] = self.duplicationStrategy!
            }
            if self.ownerPk != nil {
                map["OwnerPk"] = self.ownerPk!
            }
            if self.principalId != nil {
                map["PrincipalId"] = self.principalId!
            }
            if self.principalName != nil {
                map["PrincipalName"] = self.principalName!
            }
            if self.principalType != nil {
                map["PrincipalType"] = self.principalType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.targetId != nil {
                map["TargetId"] = self.targetId!
            }
            if self.targetName != nil {
                map["TargetName"] = self.targetName!
            }
            if self.targetPath != nil {
                map["TargetPath"] = self.targetPath!
            }
            if self.targetType != nil {
                map["TargetType"] = self.targetType!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.userProvisioningId != nil {
                map["UserProvisioningId"] = self.userProvisioningId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DeletionStrategy") {
                self.deletionStrategy = dict["DeletionStrategy"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DirectoryId") {
                self.directoryId = dict["DirectoryId"] as! String
            }
            if dict.keys.contains("DuplicationStrategy") {
                self.duplicationStrategy = dict["DuplicationStrategy"] as! String
            }
            if dict.keys.contains("OwnerPk") {
                self.ownerPk = dict["OwnerPk"] as! String
            }
            if dict.keys.contains("PrincipalId") {
                self.principalId = dict["PrincipalId"] as! String
            }
            if dict.keys.contains("PrincipalName") {
                self.principalName = dict["PrincipalName"] as! String
            }
            if dict.keys.contains("PrincipalType") {
                self.principalType = dict["PrincipalType"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TargetId") {
                self.targetId = dict["TargetId"] as! String
            }
            if dict.keys.contains("TargetName") {
                self.targetName = dict["TargetName"] as! String
            }
            if dict.keys.contains("TargetPath") {
                self.targetPath = dict["TargetPath"] as! String
            }
            if dict.keys.contains("TargetType") {
                self.targetType = dict["TargetType"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("UserProvisioningId") {
                self.userProvisioningId = dict["UserProvisioningId"] as! String
            }
        }
    }
    public var requestId: String?

    public var userProvisioning: UpdateUserProvisioningResponseBody.UserProvisioning?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.userProvisioning?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.userProvisioning != nil {
            map["UserProvisioning"] = self.userProvisioning?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UserProvisioning") {
            var model = UpdateUserProvisioningResponseBody.UserProvisioning()
            model.fromMap(dict["UserProvisioning"] as! [String: Any])
            self.userProvisioning = model
        }
    }
}

public class UpdateUserProvisioningResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateUserProvisioningResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateUserProvisioningResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateUserProvisioningConfigurationRequest : Tea.TeaModel {
    public var directoryId: String?

    public var newDefaultLandingPage: String?

    public var newSessionDuration: Int32?

    public override init() {
        super.init()
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
        if self.newDefaultLandingPage != nil {
            map["NewDefaultLandingPage"] = self.newDefaultLandingPage!
        }
        if self.newSessionDuration != nil {
            map["NewSessionDuration"] = self.newSessionDuration!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("NewDefaultLandingPage") {
            self.newDefaultLandingPage = dict["NewDefaultLandingPage"] as! String
        }
        if dict.keys.contains("NewSessionDuration") {
            self.newSessionDuration = dict["NewSessionDuration"] as! Int32
        }
    }
}

public class UpdateUserProvisioningConfigurationResponseBody : Tea.TeaModel {
    public class UserProvisioningConfiguration : Tea.TeaModel {
        public var createTime: String?

        public var defaultLandingPage: String?

        public var directoryId: String?

        public var sessionDuration: Int32?

        public var updateTime: String?

        public override init() {
            super.init()
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
            if self.defaultLandingPage != nil {
                map["DefaultLandingPage"] = self.defaultLandingPage!
            }
            if self.directoryId != nil {
                map["DirectoryId"] = self.directoryId!
            }
            if self.sessionDuration != nil {
                map["SessionDuration"] = self.sessionDuration!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DefaultLandingPage") {
                self.defaultLandingPage = dict["DefaultLandingPage"] as! String
            }
            if dict.keys.contains("DirectoryId") {
                self.directoryId = dict["DirectoryId"] as! String
            }
            if dict.keys.contains("SessionDuration") {
                self.sessionDuration = dict["SessionDuration"] as! Int32
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var requestId: String?

    public var userProvisioningConfiguration: UpdateUserProvisioningConfigurationResponseBody.UserProvisioningConfiguration?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.userProvisioningConfiguration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.userProvisioningConfiguration != nil {
            map["UserProvisioningConfiguration"] = self.userProvisioningConfiguration?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UserProvisioningConfiguration") {
            var model = UpdateUserProvisioningConfigurationResponseBody.UserProvisioningConfiguration()
            model.fromMap(dict["UserProvisioningConfiguration"] as! [String: Any])
            self.userProvisioningConfiguration = model
        }
    }
}

public class UpdateUserProvisioningConfigurationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateUserProvisioningConfigurationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateUserProvisioningConfigurationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateUserStatusRequest : Tea.TeaModel {
    public var directoryId: String?

    public var newStatus: String?

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
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.newStatus != nil {
            map["NewStatus"] = self.newStatus!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("NewStatus") {
            self.newStatus = dict["NewStatus"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class UpdateUserStatusResponseBody : Tea.TeaModel {
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

public class UpdateUserStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateUserStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UpdateUserStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
