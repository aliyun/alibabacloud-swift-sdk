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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["X509Certificate"] as? String {
            self.x509Certificate = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertificateId"] as? String {
            self.certificateId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddExternalSAMLIdPCertificateResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessConfigurationId"] as? String {
            self.accessConfigurationId = value
        }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["InlinePolicyDocument"] as? String {
            self.inlinePolicyDocument = value
        }
        if let value = dict["PermissionPolicyName"] as? String {
            self.permissionPolicyName = value
        }
        if let value = dict["PermissionPolicyType"] as? String {
            self.permissionPolicyType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddPermissionPolicyToAccessConfigurationResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ClearExternalSAMLIdentityProviderResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessConfigurationId"] as? String {
            self.accessConfigurationId = value
        }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["PrincipalId"] as? String {
            self.principalId = value
        }
        if let value = dict["PrincipalType"] as? String {
            self.principalType = value
        }
        if let value = dict["TargetId"] as? String {
            self.targetId = value
        }
        if let value = dict["TargetType"] as? String {
            self.targetType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessConfigurationId"] as? String {
                self.accessConfigurationId = value
            }
            if let value = dict["AccessConfigurationName"] as? String {
                self.accessConfigurationName = value
            }
            if let value = dict["PrincipalId"] as? String {
                self.principalId = value
            }
            if let value = dict["PrincipalName"] as? String {
                self.principalName = value
            }
            if let value = dict["PrincipalType"] as? String {
                self.principalType = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TargetId"] as? String {
                self.targetId = value
            }
            if let value = dict["TargetName"] as? String {
                self.targetName = value
            }
            if let value = dict["TargetPath"] as? String {
                self.targetPath = value
            }
            if let value = dict["TargetPathName"] as? String {
                self.targetPathName = value
            }
            if let value = dict["TargetType"] as? String {
                self.targetType = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["TaskType"] as? String {
                self.taskType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Task"] as? [String: Any?] {
            var model = CreateAccessAssignmentResponseBody.Task()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateAccessAssignmentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAccessConfigurationRequest : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
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
    public var accessConfigurationName: String?

    public var description_: String?

    public var directoryId: String?

    public var relayState: String?

    public var sessionDuration: Int32?

    public var tags: [CreateAccessConfigurationRequest.Tags]?

    public override init() {
        super.init()
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
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessConfigurationName"] as? String {
            self.accessConfigurationName = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["RelayState"] as? String {
            self.relayState = value
        }
        if let value = dict["SessionDuration"] as? Int32 {
            self.sessionDuration = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [CreateAccessConfigurationRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = CreateAccessConfigurationRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
    }
}

public class CreateAccessConfigurationResponseBody : Tea.TeaModel {
    public class AccessConfiguration : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
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
        public var accessConfigurationId: String?

        public var accessConfigurationName: String?

        public var createTime: String?

        public var description_: String?

        public var relayState: String?

        public var sessionDuration: Int32?

        public var statusNotifications: [String]?

        public var tags: [CreateAccessConfigurationResponseBody.AccessConfiguration.Tags]?

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
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessConfigurationId"] as? String {
                self.accessConfigurationId = value
            }
            if let value = dict["AccessConfigurationName"] as? String {
                self.accessConfigurationName = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["RelayState"] as? String {
                self.relayState = value
            }
            if let value = dict["SessionDuration"] as? Int32 {
                self.sessionDuration = value
            }
            if let value = dict["StatusNotifications"] as? [String] {
                self.statusNotifications = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [CreateAccessConfigurationResponseBody.AccessConfiguration.Tags] = []
                for v in value {
                    if v != nil {
                        var model = CreateAccessConfigurationResponseBody.AccessConfiguration.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessConfiguration"] as? [String: Any?] {
            var model = CreateAccessConfigurationResponseBody.AccessConfiguration()
            model.fromMap(value)
            self.accessConfiguration = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateAccessConfigurationResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryName"] as? String {
            self.directoryName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DirectoryId"] as? String {
                self.directoryId = value
            }
            if let value = dict["DirectoryName"] as? String {
                self.directoryName = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Directory"] as? [String: Any?] {
            var model = CreateDirectoryResponseBody.Directory()
            model.fromMap(value)
            self.directory = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateDirectoryResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["GroupId"] as? String {
                self.groupId = value
            }
            if let value = dict["GroupName"] as? String {
                self.groupName = value
            }
            if let value = dict["ProvisionType"] as? String {
                self.provisionType = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["CredentialId"] as? String {
                self.credentialId = value
            }
            if let value = dict["CredentialSecret"] as? String {
                self.credentialSecret = value
            }
            if let value = dict["CredentialType"] as? String {
                self.credentialType = value
            }
            if let value = dict["DirectoryId"] as? String {
                self.directoryId = value
            }
            if let value = dict["ExpireTime"] as? String {
                self.expireTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SCIMServerCredential"] as? [String: Any?] {
            var model = CreateSCIMServerCredentialResponseBody.SCIMServerCredential()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateSCIMServerCredentialResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateUserRequest : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
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

    public var directoryId: String?

    public var displayName: String?

    public var email: String?

    public var firstName: String?

    public var lastName: String?

    public var status: String?

    public var tags: [CreateUserRequest.Tags]?

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
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["FirstName"] as? String {
            self.firstName = value
        }
        if let value = dict["LastName"] as? String {
            self.lastName = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [CreateUserRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = CreateUserRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
    }
}

public class CreateUserResponseBody : Tea.TeaModel {
    public class User : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
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
        public var createTime: String?

        public var description_: String?

        public var displayName: String?

        public var email: String?

        public var firstName: String?

        public var lastName: String?

        public var provisionType: String?

        public var status: String?

        public var tags: [CreateUserResponseBody.User.Tags]?

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
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["FirstName"] as? String {
                self.firstName = value
            }
            if let value = dict["LastName"] as? String {
                self.lastName = value
            }
            if let value = dict["ProvisionType"] as? String {
                self.provisionType = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [CreateUserResponseBody.User.Tags] = []
                for v in value {
                    if v != nil {
                        var model = CreateUserResponseBody.User.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeletionStrategy"] as? String {
            self.deletionStrategy = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["DuplicationStrategy"] as? String {
            self.duplicationStrategy = value
        }
        if let value = dict["PrincipalId"] as? String {
            self.principalId = value
        }
        if let value = dict["PrincipalType"] as? String {
            self.principalType = value
        }
        if let value = dict["TargetId"] as? String {
            self.targetId = value
        }
        if let value = dict["TargetType"] as? String {
            self.targetType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DeletionStrategy"] as? String {
                self.deletionStrategy = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DirectoryId"] as? String {
                self.directoryId = value
            }
            if let value = dict["DuplicationStrategy"] as? String {
                self.duplicationStrategy = value
            }
            if let value = dict["OwnerPk"] as? String {
                self.ownerPk = value
            }
            if let value = dict["PrincipalId"] as? String {
                self.principalId = value
            }
            if let value = dict["PrincipalName"] as? String {
                self.principalName = value
            }
            if let value = dict["PrincipalType"] as? String {
                self.principalType = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TargetId"] as? String {
                self.targetId = value
            }
            if let value = dict["TargetName"] as? String {
                self.targetName = value
            }
            if let value = dict["TargetPath"] as? String {
                self.targetPath = value
            }
            if let value = dict["TargetType"] as? String {
                self.targetType = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["UserProvisioningId"] as? String {
                self.userProvisioningId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UserProvisioning"] as? [String: Any?] {
            var model = CreateUserProvisioningResponseBody.UserProvisioning()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateUserProvisioningResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessConfigurationId"] as? String {
            self.accessConfigurationId = value
        }
        if let value = dict["DeprovisionStrategy"] as? String {
            self.deprovisionStrategy = value
        }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["PrincipalId"] as? String {
            self.principalId = value
        }
        if let value = dict["PrincipalType"] as? String {
            self.principalType = value
        }
        if let value = dict["TargetId"] as? String {
            self.targetId = value
        }
        if let value = dict["TargetType"] as? String {
            self.targetType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessConfigurationId"] as? String {
                self.accessConfigurationId = value
            }
            if let value = dict["AccessConfigurationName"] as? String {
                self.accessConfigurationName = value
            }
            if let value = dict["PrincipalId"] as? String {
                self.principalId = value
            }
            if let value = dict["PrincipalName"] as? String {
                self.principalName = value
            }
            if let value = dict["PrincipalType"] as? String {
                self.principalType = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TargetId"] as? String {
                self.targetId = value
            }
            if let value = dict["TargetName"] as? String {
                self.targetName = value
            }
            if let value = dict["TargetPath"] as? String {
                self.targetPath = value
            }
            if let value = dict["TargetPathName"] as? String {
                self.targetPathName = value
            }
            if let value = dict["TargetType"] as? String {
                self.targetType = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["TaskType"] as? String {
                self.taskType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Task"] as? [String: Any?] {
            var model = DeleteAccessAssignmentResponseBody.Task()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteAccessAssignmentResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessConfigurationId"] as? String {
            self.accessConfigurationId = value
        }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["ForceRemovePermissionPolicies"] as? Bool {
            self.forceRemovePermissionPolicies = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteAccessConfigurationResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteDirectoryResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["MFADeviceId"] as? String {
            self.MFADeviceId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteMFADeviceForUserResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CredentialId"] as? String {
            self.credentialId = value
        }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteSCIMServerCredentialResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeletionStrategy"] as? String {
            self.deletionStrategy = value
        }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["UserProvisioningId"] as? String {
            self.userProvisioningId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteUserProvisioningResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["EventId"] as? String {
            self.eventId = value
        }
        if let value = dict["UserProvisioningId"] as? String {
            self.userProvisioningId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteUserProvisioningEventResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessConfigurationId"] as? String {
            self.accessConfigurationId = value
        }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["TargetId"] as? String {
            self.targetId = value
        }
        if let value = dict["TargetType"] as? String {
            self.targetType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessConfigurationId"] as? String {
                self.accessConfigurationId = value
            }
            if let value = dict["AccessConfigurationName"] as? String {
                self.accessConfigurationName = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TargetId"] as? String {
                self.targetId = value
            }
            if let value = dict["TargetName"] as? String {
                self.targetName = value
            }
            if let value = dict["TargetPath"] as? String {
                self.targetPath = value
            }
            if let value = dict["TargetPathName"] as? String {
                self.targetPathName = value
            }
            if let value = dict["TargetType"] as? String {
                self.targetType = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["TaskType"] as? String {
                self.taskType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Tasks"] as? [Any?] {
            var tmp : [DeprovisionAccessConfigurationResponseBody.Tasks] = []
            for v in value {
                if v != nil {
                    var model = DeprovisionAccessConfigurationResponseBody.Tasks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeprovisionAccessConfigurationResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountId"] as? String {
            self.accountId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DisableDelegateAccountResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DisableServiceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountId"] as? String {
            self.accountId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = EnableDelegateAccountResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = EnableServiceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessConfigurationId"] as? String {
            self.accessConfigurationId = value
        }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
    }
}

public class GetAccessConfigurationResponseBody : Tea.TeaModel {
    public class AccessConfiguration : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
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
        public var accessConfigurationId: String?

        public var accessConfigurationName: String?

        public var createTime: String?

        public var description_: String?

        public var relayState: String?

        public var sessionDuration: Int32?

        public var statusNotifications: [String]?

        public var tags: [GetAccessConfigurationResponseBody.AccessConfiguration.Tags]?

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
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessConfigurationId"] as? String {
                self.accessConfigurationId = value
            }
            if let value = dict["AccessConfigurationName"] as? String {
                self.accessConfigurationName = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["RelayState"] as? String {
                self.relayState = value
            }
            if let value = dict["SessionDuration"] as? Int32 {
                self.sessionDuration = value
            }
            if let value = dict["StatusNotifications"] as? [String] {
                self.statusNotifications = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [GetAccessConfigurationResponseBody.AccessConfiguration.Tags] = []
                for v in value {
                    if v != nil {
                        var model = GetAccessConfigurationResponseBody.AccessConfiguration.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessConfiguration"] as? [String: Any?] {
            var model = GetAccessConfigurationResponseBody.AccessConfiguration()
            model.fromMap(value)
            self.accessConfiguration = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetAccessConfigurationResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DirectoryId"] as? String {
                self.directoryId = value
            }
            if let value = dict["DirectoryName"] as? String {
                self.directoryName = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Directory"] as? [String: Any?] {
            var model = GetDirectoryResponseBody.Directory()
            model.fromMap(value)
            self.directory = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetDirectoryResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AcsUrl"] as? String {
                self.acsUrl = value
            }
            if let value = dict["AuthnSignAlgo"] as? String {
                self.authnSignAlgo = value
            }
            if let value = dict["CertificateType"] as? String {
                self.certificateType = value
            }
            if let value = dict["DirectoryId"] as? String {
                self.directoryId = value
            }
            if let value = dict["EncodedMetadataDocument"] as? String {
                self.encodedMetadataDocument = value
            }
            if let value = dict["EntityId"] as? String {
                self.entityId = value
            }
            if let value = dict["SupportEncryptedAssertion"] as? Bool {
                self.supportEncryptedAssertion = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SAMLServiceProvider"] as? [String: Any?] {
            var model = GetDirectorySAMLServiceProviderInfoResponseBody.SAMLServiceProvider()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetDirectorySAMLServiceProviderInfoResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessAssignmentCount"] as? Int32 {
                self.accessAssignmentCount = value
            }
            if let value = dict["AccessConfigurationCount"] as? Int32 {
                self.accessConfigurationCount = value
            }
            if let value = dict["AccessConfigurationQuota"] as? Int32 {
                self.accessConfigurationQuota = value
            }
            if let value = dict["DirectoryId"] as? String {
                self.directoryId = value
            }
            if let value = dict["DirectoryName"] as? String {
                self.directoryName = value
            }
            if let value = dict["GroupCount"] as? Int32 {
                self.groupCount = value
            }
            if let value = dict["GroupQuota"] as? Int32 {
                self.groupQuota = value
            }
            if let value = dict["InProgressTaskCount"] as? Int32 {
                self.inProgressTaskCount = value
            }
            if let value = dict["InlinePolicyPerAccessConfigurationQuota"] as? Int32 {
                self.inlinePolicyPerAccessConfigurationQuota = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
            if let value = dict["SCIMServerCredentialCount"] as? Int32 {
                self.SCIMServerCredentialCount = value
            }
            if let value = dict["SCIMSyncEnabled"] as? Bool {
                self.SCIMSyncEnabled = value
            }
            if let value = dict["SSOEnabled"] as? Bool {
                self.SSOEnabled = value
            }
            if let value = dict["SystemPolicyPerAccessConfigurationQuota"] as? Int32 {
                self.systemPolicyPerAccessConfigurationQuota = value
            }
            if let value = dict["UserCount"] as? Int32 {
                self.userCount = value
            }
            if let value = dict["UserQuota"] as? Int32 {
                self.userQuota = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryStatistics"] as? [String: Any?] {
            var model = GetDirectoryStatisticsResponseBody.DirectoryStatistics()
            model.fromMap(value)
            self.directoryStatistics = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetDirectoryStatisticsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
    }
}

public class GetExternalSAMLIdentityProviderResponseBody : Tea.TeaModel {
    public class SAMLIdentityProviderConfiguration : Tea.TeaModel {
        public var bindingType: String?

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
            if self.bindingType != nil {
                map["BindingType"] = self.bindingType!
            }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BindingType"] as? String {
                self.bindingType = value
            }
            if let value = dict["CertificateIds"] as? [String] {
                self.certificateIds = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DirectoryId"] as? String {
                self.directoryId = value
            }
            if let value = dict["EncodedMetadataDocument"] as? String {
                self.encodedMetadataDocument = value
            }
            if let value = dict["EntityId"] as? String {
                self.entityId = value
            }
            if let value = dict["LoginUrl"] as? String {
                self.loginUrl = value
            }
            if let value = dict["SSOStatus"] as? String {
                self.SSOStatus = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["WantRequestSigned"] as? Bool {
                self.wantRequestSigned = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SAMLIdentityProviderConfiguration"] as? [String: Any?] {
            var model = GetExternalSAMLIdentityProviderResponseBody.SAMLIdentityProviderConfiguration()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetExternalSAMLIdentityProviderResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["GroupId"] as? String {
                self.groupId = value
            }
            if let value = dict["GroupName"] as? String {
                self.groupName = value
            }
            if let value = dict["ProvisionType"] as? String {
                self.provisionType = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
    }
}

public class GetLoginPreferenceResponseBody : Tea.TeaModel {
    public class LoginPreference : Tea.TeaModel {
        public var allowUserToGetCredentials: Bool?

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
            if self.allowUserToGetCredentials != nil {
                map["AllowUserToGetCredentials"] = self.allowUserToGetCredentials!
            }
            if self.loginNetworkMasks != nil {
                map["LoginNetworkMasks"] = self.loginNetworkMasks!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AllowUserToGetCredentials"] as? Bool {
                self.allowUserToGetCredentials = value
            }
            if let value = dict["LoginNetworkMasks"] as? String {
                self.loginNetworkMasks = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LoginPreference"] as? [String: Any?] {
            var model = GetLoginPreferenceResponseBody.LoginPreference()
            model.fromMap(value)
            self.loginPreference = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetLoginPreferenceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MfaAuthenticationAdvanceSettings"] as? String {
                self.mfaAuthenticationAdvanceSettings = value
            }
            if let value = dict["OperationForRiskLogin"] as? String {
                self.operationForRiskLogin = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MFAAuthenticationSettingInfo"] as? [String: Any?] {
            var model = GetMFAAuthenticationSettingInfoResponseBody.MFAAuthenticationSettingInfo()
            model.fromMap(value)
            self.MFAAuthenticationSettingInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetMFAAuthenticationSettingInfoResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MFAAuthenticationAdvanceSettings"] as? String {
            self.MFAAuthenticationAdvanceSettings = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetMFAAuthenticationSettingsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MFAAuthenticationStatus"] as? String {
            self.MFAAuthenticationStatus = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetMFAAuthenticationStatusResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["HardExpire"] as? Bool {
                self.hardExpire = value
            }
            if let value = dict["MaxLoginAttempts"] as? Int32 {
                self.maxLoginAttempts = value
            }
            if let value = dict["MaxPasswordAge"] as? Int32 {
                self.maxPasswordAge = value
            }
            if let value = dict["MaxPasswordLength"] as? Int32 {
                self.maxPasswordLength = value
            }
            if let value = dict["MinPasswordDifferentChars"] as? Int32 {
                self.minPasswordDifferentChars = value
            }
            if let value = dict["MinPasswordLength"] as? Int32 {
                self.minPasswordLength = value
            }
            if let value = dict["PasswordNotContainUsername"] as? Bool {
                self.passwordNotContainUsername = value
            }
            if let value = dict["PasswordReusePrevention"] as? Int32 {
                self.passwordReusePrevention = value
            }
            if let value = dict["RequireLowerCaseChars"] as? Bool {
                self.requireLowerCaseChars = value
            }
            if let value = dict["RequireNumbers"] as? Bool {
                self.requireNumbers = value
            }
            if let value = dict["RequireSymbols"] as? Bool {
                self.requireSymbols = value
            }
            if let value = dict["RequireUpperCaseChars"] as? Bool {
                self.requireUpperCaseChars = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SCIMSynchronizationStatus"] as? String {
            self.SCIMSynchronizationStatus = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetSCIMSynchronizationStatusResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
            if let value = dict["PrerequisiteCheckResult"] as? String {
                self.prerequisiteCheckResult = value
            }
            if let value = dict["RegionsInUse"] as? [String] {
                self.regionsInUse = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServiceStatus"] as? [String: Any?] {
            var model = GetServiceStatusResponseBody.ServiceStatus()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetServiceStatusResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessConfigurationId"] as? String {
                self.accessConfigurationId = value
            }
            if let value = dict["AccessConfigurationName"] as? String {
                self.accessConfigurationName = value
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["FailureReason"] as? String {
                self.failureReason = value
            }
            if let value = dict["PrincipalId"] as? String {
                self.principalId = value
            }
            if let value = dict["PrincipalName"] as? String {
                self.principalName = value
            }
            if let value = dict["PrincipalType"] as? String {
                self.principalType = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TargetId"] as? String {
                self.targetId = value
            }
            if let value = dict["TargetName"] as? String {
                self.targetName = value
            }
            if let value = dict["TargetPath"] as? String {
                self.targetPath = value
            }
            if let value = dict["TargetPathName"] as? String {
                self.targetPathName = value
            }
            if let value = dict["TargetType"] as? String {
                self.targetType = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["TaskType"] as? String {
                self.taskType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Task"] as? [String: Any?] {
            var model = GetTaskResponseBody.Task()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetTaskResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["FailureReason"] as? String {
                self.failureReason = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["TaskType"] as? String {
                self.taskType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskStatus"] as? [String: Any?] {
            var model = GetTaskStatusResponseBody.TaskStatus()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetTaskStatusResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["Issuer"] as? String {
                    self.issuer = value
                }
            }
        }
        public class Tags : Tea.TeaModel {
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
        public var createTime: String?

        public var description_: String?

        public var displayName: String?

        public var email: String?

        public var externalId: GetUserResponseBody.User.ExternalId?

        public var firstName: String?

        public var lastName: String?

        public var provisionType: String?

        public var status: String?

        public var tags: [GetUserResponseBody.User.Tags]?

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
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["ExternalId"] as? [String: Any?] {
                var model = GetUserResponseBody.User.ExternalId()
                model.fromMap(value)
                self.externalId = model
            }
            if let value = dict["FirstName"] as? String {
                self.firstName = value
            }
            if let value = dict["LastName"] as? String {
                self.lastName = value
            }
            if let value = dict["ProvisionType"] as? String {
                self.provisionType = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [GetUserResponseBody.User.Tags] = []
                for v in value {
                    if v != nil {
                        var model = GetUserResponseBody.User.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["Issuer"] as? String {
                self.issuer = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["ExternalId"] as? [String: Any?] {
            var model = GetUserIdRequest.ExternalId()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["ExternalId"] as? String {
            self.externalIdShrink = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetUserIdResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UserMFAAuthenticationSettings"] as? String {
            self.userMFAAuthenticationSettings = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetUserMFAAuthenticationSettingsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["UserProvisioningId"] as? String {
            self.userProvisioningId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DeletionStrategy"] as? String {
                self.deletionStrategy = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DirectoryId"] as? String {
                self.directoryId = value
            }
            if let value = dict["DuplicationStrategy"] as? String {
                self.duplicationStrategy = value
            }
            if let value = dict["OwnerPk"] as? String {
                self.ownerPk = value
            }
            if let value = dict["PrincipalId"] as? String {
                self.principalId = value
            }
            if let value = dict["PrincipalName"] as? String {
                self.principalName = value
            }
            if let value = dict["PrincipalType"] as? String {
                self.principalType = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TargetId"] as? String {
                self.targetId = value
            }
            if let value = dict["TargetName"] as? String {
                self.targetName = value
            }
            if let value = dict["TargetPath"] as? String {
                self.targetPath = value
            }
            if let value = dict["TargetType"] as? String {
                self.targetType = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["UserProvisioningId"] as? String {
                self.userProvisioningId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UserProvisioning"] as? [String: Any?] {
            var model = GetUserProvisioningResponseBody.UserProvisioning()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetUserProvisioningResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DefaultLandingPage"] as? String {
                self.defaultLandingPage = value
            }
            if let value = dict["DirectoryId"] as? String {
                self.directoryId = value
            }
            if let value = dict["SessionDuration"] as? Int32 {
                self.sessionDuration = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UserProvisioningConfiguration"] as? [String: Any?] {
            var model = GetUserProvisioningConfigurationResponseBody.UserProvisioningConfiguration()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetUserProvisioningConfigurationResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["EventId"] as? String {
            self.eventId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DeletionStrategy"] as? String {
                self.deletionStrategy = value
            }
            if let value = dict["DirectoryId"] as? String {
                self.directoryId = value
            }
            if let value = dict["DuplicationStrategy"] as? String {
                self.duplicationStrategy = value
            }
            if let value = dict["ErrorCount"] as? Int64 {
                self.errorCount = value
            }
            if let value = dict["ErrorInfo"] as? String {
                self.errorInfo = value
            }
            if let value = dict["EventId"] as? String {
                self.eventId = value
            }
            if let value = dict["LatestAsyncTime"] as? String {
                self.latestAsyncTime = value
            }
            if let value = dict["PrincipalId"] as? String {
                self.principalId = value
            }
            if let value = dict["PrincipalName"] as? String {
                self.principalName = value
            }
            if let value = dict["PrincipalType"] as? String {
                self.principalType = value
            }
            if let value = dict["SourceType"] as? String {
                self.sourceType = value
            }
            if let value = dict["TargetId"] as? String {
                self.targetId = value
            }
            if let value = dict["TargetName"] as? String {
                self.targetName = value
            }
            if let value = dict["TargetPath"] as? String {
                self.targetPath = value
            }
            if let value = dict["TargetType"] as? String {
                self.targetType = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["UserProvisioningId"] as? String {
                self.userProvisioningId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UserProvisioningEvent"] as? [String: Any?] {
            var model = GetUserProvisioningEventResponseBody.UserProvisioningEvent()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetUserProvisioningEventResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["RdMemberId"] as? String {
            self.rdMemberId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DirectoryId"] as? String {
                self.directoryId = value
            }
            if let value = dict["EntityId"] as? String {
                self.entityId = value
            }
            if let value = dict["FailedEventCount"] as? Int64 {
                self.failedEventCount = value
            }
            if let value = dict["LatestAsyncTime"] as? String {
                self.latestAsyncTime = value
            }
            if let value = dict["OwnerPk"] as? String {
                self.ownerPk = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UserProvisioningStatistics"] as? [String: Any?] {
            var model = GetUserProvisioningRdAccountStatisticsResponseBody.UserProvisioningStatistics()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetUserProvisioningRdAccountStatisticsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["UserProvisioningId"] as? String {
            self.userProvisioningId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DirectoryId"] as? String {
                self.directoryId = value
            }
            if let value = dict["EntityId"] as? String {
                self.entityId = value
            }
            if let value = dict["FailedEventCount"] as? Int64 {
                self.failedEventCount = value
            }
            if let value = dict["LatestAsyncTime"] as? String {
                self.latestAsyncTime = value
            }
            if let value = dict["OwnerPk"] as? String {
                self.ownerPk = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UserProvisioningStatistics"] as? [String: Any?] {
            var model = GetUserProvisioningStatisticsResponseBody.UserProvisioningStatistics()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetUserProvisioningStatisticsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessConfigurationId"] as? String {
            self.accessConfigurationId = value
        }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PrincipalId"] as? String {
            self.principalId = value
        }
        if let value = dict["PrincipalType"] as? String {
            self.principalType = value
        }
        if let value = dict["TargetId"] as? String {
            self.targetId = value
        }
        if let value = dict["TargetType"] as? String {
            self.targetType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessConfigurationId"] as? String {
                self.accessConfigurationId = value
            }
            if let value = dict["AccessConfigurationName"] as? String {
                self.accessConfigurationName = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["PrincipalId"] as? String {
                self.principalId = value
            }
            if let value = dict["PrincipalName"] as? String {
                self.principalName = value
            }
            if let value = dict["PrincipalType"] as? String {
                self.principalType = value
            }
            if let value = dict["TargetId"] as? String {
                self.targetId = value
            }
            if let value = dict["TargetName"] as? String {
                self.targetName = value
            }
            if let value = dict["TargetPath"] as? String {
                self.targetPath = value
            }
            if let value = dict["TargetPathName"] as? String {
                self.targetPathName = value
            }
            if let value = dict["TargetType"] as? String {
                self.targetType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessAssignments"] as? [Any?] {
            var tmp : [ListAccessAssignmentsResponseBody.AccessAssignments] = []
            for v in value {
                if v != nil {
                    var model = ListAccessAssignmentsResponseBody.AccessAssignments()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.accessAssignments = tmp
        }
        if let value = dict["IsTruncated"] as? Bool {
            self.isTruncated = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCounts"] as? Int32 {
            self.totalCounts = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListAccessAssignmentsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessConfigurationId"] as? String {
            self.accessConfigurationId = value
        }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ProvisioningStatus"] as? String {
            self.provisioningStatus = value
        }
        if let value = dict["TargetId"] as? String {
            self.targetId = value
        }
        if let value = dict["TargetType"] as? String {
            self.targetType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessConfigurationId"] as? String {
                self.accessConfigurationId = value
            }
            if let value = dict["AccessConfigurationName"] as? String {
                self.accessConfigurationName = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["RAMPolicyNames"] as? [String] {
                self.RAMPolicyNames = value
            }
            if let value = dict["RAMRoleName"] as? String {
                self.RAMRoleName = value
            }
            if let value = dict["SAMLProviderName"] as? String {
                self.SAMLProviderName = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TargetId"] as? String {
                self.targetId = value
            }
            if let value = dict["TargetName"] as? String {
                self.targetName = value
            }
            if let value = dict["TargetPath"] as? String {
                self.targetPath = value
            }
            if let value = dict["TargetPathName"] as? String {
                self.targetPathName = value
            }
            if let value = dict["TargetType"] as? String {
                self.targetType = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessConfigurationProvisionings"] as? [Any?] {
            var tmp : [ListAccessConfigurationProvisioningsResponseBody.AccessConfigurationProvisionings] = []
            for v in value {
                if v != nil {
                    var model = ListAccessConfigurationProvisioningsResponseBody.AccessConfigurationProvisionings()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.accessConfigurationProvisionings = tmp
        }
        if let value = dict["IsTruncated"] as? Bool {
            self.isTruncated = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCounts"] as? Int32 {
            self.totalCounts = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListAccessConfigurationProvisioningsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAccessConfigurationsRequest : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
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
    public var directoryId: String?

    public var filter: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var statusNotifications: String?

    public var tags: [ListAccessConfigurationsRequest.Tags]?

    public override init() {
        super.init()
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
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["Filter"] as? String {
            self.filter = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["StatusNotifications"] as? String {
            self.statusNotifications = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [ListAccessConfigurationsRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = ListAccessConfigurationsRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
    }
}

public class ListAccessConfigurationsResponseBody : Tea.TeaModel {
    public class AccessConfigurations : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
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
        public var accessConfigurationId: String?

        public var accessConfigurationName: String?

        public var createTime: String?

        public var description_: String?

        public var relayState: String?

        public var sessionDuration: Int32?

        public var statusNotifications: [String]?

        public var tags: [ListAccessConfigurationsResponseBody.AccessConfigurations.Tags]?

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
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessConfigurationId"] as? String {
                self.accessConfigurationId = value
            }
            if let value = dict["AccessConfigurationName"] as? String {
                self.accessConfigurationName = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["RelayState"] as? String {
                self.relayState = value
            }
            if let value = dict["SessionDuration"] as? Int32 {
                self.sessionDuration = value
            }
            if let value = dict["StatusNotifications"] as? [String] {
                self.statusNotifications = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [ListAccessConfigurationsResponseBody.AccessConfigurations.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListAccessConfigurationsResponseBody.AccessConfigurations.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessConfigurations"] as? [Any?] {
            var tmp : [ListAccessConfigurationsResponseBody.AccessConfigurations] = []
            for v in value {
                if v != nil {
                    var model = ListAccessConfigurationsResponseBody.AccessConfigurations()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.accessConfigurations = tmp
        }
        if let value = dict["IsTruncated"] as? Bool {
            self.isTruncated = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCounts"] as? Int32 {
            self.totalCounts = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListAccessConfigurationsResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DirectoryId"] as? String {
                self.directoryId = value
            }
            if let value = dict["DirectoryName"] as? String {
                self.directoryName = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Directories"] as? [Any?] {
            var tmp : [ListDirectoriesResponseBody.Directories] = []
            for v in value {
                if v != nil {
                    var model = ListDirectoriesResponseBody.Directories()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.directories = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCounts"] as? Int32 {
            self.totalCounts = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListDirectoriesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CertificateId"] as? String {
                self.certificateId = value
            }
            if let value = dict["Issuer"] as? String {
                self.issuer = value
            }
            if let value = dict["NotAfter"] as? String {
                self.notAfter = value
            }
            if let value = dict["NotBefore"] as? String {
                self.notBefore = value
            }
            if let value = dict["PublicKey"] as? String {
                self.publicKey = value
            }
            if let value = dict["SerialNumber"] as? String {
                self.serialNumber = value
            }
            if let value = dict["SignatureAlgorithm"] as? String {
                self.signatureAlgorithm = value
            }
            if let value = dict["Subject"] as? String {
                self.subject = value
            }
            if let value = dict["Version"] as? Int32 {
                self.version = value
            }
            if let value = dict["X509Certificate"] as? String {
                self.x509Certificate = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SAMLIdPCertificates"] as? [Any?] {
            var tmp : [ListExternalSAMLIdPCertificatesResponseBody.SAMLIdPCertificates] = []
            for v in value {
                if v != nil {
                    var model = ListExternalSAMLIdPCertificatesResponseBody.SAMLIdPCertificates()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.SAMLIdPCertificates = tmp
        }
        if let value = dict["TotalCounts"] as? Int32 {
            self.totalCounts = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListExternalSAMLIdPCertificatesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["GroupId"] as? String {
                self.groupId = value
            }
            if let value = dict["JoinTime"] as? String {
                self.joinTime = value
            }
            if let value = dict["ProvisionType"] as? String {
                self.provisionType = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
            if let value = dict["UserName"] as? String {
                self.userName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupMembers"] as? [Any?] {
            var tmp : [ListGroupMembersResponseBody.GroupMembers] = []
            for v in value {
                if v != nil {
                    var model = ListGroupMembersResponseBody.GroupMembers()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.groupMembers = tmp
        }
        if let value = dict["IsTruncated"] as? Bool {
            self.isTruncated = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCounts"] as? Int32 {
            self.totalCounts = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListGroupMembersResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["Filter"] as? String {
            self.filter = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ProvisionType"] as? String {
            self.provisionType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["GroupId"] as? String {
                self.groupId = value
            }
            if let value = dict["GroupName"] as? String {
                self.groupName = value
            }
            if let value = dict["ProvisionType"] as? String {
                self.provisionType = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Groups"] as? [Any?] {
            var tmp : [ListGroupsResponseBody.Groups] = []
            for v in value {
                if v != nil {
                    var model = ListGroupsResponseBody.Groups()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.groups = tmp
        }
        if let value = dict["IsTruncated"] as? Bool {
            self.isTruncated = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCounts"] as? Int32 {
            self.totalCounts = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["GroupId"] as? String {
                self.groupId = value
            }
            if let value = dict["GroupName"] as? String {
                self.groupName = value
            }
            if let value = dict["JoinTime"] as? String {
                self.joinTime = value
            }
            if let value = dict["ProvisionType"] as? String {
                self.provisionType = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsTruncated"] as? Bool {
            self.isTruncated = value
        }
        if let value = dict["JoinedGroups"] as? [Any?] {
            var tmp : [ListJoinedGroupsForUserResponseBody.JoinedGroups] = []
            for v in value {
                if v != nil {
                    var model = ListJoinedGroupsForUserResponseBody.JoinedGroups()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.joinedGroups = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCounts"] as? Int32 {
            self.totalCounts = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListJoinedGroupsForUserResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DeviceId"] as? String {
                self.deviceId = value
            }
            if let value = dict["DeviceName"] as? String {
                self.deviceName = value
            }
            if let value = dict["DeviceType"] as? String {
                self.deviceType = value
            }
            if let value = dict["EffectiveTime"] as? String {
                self.effectiveTime = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MFADevices"] as? [Any?] {
            var tmp : [ListMFADevicesForUserResponseBody.MFADevices] = []
            for v in value {
                if v != nil {
                    var model = ListMFADevicesForUserResponseBody.MFADevices()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.MFADevices = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCounts"] as? Int32 {
            self.totalCounts = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListMFADevicesForUserResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessConfigurationId"] as? String {
            self.accessConfigurationId = value
        }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["PermissionPolicyType"] as? String {
            self.permissionPolicyType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AddTime"] as? String {
                self.addTime = value
            }
            if let value = dict["PermissionPolicyDocument"] as? String {
                self.permissionPolicyDocument = value
            }
            if let value = dict["PermissionPolicyName"] as? String {
                self.permissionPolicyName = value
            }
            if let value = dict["PermissionPolicyType"] as? String {
                self.permissionPolicyType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PermissionPolicies"] as? [Any?] {
            var tmp : [ListPermissionPoliciesInAccessConfigurationResponseBody.PermissionPolicies] = []
            for v in value {
                if v != nil {
                    var model = ListPermissionPoliciesInAccessConfigurationResponseBody.PermissionPolicies()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.permissionPolicies = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCounts"] as? Int32 {
            self.totalCounts = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListPermissionPoliciesInAccessConfigurationResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["CredentialId"] as? String {
                self.credentialId = value
            }
            if let value = dict["CredentialType"] as? String {
                self.credentialType = value
            }
            if let value = dict["DirectoryId"] as? String {
                self.directoryId = value
            }
            if let value = dict["ExpireTime"] as? String {
                self.expireTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SCIMServerCredentials"] as? [Any?] {
            var tmp : [ListSCIMServerCredentialsResponseBody.SCIMServerCredentials] = []
            for v in value {
                if v != nil {
                    var model = ListSCIMServerCredentialsResponseBody.SCIMServerCredentials()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.SCIMServerCredentials = tmp
        }
        if let value = dict["TotalCounts"] as? Int32 {
            self.totalCounts = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListSCIMServerCredentialsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessConfigurationId"] as? String {
            self.accessConfigurationId = value
        }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["Filter"] as? String {
            self.filter = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PrincipalId"] as? String {
            self.principalId = value
        }
        if let value = dict["PrincipalType"] as? String {
            self.principalType = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["TargetId"] as? String {
            self.targetId = value
        }
        if let value = dict["TargetType"] as? String {
            self.targetType = value
        }
        if let value = dict["TaskType"] as? String {
            self.taskType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessConfigurationId"] as? String {
                self.accessConfigurationId = value
            }
            if let value = dict["AccessConfigurationName"] as? String {
                self.accessConfigurationName = value
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["FailureReason"] as? String {
                self.failureReason = value
            }
            if let value = dict["PrincipalId"] as? String {
                self.principalId = value
            }
            if let value = dict["PrincipalName"] as? String {
                self.principalName = value
            }
            if let value = dict["PrincipalType"] as? String {
                self.principalType = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TargetId"] as? String {
                self.targetId = value
            }
            if let value = dict["TargetName"] as? String {
                self.targetName = value
            }
            if let value = dict["TargetPath"] as? String {
                self.targetPath = value
            }
            if let value = dict["TargetPathName"] as? String {
                self.targetPathName = value
            }
            if let value = dict["TargetType"] as? String {
                self.targetType = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["TaskType"] as? String {
                self.taskType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsTruncated"] as? Bool {
            self.isTruncated = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Tasks"] as? [Any?] {
            var tmp : [ListTasksResponseBody.Tasks] = []
            for v in value {
                if v != nil {
                    var model = ListTasksResponseBody.Tasks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tasks = tmp
        }
        if let value = dict["TotalCounts"] as? Int32 {
            self.totalCounts = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListTasksResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["UserProvisioningId"] as? String {
            self.userProvisioningId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DeletionStrategy"] as? String {
                self.deletionStrategy = value
            }
            if let value = dict["DirectoryId"] as? String {
                self.directoryId = value
            }
            if let value = dict["DuplicationStrategy"] as? String {
                self.duplicationStrategy = value
            }
            if let value = dict["ErrorCount"] as? Int64 {
                self.errorCount = value
            }
            if let value = dict["ErrorInfo"] as? String {
                self.errorInfo = value
            }
            if let value = dict["EventId"] as? String {
                self.eventId = value
            }
            if let value = dict["LatestAsyncTime"] as? String {
                self.latestAsyncTime = value
            }
            if let value = dict["PrincipalId"] as? String {
                self.principalId = value
            }
            if let value = dict["PrincipalName"] as? String {
                self.principalName = value
            }
            if let value = dict["PrincipalType"] as? String {
                self.principalType = value
            }
            if let value = dict["SourceType"] as? String {
                self.sourceType = value
            }
            if let value = dict["TargetId"] as? String {
                self.targetId = value
            }
            if let value = dict["TargetName"] as? String {
                self.targetName = value
            }
            if let value = dict["TargetPath"] as? String {
                self.targetPath = value
            }
            if let value = dict["TargetType"] as? String {
                self.targetType = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["UserProvisioningId"] as? String {
                self.userProvisioningId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsTruncated"] as? Bool {
            self.isTruncated = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCounts"] as? Int32 {
            self.totalCounts = value
        }
        if let value = dict["UserProvisioningEvents"] as? [Any?] {
            var tmp : [ListUserProvisioningEventsResponseBody.UserProvisioningEvents] = []
            for v in value {
                if v != nil {
                    var model = ListUserProvisioningEventsResponseBody.UserProvisioningEvents()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListUserProvisioningEventsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PrincipalId"] as? String {
            self.principalId = value
        }
        if let value = dict["PrincipalType"] as? String {
            self.principalType = value
        }
        if let value = dict["TargetId"] as? String {
            self.targetId = value
        }
        if let value = dict["TargetType"] as? String {
            self.targetType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DeletionStrategy"] as? String {
                self.deletionStrategy = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DirectoryId"] as? String {
                self.directoryId = value
            }
            if let value = dict["DuplicationStrategy"] as? String {
                self.duplicationStrategy = value
            }
            if let value = dict["OwnerPk"] as? String {
                self.ownerPk = value
            }
            if let value = dict["PrincipalId"] as? String {
                self.principalId = value
            }
            if let value = dict["PrincipalName"] as? String {
                self.principalName = value
            }
            if let value = dict["PrincipalType"] as? String {
                self.principalType = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TargetId"] as? String {
                self.targetId = value
            }
            if let value = dict["TargetName"] as? String {
                self.targetName = value
            }
            if let value = dict["TargetPath"] as? String {
                self.targetPath = value
            }
            if let value = dict["TargetType"] as? String {
                self.targetType = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["UserProvisioningId"] as? String {
                self.userProvisioningId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsTruncated"] as? Bool {
            self.isTruncated = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCounts"] as? Int32 {
            self.totalCounts = value
        }
        if let value = dict["UserProvisionings"] as? [Any?] {
            var tmp : [ListUserProvisioningsResponseBody.UserProvisionings] = []
            for v in value {
                if v != nil {
                    var model = ListUserProvisioningsResponseBody.UserProvisionings()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListUserProvisioningsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListUsersRequest : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
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
    public var directoryId: String?

    public var filter: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var provisionType: String?

    public var status: String?

    public var tags: [ListUsersRequest.Tags]?

    public override init() {
        super.init()
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
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["Filter"] as? String {
            self.filter = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["ProvisionType"] as? String {
            self.provisionType = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [ListUsersRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = ListUsersRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["Issuer"] as? String {
                    self.issuer = value
                }
            }
        }
        public class Tags : Tea.TeaModel {
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
        public var createTime: String?

        public var description_: String?

        public var displayName: String?

        public var email: String?

        public var externalId: ListUsersResponseBody.Users.ExternalId?

        public var firstName: String?

        public var lastName: String?

        public var provisionType: String?

        public var status: String?

        public var tags: [ListUsersResponseBody.Users.Tags]?

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
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["ExternalId"] as? [String: Any?] {
                var model = ListUsersResponseBody.Users.ExternalId()
                model.fromMap(value)
                self.externalId = model
            }
            if let value = dict["FirstName"] as? String {
                self.firstName = value
            }
            if let value = dict["LastName"] as? String {
                self.lastName = value
            }
            if let value = dict["ProvisionType"] as? String {
                self.provisionType = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [ListUsersResponseBody.Users.Tags] = []
                for v in value {
                    if v != nil {
                        var model = ListUsersResponseBody.Users.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
            if let value = dict["UserName"] as? String {
                self.userName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsTruncated"] as? Bool {
            self.isTruncated = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCounts"] as? Int32 {
            self.totalCounts = value
        }
        if let value = dict["Users"] as? [Any?] {
            var tmp : [ListUsersResponseBody.Users] = []
            for v in value {
                if v != nil {
                    var model = ListUsersResponseBody.Users()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessConfigurationId"] as? String {
            self.accessConfigurationId = value
        }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["TargetId"] as? String {
            self.targetId = value
        }
        if let value = dict["TargetType"] as? String {
            self.targetType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessConfigurationId"] as? String {
                self.accessConfigurationId = value
            }
            if let value = dict["AccessConfigurationName"] as? String {
                self.accessConfigurationName = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TargetId"] as? String {
                self.targetId = value
            }
            if let value = dict["TargetName"] as? String {
                self.targetName = value
            }
            if let value = dict["TargetPath"] as? String {
                self.targetPath = value
            }
            if let value = dict["TargetPathName"] as? String {
                self.targetPathName = value
            }
            if let value = dict["TargetType"] as? String {
                self.targetType = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["TaskType"] as? String {
                self.taskType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Tasks"] as? [Any?] {
            var tmp : [ProvisionAccessConfigurationResponseBody.Tasks] = []
            for v in value {
                if v != nil {
                    var model = ProvisionAccessConfigurationResponseBody.Tasks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ProvisionAccessConfigurationResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertificateId"] as? String {
            self.certificateId = value
        }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RemoveExternalSAMLIdPCertificateResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessConfigurationId"] as? String {
            self.accessConfigurationId = value
        }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["PermissionPolicyName"] as? String {
            self.permissionPolicyName = value
        }
        if let value = dict["PermissionPolicyType"] as? String {
            self.permissionPolicyType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RemovePermissionPolicyFromAccessConfigurationResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["GenerateRandomPassword"] as? Bool {
            self.generateRandomPassword = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["RequirePasswordResetForNextLogin"] as? Bool {
            self.requirePasswordResetForNextLogin = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NewPassword"] as? String {
            self.newPassword = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ResetUserPasswordResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["DuplicationStrategy"] as? String {
            self.duplicationStrategy = value
        }
        if let value = dict["EventId"] as? String {
            self.eventId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RetryUserProvisioningEventResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetExternalSAMLIdentityProviderRequest : Tea.TeaModel {
    public var bindingType: String?

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
        if self.bindingType != nil {
            map["BindingType"] = self.bindingType!
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
        if self.wantRequestSigned != nil {
            map["WantRequestSigned"] = self.wantRequestSigned!
        }
        if self.x509Certificate != nil {
            map["X509Certificate"] = self.x509Certificate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BindingType"] as? String {
            self.bindingType = value
        }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["EncodedMetadataDocument"] as? String {
            self.encodedMetadataDocument = value
        }
        if let value = dict["EntityId"] as? String {
            self.entityId = value
        }
        if let value = dict["LoginUrl"] as? String {
            self.loginUrl = value
        }
        if let value = dict["SSOStatus"] as? String {
            self.SSOStatus = value
        }
        if let value = dict["WantRequestSigned"] as? Bool {
            self.wantRequestSigned = value
        }
        if let value = dict["X509Certificate"] as? String {
            self.x509Certificate = value
        }
    }
}

public class SetExternalSAMLIdentityProviderResponseBody : Tea.TeaModel {
    public class SAMLIdentityProviderConfiguration : Tea.TeaModel {
        public var bindingType: String?

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
            if self.bindingType != nil {
                map["BindingType"] = self.bindingType!
            }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BindingType"] as? String {
                self.bindingType = value
            }
            if let value = dict["CertificateIds"] as? [String] {
                self.certificateIds = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DirectoryId"] as? String {
                self.directoryId = value
            }
            if let value = dict["EncodedMetadataDocument"] as? String {
                self.encodedMetadataDocument = value
            }
            if let value = dict["EntityId"] as? String {
                self.entityId = value
            }
            if let value = dict["LoginUrl"] as? String {
                self.loginUrl = value
            }
            if let value = dict["SSOStatus"] as? String {
                self.SSOStatus = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["WantRequestSigned"] as? Bool {
                self.wantRequestSigned = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SAMLIdentityProviderConfiguration"] as? [String: Any?] {
            var model = SetExternalSAMLIdentityProviderResponseBody.SAMLIdentityProviderConfiguration()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetExternalSAMLIdentityProviderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetLoginPreferenceRequest : Tea.TeaModel {
    public var allowUserToGetCredentials: Bool?

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
        if self.allowUserToGetCredentials != nil {
            map["AllowUserToGetCredentials"] = self.allowUserToGetCredentials!
        }
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.loginNetworkMasks != nil {
            map["LoginNetworkMasks"] = self.loginNetworkMasks!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllowUserToGetCredentials"] as? Bool {
            self.allowUserToGetCredentials = value
        }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["LoginNetworkMasks"] as? String {
            self.loginNetworkMasks = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetLoginPreferenceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["MFAAuthenticationStatus"] as? String {
            self.MFAAuthenticationStatus = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetMFAAuthenticationStatusResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["MaxLoginAttempts"] as? Int32 {
            self.maxLoginAttempts = value
        }
        if let value = dict["MaxPasswordAge"] as? Int32 {
            self.maxPasswordAge = value
        }
        if let value = dict["MinPasswordDifferentChars"] as? Int32 {
            self.minPasswordDifferentChars = value
        }
        if let value = dict["MinPasswordLength"] as? Int32 {
            self.minPasswordLength = value
        }
        if let value = dict["PasswordNotContainUsername"] as? Bool {
            self.passwordNotContainUsername = value
        }
        if let value = dict["PasswordReusePrevention"] as? Int32 {
            self.passwordReusePrevention = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["SCIMSynchronizationStatus"] as? String {
            self.SCIMSynchronizationStatus = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetSCIMSynchronizationStatusResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessConfigurationId"] as? String {
            self.accessConfigurationId = value
        }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["NewDescription"] as? String {
            self.newDescription = value
        }
        if let value = dict["NewRelayState"] as? String {
            self.newRelayState = value
        }
        if let value = dict["NewSessionDuration"] as? Int32 {
            self.newSessionDuration = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessConfigurationId"] as? String {
                self.accessConfigurationId = value
            }
            if let value = dict["AccessConfigurationName"] as? String {
                self.accessConfigurationName = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["RelayState"] as? String {
                self.relayState = value
            }
            if let value = dict["SessionDuration"] as? Int32 {
                self.sessionDuration = value
            }
            if let value = dict["StatusNotifications"] as? [String] {
                self.statusNotifications = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessConfiguration"] as? [String: Any?] {
            var model = UpdateAccessConfigurationResponseBody.AccessConfiguration()
            model.fromMap(value)
            self.accessConfiguration = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateAccessConfigurationResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["NewDirectoryName"] as? String {
            self.newDirectoryName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DirectoryId"] as? String {
                self.directoryId = value
            }
            if let value = dict["DirectoryName"] as? String {
                self.directoryName = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Directory"] as? [String: Any?] {
            var model = UpdateDirectoryResponseBody.Directory()
            model.fromMap(value)
            self.directory = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateDirectoryResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["NewDescription"] as? String {
            self.newDescription = value
        }
        if let value = dict["NewGroupName"] as? String {
            self.newGroupName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["GroupId"] as? String {
                self.groupId = value
            }
            if let value = dict["GroupName"] as? String {
                self.groupName = value
            }
            if let value = dict["ProvisionType"] as? String {
                self.provisionType = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessConfigurationId"] as? String {
            self.accessConfigurationId = value
        }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["InlinePolicyName"] as? String {
            self.inlinePolicyName = value
        }
        if let value = dict["NewInlinePolicyDocument"] as? String {
            self.newInlinePolicyDocument = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateInlinePolicyForAccessConfigurationResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["MFAAuthenticationSettings"] as? String {
            self.MFAAuthenticationSettings = value
        }
        if let value = dict["OperationForRiskLogin"] as? String {
            self.operationForRiskLogin = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateMFAAuthenticationSettingsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CredentialId"] as? String {
            self.credentialId = value
        }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["NewStatus"] as? String {
            self.newStatus = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["CredentialId"] as? String {
                self.credentialId = value
            }
            if let value = dict["CredentialType"] as? String {
                self.credentialType = value
            }
            if let value = dict["DirectoryId"] as? String {
                self.directoryId = value
            }
            if let value = dict["ExpireTime"] as? String {
                self.expireTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SCIMServerCredential"] as? [String: Any?] {
            var model = UpdateSCIMServerCredentialStatusResponseBody.SCIMServerCredential()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateSCIMServerCredentialStatusResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["NewDescription"] as? String {
            self.newDescription = value
        }
        if let value = dict["NewDisplayName"] as? String {
            self.newDisplayName = value
        }
        if let value = dict["NewEmail"] as? String {
            self.newEmail = value
        }
        if let value = dict["NewFirstName"] as? String {
            self.newFirstName = value
        }
        if let value = dict["NewLastName"] as? String {
            self.newLastName = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["FirstName"] as? String {
                self.firstName = value
            }
            if let value = dict["LastName"] as? String {
                self.lastName = value
            }
            if let value = dict["ProvisionType"] as? String {
                self.provisionType = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["UserMFAAuthenticationSettings"] as? String {
            self.userMFAAuthenticationSettings = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateUserMFAAuthenticationSettingsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["NewDeletionStrategy"] as? String {
            self.newDeletionStrategy = value
        }
        if let value = dict["NewDescription"] as? String {
            self.newDescription = value
        }
        if let value = dict["NewDuplicationStrategy"] as? String {
            self.newDuplicationStrategy = value
        }
        if let value = dict["UserProvisioningId"] as? String {
            self.userProvisioningId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DeletionStrategy"] as? String {
                self.deletionStrategy = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DirectoryId"] as? String {
                self.directoryId = value
            }
            if let value = dict["DuplicationStrategy"] as? String {
                self.duplicationStrategy = value
            }
            if let value = dict["OwnerPk"] as? String {
                self.ownerPk = value
            }
            if let value = dict["PrincipalId"] as? String {
                self.principalId = value
            }
            if let value = dict["PrincipalName"] as? String {
                self.principalName = value
            }
            if let value = dict["PrincipalType"] as? String {
                self.principalType = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TargetId"] as? String {
                self.targetId = value
            }
            if let value = dict["TargetName"] as? String {
                self.targetName = value
            }
            if let value = dict["TargetPath"] as? String {
                self.targetPath = value
            }
            if let value = dict["TargetType"] as? String {
                self.targetType = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["UserProvisioningId"] as? String {
                self.userProvisioningId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UserProvisioning"] as? [String: Any?] {
            var model = UpdateUserProvisioningResponseBody.UserProvisioning()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateUserProvisioningResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["NewDefaultLandingPage"] as? String {
            self.newDefaultLandingPage = value
        }
        if let value = dict["NewSessionDuration"] as? Int32 {
            self.newSessionDuration = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DefaultLandingPage"] as? String {
                self.defaultLandingPage = value
            }
            if let value = dict["DirectoryId"] as? String {
                self.directoryId = value
            }
            if let value = dict["SessionDuration"] as? Int32 {
                self.sessionDuration = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UserProvisioningConfiguration"] as? [String: Any?] {
            var model = UpdateUserProvisioningConfigurationResponseBody.UserProvisioningConfiguration()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateUserProvisioningConfigurationResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["NewStatus"] as? String {
            self.newStatus = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateUserStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
