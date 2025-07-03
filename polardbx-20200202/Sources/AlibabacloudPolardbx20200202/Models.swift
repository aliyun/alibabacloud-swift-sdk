import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AlignStoragePrimaryAzoneRequest : Tea.TeaModel {
    public var DBInstanceName: String?

    public var regionId: String?

    public var storageInstanceName: String?

    public var switchTime: String?

    public var switchTimeMode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.storageInstanceName != nil {
            map["StorageInstanceName"] = self.storageInstanceName!
        }
        if self.switchTime != nil {
            map["SwitchTime"] = self.switchTime!
        }
        if self.switchTimeMode != nil {
            map["SwitchTimeMode"] = self.switchTimeMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StorageInstanceName"] as? String {
            self.storageInstanceName = value
        }
        if let value = dict["SwitchTime"] as? String {
            self.switchTime = value
        }
        if let value = dict["SwitchTimeMode"] as? String {
            self.switchTimeMode = value
        }
    }
}

public class AlignStoragePrimaryAzoneResponseBody : Tea.TeaModel {
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

public class AlignStoragePrimaryAzoneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AlignStoragePrimaryAzoneResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AlignStoragePrimaryAzoneResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AllocateColdDataVolumeRequest : Tea.TeaModel {
    public var DBInstanceName: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class AllocateColdDataVolumeResponseBody : Tea.TeaModel {
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

public class AllocateColdDataVolumeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AllocateColdDataVolumeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AllocateColdDataVolumeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AllocateInstancePublicConnectionRequest : Tea.TeaModel {
    public var connectionStringPrefix: String?

    public var DBInstanceName: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var port: String?

    public var regionId: String?

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
        if self.connectionStringPrefix != nil {
            map["ConnectionStringPrefix"] = self.connectionStringPrefix!
        }
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
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
        if let value = dict["ConnectionStringPrefix"] as? String {
            self.connectionStringPrefix = value
        }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Port"] as? String {
            self.port = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class AllocateInstancePublicConnectionResponseBody : Tea.TeaModel {
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

public class AllocateInstancePublicConnectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AllocateInstancePublicConnectionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AllocateInstancePublicConnectionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CancelActiveOperationTasksRequest : Tea.TeaModel {
    public var ids: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ids != nil {
            map["Ids"] = self.ids!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Ids"] as? String {
            self.ids = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class CancelActiveOperationTasksResponseBody : Tea.TeaModel {
    public var ids: String?

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
        if self.ids != nil {
            map["Ids"] = self.ids!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Ids"] as? String {
            self.ids = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CancelActiveOperationTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelActiveOperationTasksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CancelActiveOperationTasksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChangeResourceGroupRequest : Tea.TeaModel {
    public var newResourceGroupId: String?

    public var regionId: String?

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
        if self.newResourceGroupId != nil {
            map["NewResourceGroupId"] = self.newResourceGroupId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NewResourceGroupId"] as? String {
            self.newResourceGroupId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class ChangeResourceGroupResponseBody : Tea.TeaModel {
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

public class ChangeResourceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangeResourceGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ChangeResourceGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CheckCloudResourceAuthorizedRequest : Tea.TeaModel {
    public var DBInstanceName: String?

    public var regionId: String?

    public var roleArn: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleArn != nil {
            map["RoleArn"] = self.roleArn!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleArn"] as? String {
            self.roleArn = value
        }
    }
}

public class CheckCloudResourceAuthorizedResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var authorizationState: String?

        public var roleArn: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authorizationState != nil {
                map["AuthorizationState"] = self.authorizationState!
            }
            if self.roleArn != nil {
                map["RoleArn"] = self.roleArn!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AuthorizationState"] as? String {
                self.authorizationState = value
            }
            if let value = dict["RoleArn"] as? String {
                self.roleArn = value
            }
        }
    }
    public var data: CheckCloudResourceAuthorizedResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CheckCloudResourceAuthorizedResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CheckCloudResourceAuthorizedResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckCloudResourceAuthorizedResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CheckCloudResourceAuthorizedResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAccountRequest : Tea.TeaModel {
    public var accountDescription: String?

    public var accountName: String?

    public var accountPassword: String?

    public var accountPrivilege: String?

    public var DBInstanceName: String?

    public var DBName: String?

    public var regionId: String?

    public var securityAccountName: String?

    public var securityAccountPassword: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountDescription != nil {
            map["AccountDescription"] = self.accountDescription!
        }
        if self.accountName != nil {
            map["AccountName"] = self.accountName!
        }
        if self.accountPassword != nil {
            map["AccountPassword"] = self.accountPassword!
        }
        if self.accountPrivilege != nil {
            map["AccountPrivilege"] = self.accountPrivilege!
        }
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.DBName != nil {
            map["DBName"] = self.DBName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.securityAccountName != nil {
            map["SecurityAccountName"] = self.securityAccountName!
        }
        if self.securityAccountPassword != nil {
            map["SecurityAccountPassword"] = self.securityAccountPassword!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountDescription"] as? String {
            self.accountDescription = value
        }
        if let value = dict["AccountName"] as? String {
            self.accountName = value
        }
        if let value = dict["AccountPassword"] as? String {
            self.accountPassword = value
        }
        if let value = dict["AccountPrivilege"] as? String {
            self.accountPrivilege = value
        }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["DBName"] as? String {
            self.DBName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SecurityAccountName"] as? String {
            self.securityAccountName = value
        }
        if let value = dict["SecurityAccountPassword"] as? String {
            self.securityAccountPassword = value
        }
    }
}

public class CreateAccountResponseBody : Tea.TeaModel {
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

public class CreateAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAccountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateAccountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateBackupRequest : Tea.TeaModel {
    public var backupType: String?

    public var DBInstanceName: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backupType != nil {
            map["BackupType"] = self.backupType!
        }
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupType"] as? String {
            self.backupType = value
        }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class CreateBackupResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var backupSetId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backupSetId != nil {
                map["BackupSetId"] = self.backupSetId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackupSetId"] as? String {
                self.backupSetId = value
            }
        }
    }
    public var data: CreateBackupResponseBody.Data?

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
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateBackupResponseBody.Data()
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

public class CreateBackupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateBackupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateBackupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDBRequest : Tea.TeaModel {
    public var accountName: String?

    public var accountPrivilege: String?

    public var charset: String?

    public var DBInstanceName: String?

    public var dbDescription: String?

    public var dbName: String?

    public var mode: String?

    public var regionId: String?

    public var securityAccountName: String?

    public var securityAccountPassword: String?

    public var storagePoolName: String?

    public override init() {
        super.init()
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
        if self.accountPrivilege != nil {
            map["AccountPrivilege"] = self.accountPrivilege!
        }
        if self.charset != nil {
            map["Charset"] = self.charset!
        }
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.dbDescription != nil {
            map["DbDescription"] = self.dbDescription!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.securityAccountName != nil {
            map["SecurityAccountName"] = self.securityAccountName!
        }
        if self.securityAccountPassword != nil {
            map["SecurityAccountPassword"] = self.securityAccountPassword!
        }
        if self.storagePoolName != nil {
            map["StoragePoolName"] = self.storagePoolName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountName"] as? String {
            self.accountName = value
        }
        if let value = dict["AccountPrivilege"] as? String {
            self.accountPrivilege = value
        }
        if let value = dict["Charset"] as? String {
            self.charset = value
        }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["DbDescription"] as? String {
            self.dbDescription = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["Mode"] as? String {
            self.mode = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SecurityAccountName"] as? String {
            self.securityAccountName = value
        }
        if let value = dict["SecurityAccountPassword"] as? String {
            self.securityAccountPassword = value
        }
        if let value = dict["StoragePoolName"] as? String {
            self.storagePoolName = value
        }
    }
}

public class CreateDBResponseBody : Tea.TeaModel {
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

public class CreateDBResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDBResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateDBResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDBInstanceRequest : Tea.TeaModel {
    public var autoRenew: Bool?

    public var CNNodeCount: Int32?

    public var clientToken: String?

    public var cnClass: String?

    public var DBNodeClass: String?

    public var DBNodeCount: Int32?

    public var DNNodeCount: Int32?

    public var dnClass: String?

    public var dnStorageSpace: String?

    public var engineVersion: String?

    public var extraParams: [String: String]?

    public var isColumnarReadDBInstance: Bool?

    public var isReadDBInstance: Bool?

    public var networkType: String?

    public var payType: String?

    public var period: String?

    public var primaryDBInstanceName: String?

    public var primaryZone: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var secondaryZone: String?

    public var series: String?

    public var tertiaryZone: String?

    public var topologyType: String?

    public var usedTime: Int32?

    public var VPCId: String?

    public var vSwitchId: String?

    public var zoneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.CNNodeCount != nil {
            map["CNNodeCount"] = self.CNNodeCount!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.cnClass != nil {
            map["CnClass"] = self.cnClass!
        }
        if self.DBNodeClass != nil {
            map["DBNodeClass"] = self.DBNodeClass!
        }
        if self.DBNodeCount != nil {
            map["DBNodeCount"] = self.DBNodeCount!
        }
        if self.DNNodeCount != nil {
            map["DNNodeCount"] = self.DNNodeCount!
        }
        if self.dnClass != nil {
            map["DnClass"] = self.dnClass!
        }
        if self.dnStorageSpace != nil {
            map["DnStorageSpace"] = self.dnStorageSpace!
        }
        if self.engineVersion != nil {
            map["EngineVersion"] = self.engineVersion!
        }
        if self.extraParams != nil {
            map["ExtraParams"] = self.extraParams!
        }
        if self.isColumnarReadDBInstance != nil {
            map["IsColumnarReadDBInstance"] = self.isColumnarReadDBInstance!
        }
        if self.isReadDBInstance != nil {
            map["IsReadDBInstance"] = self.isReadDBInstance!
        }
        if self.networkType != nil {
            map["NetworkType"] = self.networkType!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.primaryDBInstanceName != nil {
            map["PrimaryDBInstanceName"] = self.primaryDBInstanceName!
        }
        if self.primaryZone != nil {
            map["PrimaryZone"] = self.primaryZone!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.secondaryZone != nil {
            map["SecondaryZone"] = self.secondaryZone!
        }
        if self.series != nil {
            map["Series"] = self.series!
        }
        if self.tertiaryZone != nil {
            map["TertiaryZone"] = self.tertiaryZone!
        }
        if self.topologyType != nil {
            map["TopologyType"] = self.topologyType!
        }
        if self.usedTime != nil {
            map["UsedTime"] = self.usedTime!
        }
        if self.VPCId != nil {
            map["VPCId"] = self.VPCId!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoRenew"] as? Bool {
            self.autoRenew = value
        }
        if let value = dict["CNNodeCount"] as? Int32 {
            self.CNNodeCount = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["CnClass"] as? String {
            self.cnClass = value
        }
        if let value = dict["DBNodeClass"] as? String {
            self.DBNodeClass = value
        }
        if let value = dict["DBNodeCount"] as? Int32 {
            self.DBNodeCount = value
        }
        if let value = dict["DNNodeCount"] as? Int32 {
            self.DNNodeCount = value
        }
        if let value = dict["DnClass"] as? String {
            self.dnClass = value
        }
        if let value = dict["DnStorageSpace"] as? String {
            self.dnStorageSpace = value
        }
        if let value = dict["EngineVersion"] as? String {
            self.engineVersion = value
        }
        if let value = dict["ExtraParams"] as? [String: String] {
            self.extraParams = value
        }
        if let value = dict["IsColumnarReadDBInstance"] as? Bool {
            self.isColumnarReadDBInstance = value
        }
        if let value = dict["IsReadDBInstance"] as? Bool {
            self.isReadDBInstance = value
        }
        if let value = dict["NetworkType"] as? String {
            self.networkType = value
        }
        if let value = dict["PayType"] as? String {
            self.payType = value
        }
        if let value = dict["Period"] as? String {
            self.period = value
        }
        if let value = dict["PrimaryDBInstanceName"] as? String {
            self.primaryDBInstanceName = value
        }
        if let value = dict["PrimaryZone"] as? String {
            self.primaryZone = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["SecondaryZone"] as? String {
            self.secondaryZone = value
        }
        if let value = dict["Series"] as? String {
            self.series = value
        }
        if let value = dict["TertiaryZone"] as? String {
            self.tertiaryZone = value
        }
        if let value = dict["TopologyType"] as? String {
            self.topologyType = value
        }
        if let value = dict["UsedTime"] as? Int32 {
            self.usedTime = value
        }
        if let value = dict["VPCId"] as? String {
            self.VPCId = value
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class CreateDBInstanceShrinkRequest : Tea.TeaModel {
    public var autoRenew: Bool?

    public var CNNodeCount: Int32?

    public var clientToken: String?

    public var cnClass: String?

    public var DBNodeClass: String?

    public var DBNodeCount: Int32?

    public var DNNodeCount: Int32?

    public var dnClass: String?

    public var dnStorageSpace: String?

    public var engineVersion: String?

    public var extraParamsShrink: String?

    public var isColumnarReadDBInstance: Bool?

    public var isReadDBInstance: Bool?

    public var networkType: String?

    public var payType: String?

    public var period: String?

    public var primaryDBInstanceName: String?

    public var primaryZone: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var secondaryZone: String?

    public var series: String?

    public var tertiaryZone: String?

    public var topologyType: String?

    public var usedTime: Int32?

    public var VPCId: String?

    public var vSwitchId: String?

    public var zoneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.CNNodeCount != nil {
            map["CNNodeCount"] = self.CNNodeCount!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.cnClass != nil {
            map["CnClass"] = self.cnClass!
        }
        if self.DBNodeClass != nil {
            map["DBNodeClass"] = self.DBNodeClass!
        }
        if self.DBNodeCount != nil {
            map["DBNodeCount"] = self.DBNodeCount!
        }
        if self.DNNodeCount != nil {
            map["DNNodeCount"] = self.DNNodeCount!
        }
        if self.dnClass != nil {
            map["DnClass"] = self.dnClass!
        }
        if self.dnStorageSpace != nil {
            map["DnStorageSpace"] = self.dnStorageSpace!
        }
        if self.engineVersion != nil {
            map["EngineVersion"] = self.engineVersion!
        }
        if self.extraParamsShrink != nil {
            map["ExtraParams"] = self.extraParamsShrink!
        }
        if self.isColumnarReadDBInstance != nil {
            map["IsColumnarReadDBInstance"] = self.isColumnarReadDBInstance!
        }
        if self.isReadDBInstance != nil {
            map["IsReadDBInstance"] = self.isReadDBInstance!
        }
        if self.networkType != nil {
            map["NetworkType"] = self.networkType!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.primaryDBInstanceName != nil {
            map["PrimaryDBInstanceName"] = self.primaryDBInstanceName!
        }
        if self.primaryZone != nil {
            map["PrimaryZone"] = self.primaryZone!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.secondaryZone != nil {
            map["SecondaryZone"] = self.secondaryZone!
        }
        if self.series != nil {
            map["Series"] = self.series!
        }
        if self.tertiaryZone != nil {
            map["TertiaryZone"] = self.tertiaryZone!
        }
        if self.topologyType != nil {
            map["TopologyType"] = self.topologyType!
        }
        if self.usedTime != nil {
            map["UsedTime"] = self.usedTime!
        }
        if self.VPCId != nil {
            map["VPCId"] = self.VPCId!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoRenew"] as? Bool {
            self.autoRenew = value
        }
        if let value = dict["CNNodeCount"] as? Int32 {
            self.CNNodeCount = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["CnClass"] as? String {
            self.cnClass = value
        }
        if let value = dict["DBNodeClass"] as? String {
            self.DBNodeClass = value
        }
        if let value = dict["DBNodeCount"] as? Int32 {
            self.DBNodeCount = value
        }
        if let value = dict["DNNodeCount"] as? Int32 {
            self.DNNodeCount = value
        }
        if let value = dict["DnClass"] as? String {
            self.dnClass = value
        }
        if let value = dict["DnStorageSpace"] as? String {
            self.dnStorageSpace = value
        }
        if let value = dict["EngineVersion"] as? String {
            self.engineVersion = value
        }
        if let value = dict["ExtraParams"] as? String {
            self.extraParamsShrink = value
        }
        if let value = dict["IsColumnarReadDBInstance"] as? Bool {
            self.isColumnarReadDBInstance = value
        }
        if let value = dict["IsReadDBInstance"] as? Bool {
            self.isReadDBInstance = value
        }
        if let value = dict["NetworkType"] as? String {
            self.networkType = value
        }
        if let value = dict["PayType"] as? String {
            self.payType = value
        }
        if let value = dict["Period"] as? String {
            self.period = value
        }
        if let value = dict["PrimaryDBInstanceName"] as? String {
            self.primaryDBInstanceName = value
        }
        if let value = dict["PrimaryZone"] as? String {
            self.primaryZone = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["SecondaryZone"] as? String {
            self.secondaryZone = value
        }
        if let value = dict["Series"] as? String {
            self.series = value
        }
        if let value = dict["TertiaryZone"] as? String {
            self.tertiaryZone = value
        }
        if let value = dict["TopologyType"] as? String {
            self.topologyType = value
        }
        if let value = dict["UsedTime"] as? Int32 {
            self.usedTime = value
        }
        if let value = dict["VPCId"] as? String {
            self.VPCId = value
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class CreateDBInstanceResponseBody : Tea.TeaModel {
    public var DBInstanceName: String?

    public var orderId: String?

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
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateDBInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDBInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateDBInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSuperAccountRequest : Tea.TeaModel {
    public var accountDescription: String?

    public var accountName: String?

    public var accountPassword: String?

    public var DBInstanceName: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountDescription != nil {
            map["AccountDescription"] = self.accountDescription!
        }
        if self.accountName != nil {
            map["AccountName"] = self.accountName!
        }
        if self.accountPassword != nil {
            map["AccountPassword"] = self.accountPassword!
        }
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountDescription"] as? String {
            self.accountDescription = value
        }
        if let value = dict["AccountName"] as? String {
            self.accountName = value
        }
        if let value = dict["AccountPassword"] as? String {
            self.accountPassword = value
        }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class CreateSuperAccountResponseBody : Tea.TeaModel {
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

public class CreateSuperAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSuperAccountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateSuperAccountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAccountRequest : Tea.TeaModel {
    public var accountName: String?

    public var DBInstanceName: String?

    public var regionId: String?

    public var securityAccountName: String?

    public var securityAccountPassword: String?

    public override init() {
        super.init()
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
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.securityAccountName != nil {
            map["SecurityAccountName"] = self.securityAccountName!
        }
        if self.securityAccountPassword != nil {
            map["SecurityAccountPassword"] = self.securityAccountPassword!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountName"] as? String {
            self.accountName = value
        }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SecurityAccountName"] as? String {
            self.securityAccountName = value
        }
        if let value = dict["SecurityAccountPassword"] as? String {
            self.securityAccountPassword = value
        }
    }
}

public class DeleteAccountResponseBody : Tea.TeaModel {
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

public class DeleteAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAccountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteAccountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDBRequest : Tea.TeaModel {
    public var DBInstanceName: String?

    public var dbName: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteDBResponseBody : Tea.TeaModel {
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

public class DeleteDBResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDBResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteDBResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDBInstanceRequest : Tea.TeaModel {
    public var DBInstanceName: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DeleteDBInstanceResponseBody : Tea.TeaModel {
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

public class DeleteDBInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDBInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteDBInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAccountListRequest : Tea.TeaModel {
    public var accountName: String?

    public var accountType: String?

    public var DBInstanceName: String?

    public var regionId: String?

    public override init() {
        super.init()
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
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountName"] as? String {
            self.accountName = value
        }
        if let value = dict["AccountType"] as? String {
            self.accountType = value
        }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeAccountListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accountDescription: String?

        public var accountName: String?

        public var accountPrivilege: String?

        public var accountType: String?

        public var DBInstanceName: String?

        public var DBName: String?

        public var gmtCreated: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountDescription != nil {
                map["AccountDescription"] = self.accountDescription!
            }
            if self.accountName != nil {
                map["AccountName"] = self.accountName!
            }
            if self.accountPrivilege != nil {
                map["AccountPrivilege"] = self.accountPrivilege!
            }
            if self.accountType != nil {
                map["AccountType"] = self.accountType!
            }
            if self.DBInstanceName != nil {
                map["DBInstanceName"] = self.DBInstanceName!
            }
            if self.DBName != nil {
                map["DBName"] = self.DBName!
            }
            if self.gmtCreated != nil {
                map["GmtCreated"] = self.gmtCreated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountDescription"] as? String {
                self.accountDescription = value
            }
            if let value = dict["AccountName"] as? String {
                self.accountName = value
            }
            if let value = dict["AccountPrivilege"] as? String {
                self.accountPrivilege = value
            }
            if let value = dict["AccountType"] as? String {
                self.accountType = value
            }
            if let value = dict["DBInstanceName"] as? String {
                self.DBInstanceName = value
            }
            if let value = dict["DBName"] as? String {
                self.DBName = value
            }
            if let value = dict["GmtCreated"] as? String {
                self.gmtCreated = value
            }
        }
    }
    public var data: [DescribeAccountListResponseBody.Data]?

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
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeAccountListResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeAccountListResponseBody.Data()
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

public class DescribeAccountListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAccountListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeAccountListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeActiveOperationMaintainConfRequest : Tea.TeaModel {
    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeActiveOperationMaintainConfResponseBody : Tea.TeaModel {
    public class Config : Tea.TeaModel {
        public var createdTime: String?

        public var cycleTime: String?

        public var cycleType: String?

        public var maintainEndTime: String?

        public var maintainStartTime: String?

        public var modifiedTime: String?

        public var status: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdTime != nil {
                map["CreatedTime"] = self.createdTime!
            }
            if self.cycleTime != nil {
                map["CycleTime"] = self.cycleTime!
            }
            if self.cycleType != nil {
                map["CycleType"] = self.cycleType!
            }
            if self.maintainEndTime != nil {
                map["MaintainEndTime"] = self.maintainEndTime!
            }
            if self.maintainStartTime != nil {
                map["MaintainStartTime"] = self.maintainStartTime!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreatedTime"] as? String {
                self.createdTime = value
            }
            if let value = dict["CycleTime"] as? String {
                self.cycleTime = value
            }
            if let value = dict["CycleType"] as? String {
                self.cycleType = value
            }
            if let value = dict["MaintainEndTime"] as? String {
                self.maintainEndTime = value
            }
            if let value = dict["MaintainStartTime"] as? String {
                self.maintainStartTime = value
            }
            if let value = dict["ModifiedTime"] as? String {
                self.modifiedTime = value
            }
            if let value = dict["Status"] as? Int64 {
                self.status = value
            }
        }
    }
    public var config: DescribeActiveOperationMaintainConfResponseBody.Config?

    public var hasConfig: Int64?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.config?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.config != nil {
            map["Config"] = self.config?.toMap()
        }
        if self.hasConfig != nil {
            map["HasConfig"] = self.hasConfig!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Config"] as? [String: Any?] {
            var model = DescribeActiveOperationMaintainConfResponseBody.Config()
            model.fromMap(value)
            self.config = model
        }
        if let value = dict["HasConfig"] as? Int64 {
            self.hasConfig = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeActiveOperationMaintainConfResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeActiveOperationMaintainConfResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeActiveOperationMaintainConfResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeActiveOperationTaskCountRequest : Tea.TeaModel {
    public var category: String?

    public var product: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.category != nil {
            map["Category"] = self.category!
        }
        if self.product != nil {
            map["Product"] = self.product!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Category"] as? String {
            self.category = value
        }
        if let value = dict["Product"] as? String {
            self.product = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeActiveOperationTaskCountResponseBody : Tea.TeaModel {
    public var needPop: Int64?

    public var requestId: String?

    public var taskCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.needPop != nil {
            map["NeedPop"] = self.needPop!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskCount != nil {
            map["TaskCount"] = self.taskCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NeedPop"] as? Int64 {
            self.needPop = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskCount"] as? Int64 {
            self.taskCount = value
        }
    }
}

public class DescribeActiveOperationTaskCountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeActiveOperationTaskCountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeActiveOperationTaskCountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeActiveOperationTasksRequest : Tea.TeaModel {
    public var allowCancel: Int64?

    public var allowChange: Int64?

    public var changeLevel: String?

    public var dbType: String?

    public var insName: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var productId: String?

    public var region: String?

    public var regionId: String?

    public var status: Int64?

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
        if self.allowCancel != nil {
            map["AllowCancel"] = self.allowCancel!
        }
        if self.allowChange != nil {
            map["AllowChange"] = self.allowChange!
        }
        if self.changeLevel != nil {
            map["ChangeLevel"] = self.changeLevel!
        }
        if self.dbType != nil {
            map["DbType"] = self.dbType!
        }
        if self.insName != nil {
            map["InsName"] = self.insName!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllowCancel"] as? Int64 {
            self.allowCancel = value
        }
        if let value = dict["AllowChange"] as? Int64 {
            self.allowChange = value
        }
        if let value = dict["ChangeLevel"] as? String {
            self.changeLevel = value
        }
        if let value = dict["DbType"] as? String {
            self.dbType = value
        }
        if let value = dict["InsName"] as? String {
            self.insName = value
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["ProductId"] as? String {
            self.productId = value
        }
        if let value = dict["Region"] as? String {
            self.region = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Status"] as? Int64 {
            self.status = value
        }
        if let value = dict["TaskType"] as? String {
            self.taskType = value
        }
    }
}

public class DescribeActiveOperationTasksResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var allowCancel: String?

        public var allowChange: String?

        public var changeLevel: String?

        public var changeLevelEn: String?

        public var changeLevelZh: String?

        public var createdTime: String?

        public var currentAVZ: String?

        public var dbType: String?

        public var dbVersion: String?

        public var deadline: String?

        public var id: Int64?

        public var impact: String?

        public var impactEn: String?

        public var impactZh: String?

        public var insComment: String?

        public var insName: String?

        public var modifiedTime: String?

        public var prepareInterval: String?

        public var region: String?

        public var resultInfo: String?

        public var startTime: String?

        public var status: Int64?

        public var subInsNames: [String]?

        public var switchTime: String?

        public var taskType: String?

        public var taskTypeEn: String?

        public var taskTypeZh: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allowCancel != nil {
                map["AllowCancel"] = self.allowCancel!
            }
            if self.allowChange != nil {
                map["AllowChange"] = self.allowChange!
            }
            if self.changeLevel != nil {
                map["ChangeLevel"] = self.changeLevel!
            }
            if self.changeLevelEn != nil {
                map["ChangeLevelEn"] = self.changeLevelEn!
            }
            if self.changeLevelZh != nil {
                map["ChangeLevelZh"] = self.changeLevelZh!
            }
            if self.createdTime != nil {
                map["CreatedTime"] = self.createdTime!
            }
            if self.currentAVZ != nil {
                map["CurrentAVZ"] = self.currentAVZ!
            }
            if self.dbType != nil {
                map["DbType"] = self.dbType!
            }
            if self.dbVersion != nil {
                map["DbVersion"] = self.dbVersion!
            }
            if self.deadline != nil {
                map["Deadline"] = self.deadline!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.impact != nil {
                map["Impact"] = self.impact!
            }
            if self.impactEn != nil {
                map["ImpactEn"] = self.impactEn!
            }
            if self.impactZh != nil {
                map["ImpactZh"] = self.impactZh!
            }
            if self.insComment != nil {
                map["InsComment"] = self.insComment!
            }
            if self.insName != nil {
                map["InsName"] = self.insName!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.prepareInterval != nil {
                map["PrepareInterval"] = self.prepareInterval!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.resultInfo != nil {
                map["ResultInfo"] = self.resultInfo!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.subInsNames != nil {
                map["SubInsNames"] = self.subInsNames!
            }
            if self.switchTime != nil {
                map["SwitchTime"] = self.switchTime!
            }
            if self.taskType != nil {
                map["TaskType"] = self.taskType!
            }
            if self.taskTypeEn != nil {
                map["TaskTypeEn"] = self.taskTypeEn!
            }
            if self.taskTypeZh != nil {
                map["TaskTypeZh"] = self.taskTypeZh!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AllowCancel"] as? String {
                self.allowCancel = value
            }
            if let value = dict["AllowChange"] as? String {
                self.allowChange = value
            }
            if let value = dict["ChangeLevel"] as? String {
                self.changeLevel = value
            }
            if let value = dict["ChangeLevelEn"] as? String {
                self.changeLevelEn = value
            }
            if let value = dict["ChangeLevelZh"] as? String {
                self.changeLevelZh = value
            }
            if let value = dict["CreatedTime"] as? String {
                self.createdTime = value
            }
            if let value = dict["CurrentAVZ"] as? String {
                self.currentAVZ = value
            }
            if let value = dict["DbType"] as? String {
                self.dbType = value
            }
            if let value = dict["DbVersion"] as? String {
                self.dbVersion = value
            }
            if let value = dict["Deadline"] as? String {
                self.deadline = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["Impact"] as? String {
                self.impact = value
            }
            if let value = dict["ImpactEn"] as? String {
                self.impactEn = value
            }
            if let value = dict["ImpactZh"] as? String {
                self.impactZh = value
            }
            if let value = dict["InsComment"] as? String {
                self.insComment = value
            }
            if let value = dict["InsName"] as? String {
                self.insName = value
            }
            if let value = dict["ModifiedTime"] as? String {
                self.modifiedTime = value
            }
            if let value = dict["PrepareInterval"] as? String {
                self.prepareInterval = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
            if let value = dict["ResultInfo"] as? String {
                self.resultInfo = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["Status"] as? Int64 {
                self.status = value
            }
            if let value = dict["SubInsNames"] as? [String] {
                self.subInsNames = value
            }
            if let value = dict["SwitchTime"] as? String {
                self.switchTime = value
            }
            if let value = dict["TaskType"] as? String {
                self.taskType = value
            }
            if let value = dict["TaskTypeEn"] as? String {
                self.taskTypeEn = value
            }
            if let value = dict["TaskTypeZh"] as? String {
                self.taskTypeZh = value
            }
        }
    }
    public var items: [DescribeActiveOperationTasksResponseBody.Items]?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var totalRecordCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalRecordCount != nil {
            map["TotalRecordCount"] = self.totalRecordCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [DescribeActiveOperationTasksResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = DescribeActiveOperationTasksResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalRecordCount"] as? Int64 {
            self.totalRecordCount = value
        }
    }
}

public class DescribeActiveOperationTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeActiveOperationTasksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeActiveOperationTasksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeArchiveTableListRequest : Tea.TeaModel {
    public var DBInstanceName: String?

    public var pageIndex: Int64?

    public var pageSize: Int64?

    public var regionId: String?

    public var schemaName: String?

    public var status: String?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.schemaName != nil {
            map["SchemaName"] = self.schemaName!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["PageIndex"] as? Int64 {
            self.pageIndex = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SchemaName"] as? String {
            self.schemaName = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class DescribeArchiveTableListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Tables : Tea.TeaModel {
            public var archiveStatus: String?

            public var createdDate: Int64?

            public var fileCount: Int32?

            public var lastSuccessArchiveTime: Int64?

            public var schemaName: String?

            public var spaceSize: Double?

            public var tableName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.archiveStatus != nil {
                    map["ArchiveStatus"] = self.archiveStatus!
                }
                if self.createdDate != nil {
                    map["CreatedDate"] = self.createdDate!
                }
                if self.fileCount != nil {
                    map["FileCount"] = self.fileCount!
                }
                if self.lastSuccessArchiveTime != nil {
                    map["LastSuccessArchiveTime"] = self.lastSuccessArchiveTime!
                }
                if self.schemaName != nil {
                    map["SchemaName"] = self.schemaName!
                }
                if self.spaceSize != nil {
                    map["SpaceSize"] = self.spaceSize!
                }
                if self.tableName != nil {
                    map["TableName"] = self.tableName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ArchiveStatus"] as? String {
                    self.archiveStatus = value
                }
                if let value = dict["CreatedDate"] as? Int64 {
                    self.createdDate = value
                }
                if let value = dict["FileCount"] as? Int32 {
                    self.fileCount = value
                }
                if let value = dict["LastSuccessArchiveTime"] as? Int64 {
                    self.lastSuccessArchiveTime = value
                }
                if let value = dict["SchemaName"] as? String {
                    self.schemaName = value
                }
                if let value = dict["SpaceSize"] as? Double {
                    self.spaceSize = value
                }
                if let value = dict["TableName"] as? String {
                    self.tableName = value
                }
            }
        }
        public var pageIndex: Int64?

        public var pageSize: Int64?

        public var pausedCount: Int32?

        public var runningCount: Int32?

        public var successCount: Int32?

        public var tables: [DescribeArchiveTableListResponseBody.Data.Tables]?

        public var tobeArchivedConut: Int32?

        public var total: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pageIndex != nil {
                map["PageIndex"] = self.pageIndex!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.pausedCount != nil {
                map["PausedCount"] = self.pausedCount!
            }
            if self.runningCount != nil {
                map["RunningCount"] = self.runningCount!
            }
            if self.successCount != nil {
                map["SuccessCount"] = self.successCount!
            }
            if self.tables != nil {
                var tmp : [Any] = []
                for k in self.tables! {
                    tmp.append(k.toMap())
                }
                map["Tables"] = tmp
            }
            if self.tobeArchivedConut != nil {
                map["TobeArchivedConut"] = self.tobeArchivedConut!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PageIndex"] as? Int64 {
                self.pageIndex = value
            }
            if let value = dict["PageSize"] as? Int64 {
                self.pageSize = value
            }
            if let value = dict["PausedCount"] as? Int32 {
                self.pausedCount = value
            }
            if let value = dict["RunningCount"] as? Int32 {
                self.runningCount = value
            }
            if let value = dict["SuccessCount"] as? Int32 {
                self.successCount = value
            }
            if let value = dict["Tables"] as? [Any?] {
                var tmp : [DescribeArchiveTableListResponseBody.Data.Tables] = []
                for v in value {
                    if v != nil {
                        var model = DescribeArchiveTableListResponseBody.Data.Tables()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tables = tmp
            }
            if let value = dict["TobeArchivedConut"] as? Int32 {
                self.tobeArchivedConut = value
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var data: DescribeArchiveTableListResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeArchiveTableListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeArchiveTableListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeArchiveTableListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeArchiveTableListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeBackupPolicyRequest : Tea.TeaModel {
    public var DBInstanceName: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeBackupPolicyResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var backupPeriod: String?

        public var backupPlanBegin: String?

        public var backupSetRetention: Int32?

        public var backupType: String?

        public var backupWay: String?

        public var coldDataBackupInterval: Int32?

        public var coldDataBackupRetention: Int32?

        public var crossRegionDataBackupRetention: Int32?

        public var crossRegionLogBackupRetention: Int32?

        public var DBInstanceName: String?

        public var destCrossRegion: String?

        public var forceCleanOnHighSpaceUsage: Int32?

        public var isCrossRegionDataBackupEnabled: Bool?

        public var isCrossRegionLogBackupEnabled: Bool?

        public var isEnabled: Int32?

        public var localLogRetention: Int32?

        public var localLogRetentionNumber: Int32?

        public var logLocalRetentionSpace: Int32?

        public var removeLogRetention: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backupPeriod != nil {
                map["BackupPeriod"] = self.backupPeriod!
            }
            if self.backupPlanBegin != nil {
                map["BackupPlanBegin"] = self.backupPlanBegin!
            }
            if self.backupSetRetention != nil {
                map["BackupSetRetention"] = self.backupSetRetention!
            }
            if self.backupType != nil {
                map["BackupType"] = self.backupType!
            }
            if self.backupWay != nil {
                map["BackupWay"] = self.backupWay!
            }
            if self.coldDataBackupInterval != nil {
                map["ColdDataBackupInterval"] = self.coldDataBackupInterval!
            }
            if self.coldDataBackupRetention != nil {
                map["ColdDataBackupRetention"] = self.coldDataBackupRetention!
            }
            if self.crossRegionDataBackupRetention != nil {
                map["CrossRegionDataBackupRetention"] = self.crossRegionDataBackupRetention!
            }
            if self.crossRegionLogBackupRetention != nil {
                map["CrossRegionLogBackupRetention"] = self.crossRegionLogBackupRetention!
            }
            if self.DBInstanceName != nil {
                map["DBInstanceName"] = self.DBInstanceName!
            }
            if self.destCrossRegion != nil {
                map["DestCrossRegion"] = self.destCrossRegion!
            }
            if self.forceCleanOnHighSpaceUsage != nil {
                map["ForceCleanOnHighSpaceUsage"] = self.forceCleanOnHighSpaceUsage!
            }
            if self.isCrossRegionDataBackupEnabled != nil {
                map["IsCrossRegionDataBackupEnabled"] = self.isCrossRegionDataBackupEnabled!
            }
            if self.isCrossRegionLogBackupEnabled != nil {
                map["IsCrossRegionLogBackupEnabled"] = self.isCrossRegionLogBackupEnabled!
            }
            if self.isEnabled != nil {
                map["IsEnabled"] = self.isEnabled!
            }
            if self.localLogRetention != nil {
                map["LocalLogRetention"] = self.localLogRetention!
            }
            if self.localLogRetentionNumber != nil {
                map["LocalLogRetentionNumber"] = self.localLogRetentionNumber!
            }
            if self.logLocalRetentionSpace != nil {
                map["LogLocalRetentionSpace"] = self.logLocalRetentionSpace!
            }
            if self.removeLogRetention != nil {
                map["RemoveLogRetention"] = self.removeLogRetention!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackupPeriod"] as? String {
                self.backupPeriod = value
            }
            if let value = dict["BackupPlanBegin"] as? String {
                self.backupPlanBegin = value
            }
            if let value = dict["BackupSetRetention"] as? Int32 {
                self.backupSetRetention = value
            }
            if let value = dict["BackupType"] as? String {
                self.backupType = value
            }
            if let value = dict["BackupWay"] as? String {
                self.backupWay = value
            }
            if let value = dict["ColdDataBackupInterval"] as? Int32 {
                self.coldDataBackupInterval = value
            }
            if let value = dict["ColdDataBackupRetention"] as? Int32 {
                self.coldDataBackupRetention = value
            }
            if let value = dict["CrossRegionDataBackupRetention"] as? Int32 {
                self.crossRegionDataBackupRetention = value
            }
            if let value = dict["CrossRegionLogBackupRetention"] as? Int32 {
                self.crossRegionLogBackupRetention = value
            }
            if let value = dict["DBInstanceName"] as? String {
                self.DBInstanceName = value
            }
            if let value = dict["DestCrossRegion"] as? String {
                self.destCrossRegion = value
            }
            if let value = dict["ForceCleanOnHighSpaceUsage"] as? Int32 {
                self.forceCleanOnHighSpaceUsage = value
            }
            if let value = dict["IsCrossRegionDataBackupEnabled"] as? Bool {
                self.isCrossRegionDataBackupEnabled = value
            }
            if let value = dict["IsCrossRegionLogBackupEnabled"] as? Bool {
                self.isCrossRegionLogBackupEnabled = value
            }
            if let value = dict["IsEnabled"] as? Int32 {
                self.isEnabled = value
            }
            if let value = dict["LocalLogRetention"] as? Int32 {
                self.localLogRetention = value
            }
            if let value = dict["LocalLogRetentionNumber"] as? Int32 {
                self.localLogRetentionNumber = value
            }
            if let value = dict["LogLocalRetentionSpace"] as? Int32 {
                self.logLocalRetentionSpace = value
            }
            if let value = dict["RemoveLogRetention"] as? Int32 {
                self.removeLogRetention = value
            }
        }
    }
    public var data: DescribeBackupPolicyResponseBody.Data?

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
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeBackupPolicyResponseBody.Data()
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

public class DescribeBackupPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBackupPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeBackupPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeBackupSetRequest : Tea.TeaModel {
    public var backupSetId: String?

    public var DBInstanceName: String?

    public var destCrossRegion: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backupSetId != nil {
            map["BackupSetId"] = self.backupSetId!
        }
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.destCrossRegion != nil {
            map["DestCrossRegion"] = self.destCrossRegion!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupSetId"] as? String {
            self.backupSetId = value
        }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["DestCrossRegion"] as? String {
            self.destCrossRegion = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeBackupSetResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class OSSList : Tea.TeaModel {
            public var backupSetFile: String?

            public var downloadLink: String?

            public var intranetDownloadLink: String?

            public var linkExpiredTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.backupSetFile != nil {
                    map["BackupSetFile"] = self.backupSetFile!
                }
                if self.downloadLink != nil {
                    map["DownloadLink"] = self.downloadLink!
                }
                if self.intranetDownloadLink != nil {
                    map["IntranetDownloadLink"] = self.intranetDownloadLink!
                }
                if self.linkExpiredTime != nil {
                    map["LinkExpiredTime"] = self.linkExpiredTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BackupSetFile"] as? String {
                    self.backupSetFile = value
                }
                if let value = dict["DownloadLink"] as? String {
                    self.downloadLink = value
                }
                if let value = dict["IntranetDownloadLink"] as? String {
                    self.intranetDownloadLink = value
                }
                if let value = dict["LinkExpiredTime"] as? String {
                    self.linkExpiredTime = value
                }
            }
        }
        public var backupModel: Int32?

        public var backupSetId: Int64?

        public var backupSetSize: Int64?

        public var backupType: Int32?

        public var beginTime: Int64?

        public var endTime: Int64?

        public var OSSList: [DescribeBackupSetResponseBody.Data.OSSList]?

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
            if self.backupModel != nil {
                map["BackupModel"] = self.backupModel!
            }
            if self.backupSetId != nil {
                map["BackupSetId"] = self.backupSetId!
            }
            if self.backupSetSize != nil {
                map["BackupSetSize"] = self.backupSetSize!
            }
            if self.backupType != nil {
                map["BackupType"] = self.backupType!
            }
            if self.beginTime != nil {
                map["BeginTime"] = self.beginTime!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.OSSList != nil {
                var tmp : [Any] = []
                for k in self.OSSList! {
                    tmp.append(k.toMap())
                }
                map["OSSList"] = tmp
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackupModel"] as? Int32 {
                self.backupModel = value
            }
            if let value = dict["BackupSetId"] as? Int64 {
                self.backupSetId = value
            }
            if let value = dict["BackupSetSize"] as? Int64 {
                self.backupSetSize = value
            }
            if let value = dict["BackupType"] as? Int32 {
                self.backupType = value
            }
            if let value = dict["BeginTime"] as? Int64 {
                self.beginTime = value
            }
            if let value = dict["EndTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["OSSList"] as? [Any?] {
                var tmp : [DescribeBackupSetResponseBody.Data.OSSList] = []
                for v in value {
                    if v != nil {
                        var model = DescribeBackupSetResponseBody.Data.OSSList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.OSSList = tmp
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
        }
    }
    public var data: [DescribeBackupSetResponseBody.Data]?

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
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeBackupSetResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeBackupSetResponseBody.Data()
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

public class DescribeBackupSetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBackupSetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeBackupSetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeBackupSetListRequest : Tea.TeaModel {
    public var DBInstanceName: String?

    public var destCrossRegion: String?

    public var endTime: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.destCrossRegion != nil {
            map["DestCrossRegion"] = self.destCrossRegion!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["DestCrossRegion"] as? String {
            self.destCrossRegion = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribeBackupSetListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var backupModel: Int32?

        public var backupSetId: String?

        public var backupSetSize: Int64?

        public var backupType: Int32?

        public var beginTime: Int64?

        public var endTime: Int64?

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
            if self.backupModel != nil {
                map["BackupModel"] = self.backupModel!
            }
            if self.backupSetId != nil {
                map["BackupSetId"] = self.backupSetId!
            }
            if self.backupSetSize != nil {
                map["BackupSetSize"] = self.backupSetSize!
            }
            if self.backupType != nil {
                map["BackupType"] = self.backupType!
            }
            if self.beginTime != nil {
                map["BeginTime"] = self.beginTime!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackupModel"] as? Int32 {
                self.backupModel = value
            }
            if let value = dict["BackupSetId"] as? String {
                self.backupSetId = value
            }
            if let value = dict["BackupSetSize"] as? Int64 {
                self.backupSetSize = value
            }
            if let value = dict["BackupType"] as? Int32 {
                self.backupType = value
            }
            if let value = dict["BeginTime"] as? Int64 {
                self.beginTime = value
            }
            if let value = dict["EndTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
        }
    }
    public var data: [DescribeBackupSetListResponseBody.Data]?

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
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeBackupSetListResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeBackupSetListResponseBody.Data()
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

public class DescribeBackupSetListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBackupSetListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeBackupSetListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeBinaryLogListRequest : Tea.TeaModel {
    public var DBInstanceName: String?

    public var endTime: String?

    public var instanceName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class DescribeBinaryLogListResponseBody : Tea.TeaModel {
    public class LogList : Tea.TeaModel {
        public var beginTime: String?

        public var createdTime: String?

        public var downloadLink: String?

        public var endTime: String?

        public var fileName: String?

        public var id: Int64?

        public var logSize: Int64?

        public var modifiedTime: String?

        public var purgeStatus: Int32?

        public var uploadHost: String?

        public var uploadStatus: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.beginTime != nil {
                map["BeginTime"] = self.beginTime!
            }
            if self.createdTime != nil {
                map["CreatedTime"] = self.createdTime!
            }
            if self.downloadLink != nil {
                map["DownloadLink"] = self.downloadLink!
            }
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.fileName != nil {
                map["FileName"] = self.fileName!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.logSize != nil {
                map["LogSize"] = self.logSize!
            }
            if self.modifiedTime != nil {
                map["ModifiedTime"] = self.modifiedTime!
            }
            if self.purgeStatus != nil {
                map["PurgeStatus"] = self.purgeStatus!
            }
            if self.uploadHost != nil {
                map["UploadHost"] = self.uploadHost!
            }
            if self.uploadStatus != nil {
                map["UploadStatus"] = self.uploadStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BeginTime"] as? String {
                self.beginTime = value
            }
            if let value = dict["CreatedTime"] as? String {
                self.createdTime = value
            }
            if let value = dict["DownloadLink"] as? String {
                self.downloadLink = value
            }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["FileName"] as? String {
                self.fileName = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["LogSize"] as? Int64 {
                self.logSize = value
            }
            if let value = dict["ModifiedTime"] as? String {
                self.modifiedTime = value
            }
            if let value = dict["PurgeStatus"] as? Int32 {
                self.purgeStatus = value
            }
            if let value = dict["UploadHost"] as? String {
                self.uploadHost = value
            }
            if let value = dict["UploadStatus"] as? Int32 {
                self.uploadStatus = value
            }
        }
    }
    public var logList: [DescribeBinaryLogListResponseBody.LogList]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalNumber: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.logList != nil {
            var tmp : [Any] = []
            for k in self.logList! {
                tmp.append(k.toMap())
            }
            map["LogList"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalNumber != nil {
            map["TotalNumber"] = self.totalNumber!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LogList"] as? [Any?] {
            var tmp : [DescribeBinaryLogListResponseBody.LogList] = []
            for v in value {
                if v != nil {
                    var model = DescribeBinaryLogListResponseBody.LogList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.logList = tmp
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalNumber"] as? Int32 {
            self.totalNumber = value
        }
    }
}

public class DescribeBinaryLogListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBinaryLogListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeBinaryLogListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeCdcInfoRequest : Tea.TeaModel {
    public var DBInstanceName: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeCdcInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class InstanceTopologyList : Tea.TeaModel {
            public class PhysicalNodes : Tea.TeaModel {
                public var AZone: String?

                public var disk: Int32?

                public var nodeClass: String?

                public var nodeId: String?

                public var nodeName: String?

                public var status: String?

                public var version: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.AZone != nil {
                        map["AZone"] = self.AZone!
                    }
                    if self.disk != nil {
                        map["Disk"] = self.disk!
                    }
                    if self.nodeClass != nil {
                        map["NodeClass"] = self.nodeClass!
                    }
                    if self.nodeId != nil {
                        map["NodeId"] = self.nodeId!
                    }
                    if self.nodeName != nil {
                        map["NodeName"] = self.nodeName!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    if self.version != nil {
                        map["Version"] = self.version!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AZone"] as? String {
                        self.AZone = value
                    }
                    if let value = dict["Disk"] as? Int32 {
                        self.disk = value
                    }
                    if let value = dict["NodeClass"] as? String {
                        self.nodeClass = value
                    }
                    if let value = dict["NodeId"] as? String {
                        self.nodeId = value
                    }
                    if let value = dict["NodeName"] as? String {
                        self.nodeName = value
                    }
                    if let value = dict["Status"] as? String {
                        self.status = value
                    }
                    if let value = dict["Version"] as? String {
                        self.version = value
                    }
                }
            }
            public var clusterType: String?

            public var comment: String?

            public var groupName: String?

            public var hashLevel: String?

            public var instanceName: String?

            public var physicalNodes: [DescribeCdcInfoResponseBody.Data.InstanceTopologyList.PhysicalNodes]?

            public var streamNum: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.clusterType != nil {
                    map["ClusterType"] = self.clusterType!
                }
                if self.comment != nil {
                    map["Comment"] = self.comment!
                }
                if self.groupName != nil {
                    map["GroupName"] = self.groupName!
                }
                if self.hashLevel != nil {
                    map["HashLevel"] = self.hashLevel!
                }
                if self.instanceName != nil {
                    map["InstanceName"] = self.instanceName!
                }
                if self.physicalNodes != nil {
                    var tmp : [Any] = []
                    for k in self.physicalNodes! {
                        tmp.append(k.toMap())
                    }
                    map["PhysicalNodes"] = tmp
                }
                if self.streamNum != nil {
                    map["StreamNum"] = self.streamNum!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ClusterType"] as? String {
                    self.clusterType = value
                }
                if let value = dict["Comment"] as? String {
                    self.comment = value
                }
                if let value = dict["GroupName"] as? String {
                    self.groupName = value
                }
                if let value = dict["HashLevel"] as? String {
                    self.hashLevel = value
                }
                if let value = dict["InstanceName"] as? String {
                    self.instanceName = value
                }
                if let value = dict["PhysicalNodes"] as? [Any?] {
                    var tmp : [DescribeCdcInfoResponseBody.Data.InstanceTopologyList.PhysicalNodes] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeCdcInfoResponseBody.Data.InstanceTopologyList.PhysicalNodes()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.physicalNodes = tmp
                }
                if let value = dict["StreamNum"] as? Int32 {
                    self.streamNum = value
                }
            }
        }
        public var binlogPersistTime: Int32?

        public var binlogSize: Int32?

        public var cdcNewVersion: String?

        public var checkSumSwitch: String?

        public var enableCyclicReplication: Bool?

        public var instanceTopologyList: [DescribeCdcInfoResponseBody.Data.InstanceTopologyList]?

        public var serverId: Int32?

        public var versionSupportMultiCdc: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.binlogPersistTime != nil {
                map["BinlogPersistTime"] = self.binlogPersistTime!
            }
            if self.binlogSize != nil {
                map["BinlogSize"] = self.binlogSize!
            }
            if self.cdcNewVersion != nil {
                map["CdcNewVersion"] = self.cdcNewVersion!
            }
            if self.checkSumSwitch != nil {
                map["CheckSumSwitch"] = self.checkSumSwitch!
            }
            if self.enableCyclicReplication != nil {
                map["EnableCyclicReplication"] = self.enableCyclicReplication!
            }
            if self.instanceTopologyList != nil {
                var tmp : [Any] = []
                for k in self.instanceTopologyList! {
                    tmp.append(k.toMap())
                }
                map["InstanceTopologyList"] = tmp
            }
            if self.serverId != nil {
                map["ServerId"] = self.serverId!
            }
            if self.versionSupportMultiCdc != nil {
                map["VersionSupportMultiCdc"] = self.versionSupportMultiCdc!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BinlogPersistTime"] as? Int32 {
                self.binlogPersistTime = value
            }
            if let value = dict["BinlogSize"] as? Int32 {
                self.binlogSize = value
            }
            if let value = dict["CdcNewVersion"] as? String {
                self.cdcNewVersion = value
            }
            if let value = dict["CheckSumSwitch"] as? String {
                self.checkSumSwitch = value
            }
            if let value = dict["EnableCyclicReplication"] as? Bool {
                self.enableCyclicReplication = value
            }
            if let value = dict["InstanceTopologyList"] as? [Any?] {
                var tmp : [DescribeCdcInfoResponseBody.Data.InstanceTopologyList] = []
                for v in value {
                    if v != nil {
                        var model = DescribeCdcInfoResponseBody.Data.InstanceTopologyList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.instanceTopologyList = tmp
            }
            if let value = dict["ServerId"] as? Int32 {
                self.serverId = value
            }
            if let value = dict["VersionSupportMultiCdc"] as? Bool {
                self.versionSupportMultiCdc = value
            }
        }
    }
    public var data: DescribeCdcInfoResponseBody.Data?

    public var httpStatusCode: Int32?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeCdcInfoResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeCdcInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCdcInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeCdcInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeCharacterSetRequest : Tea.TeaModel {
    public var DBInstanceName: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeCharacterSetResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var characterSet: [String]?

        public var engine: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.characterSet != nil {
                map["CharacterSet"] = self.characterSet!
            }
            if self.engine != nil {
                map["Engine"] = self.engine!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CharacterSet"] as? [String] {
                self.characterSet = value
            }
            if let value = dict["Engine"] as? String {
                self.engine = value
            }
        }
    }
    public var data: DescribeCharacterSetResponseBody.Data?

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
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeCharacterSetResponseBody.Data()
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

public class DescribeCharacterSetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCharacterSetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeCharacterSetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeColdDataBasicInfoRequest : Tea.TeaModel {
    public var DBInstanceName: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeColdDataBasicInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var backupSetCount: Int32?

        public var backupSetSpaceSize: Double?

        public var cloudProduct: String?

        public var currentSpaceSize: Double?

        public var dataRedundancyType: String?

        public var enableStatus: Bool?

        public var readAccessNum: Int64?

        public var regionId: String?

        public var volumeName: String?

        public var writeAccessNum: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backupSetCount != nil {
                map["BackupSetCount"] = self.backupSetCount!
            }
            if self.backupSetSpaceSize != nil {
                map["BackupSetSpaceSize"] = self.backupSetSpaceSize!
            }
            if self.cloudProduct != nil {
                map["CloudProduct"] = self.cloudProduct!
            }
            if self.currentSpaceSize != nil {
                map["CurrentSpaceSize"] = self.currentSpaceSize!
            }
            if self.dataRedundancyType != nil {
                map["DataRedundancyType"] = self.dataRedundancyType!
            }
            if self.enableStatus != nil {
                map["EnableStatus"] = self.enableStatus!
            }
            if self.readAccessNum != nil {
                map["ReadAccessNum"] = self.readAccessNum!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.volumeName != nil {
                map["VolumeName"] = self.volumeName!
            }
            if self.writeAccessNum != nil {
                map["WriteAccessNum"] = self.writeAccessNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackupSetCount"] as? Int32 {
                self.backupSetCount = value
            }
            if let value = dict["BackupSetSpaceSize"] as? Double {
                self.backupSetSpaceSize = value
            }
            if let value = dict["CloudProduct"] as? String {
                self.cloudProduct = value
            }
            if let value = dict["CurrentSpaceSize"] as? Double {
                self.currentSpaceSize = value
            }
            if let value = dict["DataRedundancyType"] as? String {
                self.dataRedundancyType = value
            }
            if let value = dict["EnableStatus"] as? Bool {
                self.enableStatus = value
            }
            if let value = dict["ReadAccessNum"] as? Int64 {
                self.readAccessNum = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["VolumeName"] as? String {
                self.volumeName = value
            }
            if let value = dict["WriteAccessNum"] as? Double {
                self.writeAccessNum = value
            }
        }
    }
    public var data: DescribeColdDataBasicInfoResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeColdDataBasicInfoResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeColdDataBasicInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeColdDataBasicInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeColdDataBasicInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDBInstanceAttributeRequest : Tea.TeaModel {
    public var DBInstanceName: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class DescribeDBInstanceAttributeResponseBody : Tea.TeaModel {
    public class DBInstance : Tea.TeaModel {
        public class ConnAddrs : Tea.TeaModel {
            public var connectionString: String?

            public var port: Int64?

            public var type: String?

            public var VPCId: String?

            public var vSwitchId: String?

            public var vpcInstanceId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.connectionString != nil {
                    map["ConnectionString"] = self.connectionString!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.VPCId != nil {
                    map["VPCId"] = self.VPCId!
                }
                if self.vSwitchId != nil {
                    map["VSwitchId"] = self.vSwitchId!
                }
                if self.vpcInstanceId != nil {
                    map["VpcInstanceId"] = self.vpcInstanceId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ConnectionString"] as? String {
                    self.connectionString = value
                }
                if let value = dict["Port"] as? Int64 {
                    self.port = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["VPCId"] as? String {
                    self.VPCId = value
                }
                if let value = dict["VSwitchId"] as? String {
                    self.vSwitchId = value
                }
                if let value = dict["VpcInstanceId"] as? String {
                    self.vpcInstanceId = value
                }
            }
        }
        public class DBNodes : Tea.TeaModel {
            public var computeNodeId: String?

            public var dataNodeId: String?

            public var id: String?

            public var nodeClass: String?

            public var regionId: String?

            public var zoneId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.computeNodeId != nil {
                    map["ComputeNodeId"] = self.computeNodeId!
                }
                if self.dataNodeId != nil {
                    map["DataNodeId"] = self.dataNodeId!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.nodeClass != nil {
                    map["NodeClass"] = self.nodeClass!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ComputeNodeId"] as? String {
                    self.computeNodeId = value
                }
                if let value = dict["DataNodeId"] as? String {
                    self.dataNodeId = value
                }
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["NodeClass"] as? String {
                    self.nodeClass = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["ZoneId"] as? String {
                    self.zoneId = value
                }
            }
        }
        public class GdnMemberList : Tea.TeaModel {
            public var memberName: String?

            public var role: String?

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
                if self.memberName != nil {
                    map["MemberName"] = self.memberName!
                }
                if self.role != nil {
                    map["Role"] = self.role!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["MemberName"] as? String {
                    self.memberName = value
                }
                if let value = dict["Role"] as? String {
                    self.role = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
            }
        }
        public class TagSet : Tea.TeaModel {
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
        public var canNotCreateColumnar: Bool?

        public var cnNodeClassCode: String?

        public var cnNodeCount: Int32?

        public var columnarInstanceName: String?

        public var columnarReadDBInstances: [String]?

        public var commodityCode: String?

        public var connAddrs: [DescribeDBInstanceAttributeResponseBody.DBInstance.ConnAddrs]?

        public var connectionString: String?

        public var createTime: String?

        public var DBInstanceType: String?

        public var DBNodeClass: String?

        public var DBNodeCount: Int32?

        public var DBNodes: [DescribeDBInstanceAttributeResponseBody.DBInstance.DBNodes]?

        public var DBType: String?

        public var DBVersion: String?

        public var description_: String?

        public var differentDNSpec: Bool?

        public var dnNodeClassCode: String?

        public var dnNodeCount: Int32?

        public var engine: String?

        public var expireDate: String?

        public var expired: String?

        public var gdnInstanceName: String?

        public var gdnMemberList: [DescribeDBInstanceAttributeResponseBody.DBInstance.GdnMemberList]?

        public var gdnRole: String?

        public var id: String?

        public var kindCode: Int32?

        public var LTSVersions: [String]?

        public var latestMinorVersion: String?

        public var lockMode: String?

        public var maintainEndTime: String?

        public var maintainStartTime: String?

        public var minorVersion: String?

        public var network: String?

        public var payType: String?

        public var port: String?

        public var primaryInstanceId: String?

        public var primaryZone: String?

        public var readDBInstances: [String]?

        public var regionId: String?

        public var resourceGroupId: String?

        public var rightsSeparationEnabled: Bool?

        public var rightsSeparationStatus: String?

        public var secondaryZone: String?

        public var series: String?

        public var specCategory: String?

        public var status: String?

        public var storageType: String?

        public var storageUsed: Int64?

        public var tagSet: [DescribeDBInstanceAttributeResponseBody.DBInstance.TagSet]?

        public var tertiaryZone: String?

        public var topologyType: String?

        public var type: String?

        public var VPCId: String?

        public var vSwitchId: String?

        public var zoneId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.canNotCreateColumnar != nil {
                map["CanNotCreateColumnar"] = self.canNotCreateColumnar!
            }
            if self.cnNodeClassCode != nil {
                map["CnNodeClassCode"] = self.cnNodeClassCode!
            }
            if self.cnNodeCount != nil {
                map["CnNodeCount"] = self.cnNodeCount!
            }
            if self.columnarInstanceName != nil {
                map["ColumnarInstanceName"] = self.columnarInstanceName!
            }
            if self.columnarReadDBInstances != nil {
                map["ColumnarReadDBInstances"] = self.columnarReadDBInstances!
            }
            if self.commodityCode != nil {
                map["CommodityCode"] = self.commodityCode!
            }
            if self.connAddrs != nil {
                var tmp : [Any] = []
                for k in self.connAddrs! {
                    tmp.append(k.toMap())
                }
                map["ConnAddrs"] = tmp
            }
            if self.connectionString != nil {
                map["ConnectionString"] = self.connectionString!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.DBInstanceType != nil {
                map["DBInstanceType"] = self.DBInstanceType!
            }
            if self.DBNodeClass != nil {
                map["DBNodeClass"] = self.DBNodeClass!
            }
            if self.DBNodeCount != nil {
                map["DBNodeCount"] = self.DBNodeCount!
            }
            if self.DBNodes != nil {
                var tmp : [Any] = []
                for k in self.DBNodes! {
                    tmp.append(k.toMap())
                }
                map["DBNodes"] = tmp
            }
            if self.DBType != nil {
                map["DBType"] = self.DBType!
            }
            if self.DBVersion != nil {
                map["DBVersion"] = self.DBVersion!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.differentDNSpec != nil {
                map["DifferentDNSpec"] = self.differentDNSpec!
            }
            if self.dnNodeClassCode != nil {
                map["DnNodeClassCode"] = self.dnNodeClassCode!
            }
            if self.dnNodeCount != nil {
                map["DnNodeCount"] = self.dnNodeCount!
            }
            if self.engine != nil {
                map["Engine"] = self.engine!
            }
            if self.expireDate != nil {
                map["ExpireDate"] = self.expireDate!
            }
            if self.expired != nil {
                map["Expired"] = self.expired!
            }
            if self.gdnInstanceName != nil {
                map["GdnInstanceName"] = self.gdnInstanceName!
            }
            if self.gdnMemberList != nil {
                var tmp : [Any] = []
                for k in self.gdnMemberList! {
                    tmp.append(k.toMap())
                }
                map["GdnMemberList"] = tmp
            }
            if self.gdnRole != nil {
                map["GdnRole"] = self.gdnRole!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.kindCode != nil {
                map["KindCode"] = self.kindCode!
            }
            if self.LTSVersions != nil {
                map["LTSVersions"] = self.LTSVersions!
            }
            if self.latestMinorVersion != nil {
                map["LatestMinorVersion"] = self.latestMinorVersion!
            }
            if self.lockMode != nil {
                map["LockMode"] = self.lockMode!
            }
            if self.maintainEndTime != nil {
                map["MaintainEndTime"] = self.maintainEndTime!
            }
            if self.maintainStartTime != nil {
                map["MaintainStartTime"] = self.maintainStartTime!
            }
            if self.minorVersion != nil {
                map["MinorVersion"] = self.minorVersion!
            }
            if self.network != nil {
                map["Network"] = self.network!
            }
            if self.payType != nil {
                map["PayType"] = self.payType!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.primaryInstanceId != nil {
                map["PrimaryInstanceId"] = self.primaryInstanceId!
            }
            if self.primaryZone != nil {
                map["PrimaryZone"] = self.primaryZone!
            }
            if self.readDBInstances != nil {
                map["ReadDBInstances"] = self.readDBInstances!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.rightsSeparationEnabled != nil {
                map["RightsSeparationEnabled"] = self.rightsSeparationEnabled!
            }
            if self.rightsSeparationStatus != nil {
                map["RightsSeparationStatus"] = self.rightsSeparationStatus!
            }
            if self.secondaryZone != nil {
                map["SecondaryZone"] = self.secondaryZone!
            }
            if self.series != nil {
                map["Series"] = self.series!
            }
            if self.specCategory != nil {
                map["SpecCategory"] = self.specCategory!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.storageType != nil {
                map["StorageType"] = self.storageType!
            }
            if self.storageUsed != nil {
                map["StorageUsed"] = self.storageUsed!
            }
            if self.tagSet != nil {
                var tmp : [Any] = []
                for k in self.tagSet! {
                    tmp.append(k.toMap())
                }
                map["TagSet"] = tmp
            }
            if self.tertiaryZone != nil {
                map["TertiaryZone"] = self.tertiaryZone!
            }
            if self.topologyType != nil {
                map["TopologyType"] = self.topologyType!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.VPCId != nil {
                map["VPCId"] = self.VPCId!
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CanNotCreateColumnar"] as? Bool {
                self.canNotCreateColumnar = value
            }
            if let value = dict["CnNodeClassCode"] as? String {
                self.cnNodeClassCode = value
            }
            if let value = dict["CnNodeCount"] as? Int32 {
                self.cnNodeCount = value
            }
            if let value = dict["ColumnarInstanceName"] as? String {
                self.columnarInstanceName = value
            }
            if let value = dict["ColumnarReadDBInstances"] as? [String] {
                self.columnarReadDBInstances = value
            }
            if let value = dict["CommodityCode"] as? String {
                self.commodityCode = value
            }
            if let value = dict["ConnAddrs"] as? [Any?] {
                var tmp : [DescribeDBInstanceAttributeResponseBody.DBInstance.ConnAddrs] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDBInstanceAttributeResponseBody.DBInstance.ConnAddrs()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.connAddrs = tmp
            }
            if let value = dict["ConnectionString"] as? String {
                self.connectionString = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DBInstanceType"] as? String {
                self.DBInstanceType = value
            }
            if let value = dict["DBNodeClass"] as? String {
                self.DBNodeClass = value
            }
            if let value = dict["DBNodeCount"] as? Int32 {
                self.DBNodeCount = value
            }
            if let value = dict["DBNodes"] as? [Any?] {
                var tmp : [DescribeDBInstanceAttributeResponseBody.DBInstance.DBNodes] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDBInstanceAttributeResponseBody.DBInstance.DBNodes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.DBNodes = tmp
            }
            if let value = dict["DBType"] as? String {
                self.DBType = value
            }
            if let value = dict["DBVersion"] as? String {
                self.DBVersion = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DifferentDNSpec"] as? Bool {
                self.differentDNSpec = value
            }
            if let value = dict["DnNodeClassCode"] as? String {
                self.dnNodeClassCode = value
            }
            if let value = dict["DnNodeCount"] as? Int32 {
                self.dnNodeCount = value
            }
            if let value = dict["Engine"] as? String {
                self.engine = value
            }
            if let value = dict["ExpireDate"] as? String {
                self.expireDate = value
            }
            if let value = dict["Expired"] as? String {
                self.expired = value
            }
            if let value = dict["GdnInstanceName"] as? String {
                self.gdnInstanceName = value
            }
            if let value = dict["GdnMemberList"] as? [Any?] {
                var tmp : [DescribeDBInstanceAttributeResponseBody.DBInstance.GdnMemberList] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDBInstanceAttributeResponseBody.DBInstance.GdnMemberList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.gdnMemberList = tmp
            }
            if let value = dict["GdnRole"] as? String {
                self.gdnRole = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["KindCode"] as? Int32 {
                self.kindCode = value
            }
            if let value = dict["LTSVersions"] as? [String] {
                self.LTSVersions = value
            }
            if let value = dict["LatestMinorVersion"] as? String {
                self.latestMinorVersion = value
            }
            if let value = dict["LockMode"] as? String {
                self.lockMode = value
            }
            if let value = dict["MaintainEndTime"] as? String {
                self.maintainEndTime = value
            }
            if let value = dict["MaintainStartTime"] as? String {
                self.maintainStartTime = value
            }
            if let value = dict["MinorVersion"] as? String {
                self.minorVersion = value
            }
            if let value = dict["Network"] as? String {
                self.network = value
            }
            if let value = dict["PayType"] as? String {
                self.payType = value
            }
            if let value = dict["Port"] as? String {
                self.port = value
            }
            if let value = dict["PrimaryInstanceId"] as? String {
                self.primaryInstanceId = value
            }
            if let value = dict["PrimaryZone"] as? String {
                self.primaryZone = value
            }
            if let value = dict["ReadDBInstances"] as? [String] {
                self.readDBInstances = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["RightsSeparationEnabled"] as? Bool {
                self.rightsSeparationEnabled = value
            }
            if let value = dict["RightsSeparationStatus"] as? String {
                self.rightsSeparationStatus = value
            }
            if let value = dict["SecondaryZone"] as? String {
                self.secondaryZone = value
            }
            if let value = dict["Series"] as? String {
                self.series = value
            }
            if let value = dict["SpecCategory"] as? String {
                self.specCategory = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["StorageType"] as? String {
                self.storageType = value
            }
            if let value = dict["StorageUsed"] as? Int64 {
                self.storageUsed = value
            }
            if let value = dict["TagSet"] as? [Any?] {
                var tmp : [DescribeDBInstanceAttributeResponseBody.DBInstance.TagSet] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDBInstanceAttributeResponseBody.DBInstance.TagSet()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tagSet = tmp
            }
            if let value = dict["TertiaryZone"] as? String {
                self.tertiaryZone = value
            }
            if let value = dict["TopologyType"] as? String {
                self.topologyType = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["VPCId"] as? String {
                self.VPCId = value
            }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var DBInstance: DescribeDBInstanceAttributeResponseBody.DBInstance?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.DBInstance?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstance != nil {
            map["DBInstance"] = self.DBInstance?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstance"] as? [String: Any?] {
            var model = DescribeDBInstanceAttributeResponseBody.DBInstance()
            model.fromMap(value)
            self.DBInstance = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeDBInstanceAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBInstanceAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDBInstanceAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDBInstanceConfigRequest : Tea.TeaModel {
    public var configName: String?

    public var DBInstanceName: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configName != nil {
            map["ConfigName"] = self.configName!
        }
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConfigName"] as? String {
            self.configName = value
        }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeDBInstanceConfigResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var configName: String?

        public var configValue: String?

        public var dbInstanceName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configName != nil {
                map["ConfigName"] = self.configName!
            }
            if self.configValue != nil {
                map["ConfigValue"] = self.configValue!
            }
            if self.dbInstanceName != nil {
                map["DbInstanceName"] = self.dbInstanceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConfigName"] as? String {
                self.configName = value
            }
            if let value = dict["ConfigValue"] as? String {
                self.configValue = value
            }
            if let value = dict["DbInstanceName"] as? String {
                self.dbInstanceName = value
            }
        }
    }
    public var data: DescribeDBInstanceConfigResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeDBInstanceConfigResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeDBInstanceConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBInstanceConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDBInstanceConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDBInstanceHARequest : Tea.TeaModel {
    public var DBInstanceName: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeDBInstanceHAResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var primaryAzoneId: String?

        public var primaryRegionId: String?

        public var secondaryAzoneId: String?

        public var secondaryRegionId: String?

        public var topologyType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.primaryAzoneId != nil {
                map["PrimaryAzoneId"] = self.primaryAzoneId!
            }
            if self.primaryRegionId != nil {
                map["PrimaryRegionId"] = self.primaryRegionId!
            }
            if self.secondaryAzoneId != nil {
                map["SecondaryAzoneId"] = self.secondaryAzoneId!
            }
            if self.secondaryRegionId != nil {
                map["SecondaryRegionId"] = self.secondaryRegionId!
            }
            if self.topologyType != nil {
                map["TopologyType"] = self.topologyType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PrimaryAzoneId"] as? String {
                self.primaryAzoneId = value
            }
            if let value = dict["PrimaryRegionId"] as? String {
                self.primaryRegionId = value
            }
            if let value = dict["SecondaryAzoneId"] as? String {
                self.secondaryAzoneId = value
            }
            if let value = dict["SecondaryRegionId"] as? String {
                self.secondaryRegionId = value
            }
            if let value = dict["TopologyType"] as? String {
                self.topologyType = value
            }
        }
    }
    public var data: DescribeDBInstanceHAResponseBody.Data?

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
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeDBInstanceHAResponseBody.Data()
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

public class DescribeDBInstanceHAResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBInstanceHAResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDBInstanceHAResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDBInstanceSSLRequest : Tea.TeaModel {
    public var DBInstanceName: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeDBInstanceSSLResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var certCommonName: String?

        public var SSLEnabled: Bool?

        public var SSLExpiredTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.certCommonName != nil {
                map["CertCommonName"] = self.certCommonName!
            }
            if self.SSLEnabled != nil {
                map["SSLEnabled"] = self.SSLEnabled!
            }
            if self.SSLExpiredTime != nil {
                map["SSLExpiredTime"] = self.SSLExpiredTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CertCommonName"] as? String {
                self.certCommonName = value
            }
            if let value = dict["SSLEnabled"] as? Bool {
                self.SSLEnabled = value
            }
            if let value = dict["SSLExpiredTime"] as? String {
                self.SSLExpiredTime = value
            }
        }
    }
    public var data: DescribeDBInstanceSSLResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeDBInstanceSSLResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeDBInstanceSSLResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBInstanceSSLResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDBInstanceSSLResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDBInstanceTDERequest : Tea.TeaModel {
    public var DBInstanceName: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeDBInstanceTDEResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var TDEStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.TDEStatus != nil {
                map["TDEStatus"] = self.TDEStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TDEStatus"] as? String {
                self.TDEStatus = value
            }
        }
    }
    public var data: DescribeDBInstanceTDEResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeDBInstanceTDEResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeDBInstanceTDEResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBInstanceTDEResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDBInstanceTDEResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDBInstanceTopologyRequest : Tea.TeaModel {
    public var DBInstanceName: String?

    public var endTime: String?

    public var minuteSimple: Bool?

    public var regionId: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.minuteSimple != nil {
            map["MinuteSimple"] = self.minuteSimple!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["MinuteSimple"] as? Bool {
            self.minuteSimple = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class DescribeDBInstanceTopologyResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class LogicInstanceTopology : Tea.TeaModel {
            public class HistoryItems : Tea.TeaModel {
                public var activated: Bool?

                public var azone: String?

                public var characterType: String?

                public var DBInstanceId: String?

                public var DBInstanceName: String?

                public var phyInstanceName: String?

                public var region: String?

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
                    if self.activated != nil {
                        map["Activated"] = self.activated!
                    }
                    if self.azone != nil {
                        map["Azone"] = self.azone!
                    }
                    if self.characterType != nil {
                        map["CharacterType"] = self.characterType!
                    }
                    if self.DBInstanceId != nil {
                        map["DBInstanceId"] = self.DBInstanceId!
                    }
                    if self.DBInstanceName != nil {
                        map["DBInstanceName"] = self.DBInstanceName!
                    }
                    if self.phyInstanceName != nil {
                        map["PhyInstanceName"] = self.phyInstanceName!
                    }
                    if self.region != nil {
                        map["Region"] = self.region!
                    }
                    if self.role != nil {
                        map["Role"] = self.role!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Activated"] as? Bool {
                        self.activated = value
                    }
                    if let value = dict["Azone"] as? String {
                        self.azone = value
                    }
                    if let value = dict["CharacterType"] as? String {
                        self.characterType = value
                    }
                    if let value = dict["DBInstanceId"] as? String {
                        self.DBInstanceId = value
                    }
                    if let value = dict["DBInstanceName"] as? String {
                        self.DBInstanceName = value
                    }
                    if let value = dict["PhyInstanceName"] as? String {
                        self.phyInstanceName = value
                    }
                    if let value = dict["Region"] as? String {
                        self.region = value
                    }
                    if let value = dict["Role"] as? String {
                        self.role = value
                    }
                }
            }
            public class Items : Tea.TeaModel {
                public class AzoneRoleList : Tea.TeaModel {
                    public var azone: String?

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
                        if self.azone != nil {
                            map["Azone"] = self.azone!
                        }
                        if self.role != nil {
                            map["Role"] = self.role!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Azone"] as? String {
                            self.azone = value
                        }
                        if let value = dict["Role"] as? String {
                            self.role = value
                        }
                    }
                }
                public class ConnectionIp : Tea.TeaModel {
                    public var connectionString: String?

                    public var DBInstanceNetType: Int32?

                    public var port: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.connectionString != nil {
                            map["ConnectionString"] = self.connectionString!
                        }
                        if self.DBInstanceNetType != nil {
                            map["DBInstanceNetType"] = self.DBInstanceNetType!
                        }
                        if self.port != nil {
                            map["Port"] = self.port!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["ConnectionString"] as? String {
                            self.connectionString = value
                        }
                        if let value = dict["DBInstanceNetType"] as? Int32 {
                            self.DBInstanceNetType = value
                        }
                        if let value = dict["Port"] as? String {
                            self.port = value
                        }
                    }
                }
                public var activated: Bool?

                public var azone: String?

                public var azoneRoleList: [DescribeDBInstanceTopologyResponseBody.Data.LogicInstanceTopology.Items.AzoneRoleList]?

                public var characterType: String?

                public var connectionIp: [DescribeDBInstanceTopologyResponseBody.Data.LogicInstanceTopology.Items.ConnectionIp]?

                public var DBInstanceConnType: Int32?

                public var DBInstanceCreateTime: String?

                public var DBInstanceDescription: String?

                public var DBInstanceId: String?

                public var DBInstanceName: String?

                public var DBInstanceStatus: Int32?

                public var DBInstanceStatusDescription: String?

                public var diskSize: Int64?

                public var engine: String?

                public var engineVersion: String?

                public var lockMode: Int32?

                public var lockReason: String?

                public var maintainEndTime: String?

                public var maintainStartTime: String?

                public var maxConnections: Int32?

                public var maxIops: Int32?

                public var nodeClass: String?

                public var phyInstanceName: String?

                public var region: String?

                public var role: String?

                public var status: String?

                public var storageUsed: String?

                public var version: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.activated != nil {
                        map["Activated"] = self.activated!
                    }
                    if self.azone != nil {
                        map["Azone"] = self.azone!
                    }
                    if self.azoneRoleList != nil {
                        var tmp : [Any] = []
                        for k in self.azoneRoleList! {
                            tmp.append(k.toMap())
                        }
                        map["AzoneRoleList"] = tmp
                    }
                    if self.characterType != nil {
                        map["CharacterType"] = self.characterType!
                    }
                    if self.connectionIp != nil {
                        var tmp : [Any] = []
                        for k in self.connectionIp! {
                            tmp.append(k.toMap())
                        }
                        map["ConnectionIp"] = tmp
                    }
                    if self.DBInstanceConnType != nil {
                        map["DBInstanceConnType"] = self.DBInstanceConnType!
                    }
                    if self.DBInstanceCreateTime != nil {
                        map["DBInstanceCreateTime"] = self.DBInstanceCreateTime!
                    }
                    if self.DBInstanceDescription != nil {
                        map["DBInstanceDescription"] = self.DBInstanceDescription!
                    }
                    if self.DBInstanceId != nil {
                        map["DBInstanceId"] = self.DBInstanceId!
                    }
                    if self.DBInstanceName != nil {
                        map["DBInstanceName"] = self.DBInstanceName!
                    }
                    if self.DBInstanceStatus != nil {
                        map["DBInstanceStatus"] = self.DBInstanceStatus!
                    }
                    if self.DBInstanceStatusDescription != nil {
                        map["DBInstanceStatusDescription"] = self.DBInstanceStatusDescription!
                    }
                    if self.diskSize != nil {
                        map["DiskSize"] = self.diskSize!
                    }
                    if self.engine != nil {
                        map["Engine"] = self.engine!
                    }
                    if self.engineVersion != nil {
                        map["EngineVersion"] = self.engineVersion!
                    }
                    if self.lockMode != nil {
                        map["LockMode"] = self.lockMode!
                    }
                    if self.lockReason != nil {
                        map["LockReason"] = self.lockReason!
                    }
                    if self.maintainEndTime != nil {
                        map["MaintainEndTime"] = self.maintainEndTime!
                    }
                    if self.maintainStartTime != nil {
                        map["MaintainStartTime"] = self.maintainStartTime!
                    }
                    if self.maxConnections != nil {
                        map["MaxConnections"] = self.maxConnections!
                    }
                    if self.maxIops != nil {
                        map["MaxIops"] = self.maxIops!
                    }
                    if self.nodeClass != nil {
                        map["NodeClass"] = self.nodeClass!
                    }
                    if self.phyInstanceName != nil {
                        map["PhyInstanceName"] = self.phyInstanceName!
                    }
                    if self.region != nil {
                        map["Region"] = self.region!
                    }
                    if self.role != nil {
                        map["Role"] = self.role!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    if self.storageUsed != nil {
                        map["StorageUsed"] = self.storageUsed!
                    }
                    if self.version != nil {
                        map["Version"] = self.version!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Activated"] as? Bool {
                        self.activated = value
                    }
                    if let value = dict["Azone"] as? String {
                        self.azone = value
                    }
                    if let value = dict["AzoneRoleList"] as? [Any?] {
                        var tmp : [DescribeDBInstanceTopologyResponseBody.Data.LogicInstanceTopology.Items.AzoneRoleList] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeDBInstanceTopologyResponseBody.Data.LogicInstanceTopology.Items.AzoneRoleList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.azoneRoleList = tmp
                    }
                    if let value = dict["CharacterType"] as? String {
                        self.characterType = value
                    }
                    if let value = dict["ConnectionIp"] as? [Any?] {
                        var tmp : [DescribeDBInstanceTopologyResponseBody.Data.LogicInstanceTopology.Items.ConnectionIp] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeDBInstanceTopologyResponseBody.Data.LogicInstanceTopology.Items.ConnectionIp()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.connectionIp = tmp
                    }
                    if let value = dict["DBInstanceConnType"] as? Int32 {
                        self.DBInstanceConnType = value
                    }
                    if let value = dict["DBInstanceCreateTime"] as? String {
                        self.DBInstanceCreateTime = value
                    }
                    if let value = dict["DBInstanceDescription"] as? String {
                        self.DBInstanceDescription = value
                    }
                    if let value = dict["DBInstanceId"] as? String {
                        self.DBInstanceId = value
                    }
                    if let value = dict["DBInstanceName"] as? String {
                        self.DBInstanceName = value
                    }
                    if let value = dict["DBInstanceStatus"] as? Int32 {
                        self.DBInstanceStatus = value
                    }
                    if let value = dict["DBInstanceStatusDescription"] as? String {
                        self.DBInstanceStatusDescription = value
                    }
                    if let value = dict["DiskSize"] as? Int64 {
                        self.diskSize = value
                    }
                    if let value = dict["Engine"] as? String {
                        self.engine = value
                    }
                    if let value = dict["EngineVersion"] as? String {
                        self.engineVersion = value
                    }
                    if let value = dict["LockMode"] as? Int32 {
                        self.lockMode = value
                    }
                    if let value = dict["LockReason"] as? String {
                        self.lockReason = value
                    }
                    if let value = dict["MaintainEndTime"] as? String {
                        self.maintainEndTime = value
                    }
                    if let value = dict["MaintainStartTime"] as? String {
                        self.maintainStartTime = value
                    }
                    if let value = dict["MaxConnections"] as? Int32 {
                        self.maxConnections = value
                    }
                    if let value = dict["MaxIops"] as? Int32 {
                        self.maxIops = value
                    }
                    if let value = dict["NodeClass"] as? String {
                        self.nodeClass = value
                    }
                    if let value = dict["PhyInstanceName"] as? String {
                        self.phyInstanceName = value
                    }
                    if let value = dict["Region"] as? String {
                        self.region = value
                    }
                    if let value = dict["Role"] as? String {
                        self.role = value
                    }
                    if let value = dict["Status"] as? String {
                        self.status = value
                    }
                    if let value = dict["StorageUsed"] as? String {
                        self.storageUsed = value
                    }
                    if let value = dict["Version"] as? String {
                        self.version = value
                    }
                }
            }
            public var DBInstanceConnType: String?

            public var DBInstanceCreateTime: String?

            public var DBInstanceDescription: String?

            public var DBInstanceId: String?

            public var DBInstanceName: String?

            public var DBInstanceStatus: Int32?

            public var DBInstanceStatusDescription: String?

            public var DBInstanceStorage: Int32?

            public var engine: String?

            public var engineVersion: String?

            public var historyItems: [DescribeDBInstanceTopologyResponseBody.Data.LogicInstanceTopology.HistoryItems]?

            public var items: [DescribeDBInstanceTopologyResponseBody.Data.LogicInstanceTopology.Items]?

            public var lockMode: Int32?

            public var lockReason: String?

            public var maintainEndTime: String?

            public var maintainStartTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.DBInstanceConnType != nil {
                    map["DBInstanceConnType"] = self.DBInstanceConnType!
                }
                if self.DBInstanceCreateTime != nil {
                    map["DBInstanceCreateTime"] = self.DBInstanceCreateTime!
                }
                if self.DBInstanceDescription != nil {
                    map["DBInstanceDescription"] = self.DBInstanceDescription!
                }
                if self.DBInstanceId != nil {
                    map["DBInstanceId"] = self.DBInstanceId!
                }
                if self.DBInstanceName != nil {
                    map["DBInstanceName"] = self.DBInstanceName!
                }
                if self.DBInstanceStatus != nil {
                    map["DBInstanceStatus"] = self.DBInstanceStatus!
                }
                if self.DBInstanceStatusDescription != nil {
                    map["DBInstanceStatusDescription"] = self.DBInstanceStatusDescription!
                }
                if self.DBInstanceStorage != nil {
                    map["DBInstanceStorage"] = self.DBInstanceStorage!
                }
                if self.engine != nil {
                    map["Engine"] = self.engine!
                }
                if self.engineVersion != nil {
                    map["EngineVersion"] = self.engineVersion!
                }
                if self.historyItems != nil {
                    var tmp : [Any] = []
                    for k in self.historyItems! {
                        tmp.append(k.toMap())
                    }
                    map["HistoryItems"] = tmp
                }
                if self.items != nil {
                    var tmp : [Any] = []
                    for k in self.items! {
                        tmp.append(k.toMap())
                    }
                    map["Items"] = tmp
                }
                if self.lockMode != nil {
                    map["LockMode"] = self.lockMode!
                }
                if self.lockReason != nil {
                    map["LockReason"] = self.lockReason!
                }
                if self.maintainEndTime != nil {
                    map["MaintainEndTime"] = self.maintainEndTime!
                }
                if self.maintainStartTime != nil {
                    map["MaintainStartTime"] = self.maintainStartTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DBInstanceConnType"] as? String {
                    self.DBInstanceConnType = value
                }
                if let value = dict["DBInstanceCreateTime"] as? String {
                    self.DBInstanceCreateTime = value
                }
                if let value = dict["DBInstanceDescription"] as? String {
                    self.DBInstanceDescription = value
                }
                if let value = dict["DBInstanceId"] as? String {
                    self.DBInstanceId = value
                }
                if let value = dict["DBInstanceName"] as? String {
                    self.DBInstanceName = value
                }
                if let value = dict["DBInstanceStatus"] as? Int32 {
                    self.DBInstanceStatus = value
                }
                if let value = dict["DBInstanceStatusDescription"] as? String {
                    self.DBInstanceStatusDescription = value
                }
                if let value = dict["DBInstanceStorage"] as? Int32 {
                    self.DBInstanceStorage = value
                }
                if let value = dict["Engine"] as? String {
                    self.engine = value
                }
                if let value = dict["EngineVersion"] as? String {
                    self.engineVersion = value
                }
                if let value = dict["HistoryItems"] as? [Any?] {
                    var tmp : [DescribeDBInstanceTopologyResponseBody.Data.LogicInstanceTopology.HistoryItems] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeDBInstanceTopologyResponseBody.Data.LogicInstanceTopology.HistoryItems()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.historyItems = tmp
                }
                if let value = dict["Items"] as? [Any?] {
                    var tmp : [DescribeDBInstanceTopologyResponseBody.Data.LogicInstanceTopology.Items] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeDBInstanceTopologyResponseBody.Data.LogicInstanceTopology.Items()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.items = tmp
                }
                if let value = dict["LockMode"] as? Int32 {
                    self.lockMode = value
                }
                if let value = dict["LockReason"] as? String {
                    self.lockReason = value
                }
                if let value = dict["MaintainEndTime"] as? String {
                    self.maintainEndTime = value
                }
                if let value = dict["MaintainStartTime"] as? String {
                    self.maintainStartTime = value
                }
            }
        }
        public var logicInstanceTopology: DescribeDBInstanceTopologyResponseBody.Data.LogicInstanceTopology?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.logicInstanceTopology?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.logicInstanceTopology != nil {
                map["LogicInstanceTopology"] = self.logicInstanceTopology?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LogicInstanceTopology"] as? [String: Any?] {
                var model = DescribeDBInstanceTopologyResponseBody.Data.LogicInstanceTopology()
                model.fromMap(value)
                self.logicInstanceTopology = model
            }
        }
    }
    public var data: DescribeDBInstanceTopologyResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeDBInstanceTopologyResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeDBInstanceTopologyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBInstanceTopologyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDBInstanceTopologyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDBInstanceViaEndpointRequest : Tea.TeaModel {
    public var endpoint: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endpoint != nil {
            map["Endpoint"] = self.endpoint!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Endpoint"] as? String {
            self.endpoint = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeDBInstanceViaEndpointResponseBody : Tea.TeaModel {
    public class DBInstance : Tea.TeaModel {
        public class ConnAddrs : Tea.TeaModel {
            public var connectionString: String?

            public var port: Int64?

            public var type: String?

            public var VPCId: String?

            public var vSwitchId: String?

            public var vpcInstanceId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.connectionString != nil {
                    map["ConnectionString"] = self.connectionString!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.VPCId != nil {
                    map["VPCId"] = self.VPCId!
                }
                if self.vSwitchId != nil {
                    map["VSwitchId"] = self.vSwitchId!
                }
                if self.vpcInstanceId != nil {
                    map["VpcInstanceId"] = self.vpcInstanceId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ConnectionString"] as? String {
                    self.connectionString = value
                }
                if let value = dict["Port"] as? Int64 {
                    self.port = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["VPCId"] as? String {
                    self.VPCId = value
                }
                if let value = dict["VSwitchId"] as? String {
                    self.vSwitchId = value
                }
                if let value = dict["VpcInstanceId"] as? String {
                    self.vpcInstanceId = value
                }
            }
        }
        public class DBNodes : Tea.TeaModel {
            public var computeNodeId: String?

            public var dataNodeId: String?

            public var id: String?

            public var nodeClass: String?

            public var regionId: String?

            public var zoneId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.computeNodeId != nil {
                    map["ComputeNodeId"] = self.computeNodeId!
                }
                if self.dataNodeId != nil {
                    map["DataNodeId"] = self.dataNodeId!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.nodeClass != nil {
                    map["NodeClass"] = self.nodeClass!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ComputeNodeId"] as? String {
                    self.computeNodeId = value
                }
                if let value = dict["DataNodeId"] as? String {
                    self.dataNodeId = value
                }
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["NodeClass"] as? String {
                    self.nodeClass = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["ZoneId"] as? String {
                    self.zoneId = value
                }
            }
        }
        public class TagSet : Tea.TeaModel {
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
        public var cnNodeClassCode: String?

        public var cnNodeCount: Int32?

        public var commodityCode: String?

        public var connAddrs: [DescribeDBInstanceViaEndpointResponseBody.DBInstance.ConnAddrs]?

        public var connectionString: String?

        public var createTime: String?

        public var DBInstanceType: String?

        public var DBNodeClass: String?

        public var DBNodeCount: Int32?

        public var DBNodes: [DescribeDBInstanceViaEndpointResponseBody.DBInstance.DBNodes]?

        public var DBType: String?

        public var DBVersion: String?

        public var description_: String?

        public var dnNodeClassCode: String?

        public var dnNodeCount: Int32?

        public var engine: String?

        public var expireDate: String?

        public var expired: String?

        public var id: String?

        public var kindCode: Int32?

        public var LTSVersions: [String]?

        public var latestMinorVersion: String?

        public var lockMode: String?

        public var maintainEndTime: String?

        public var maintainStartTime: String?

        public var minorVersion: String?

        public var network: String?

        public var payType: String?

        public var port: String?

        public var readDBInstances: [String]?

        public var regionId: String?

        public var resourceGroupId: String?

        public var rightsSeparationEnabled: Bool?

        public var rightsSeparationStatus: String?

        public var series: String?

        public var status: String?

        public var storageUsed: Int64?

        public var tagSet: [DescribeDBInstanceViaEndpointResponseBody.DBInstance.TagSet]?

        public var type: String?

        public var VPCId: String?

        public var vSwitchId: String?

        public var zoneId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cnNodeClassCode != nil {
                map["CnNodeClassCode"] = self.cnNodeClassCode!
            }
            if self.cnNodeCount != nil {
                map["CnNodeCount"] = self.cnNodeCount!
            }
            if self.commodityCode != nil {
                map["CommodityCode"] = self.commodityCode!
            }
            if self.connAddrs != nil {
                var tmp : [Any] = []
                for k in self.connAddrs! {
                    tmp.append(k.toMap())
                }
                map["ConnAddrs"] = tmp
            }
            if self.connectionString != nil {
                map["ConnectionString"] = self.connectionString!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.DBInstanceType != nil {
                map["DBInstanceType"] = self.DBInstanceType!
            }
            if self.DBNodeClass != nil {
                map["DBNodeClass"] = self.DBNodeClass!
            }
            if self.DBNodeCount != nil {
                map["DBNodeCount"] = self.DBNodeCount!
            }
            if self.DBNodes != nil {
                var tmp : [Any] = []
                for k in self.DBNodes! {
                    tmp.append(k.toMap())
                }
                map["DBNodes"] = tmp
            }
            if self.DBType != nil {
                map["DBType"] = self.DBType!
            }
            if self.DBVersion != nil {
                map["DBVersion"] = self.DBVersion!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.dnNodeClassCode != nil {
                map["DnNodeClassCode"] = self.dnNodeClassCode!
            }
            if self.dnNodeCount != nil {
                map["DnNodeCount"] = self.dnNodeCount!
            }
            if self.engine != nil {
                map["Engine"] = self.engine!
            }
            if self.expireDate != nil {
                map["ExpireDate"] = self.expireDate!
            }
            if self.expired != nil {
                map["Expired"] = self.expired!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.kindCode != nil {
                map["KindCode"] = self.kindCode!
            }
            if self.LTSVersions != nil {
                map["LTSVersions"] = self.LTSVersions!
            }
            if self.latestMinorVersion != nil {
                map["LatestMinorVersion"] = self.latestMinorVersion!
            }
            if self.lockMode != nil {
                map["LockMode"] = self.lockMode!
            }
            if self.maintainEndTime != nil {
                map["MaintainEndTime"] = self.maintainEndTime!
            }
            if self.maintainStartTime != nil {
                map["MaintainStartTime"] = self.maintainStartTime!
            }
            if self.minorVersion != nil {
                map["MinorVersion"] = self.minorVersion!
            }
            if self.network != nil {
                map["Network"] = self.network!
            }
            if self.payType != nil {
                map["PayType"] = self.payType!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.readDBInstances != nil {
                map["ReadDBInstances"] = self.readDBInstances!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.rightsSeparationEnabled != nil {
                map["RightsSeparationEnabled"] = self.rightsSeparationEnabled!
            }
            if self.rightsSeparationStatus != nil {
                map["RightsSeparationStatus"] = self.rightsSeparationStatus!
            }
            if self.series != nil {
                map["Series"] = self.series!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.storageUsed != nil {
                map["StorageUsed"] = self.storageUsed!
            }
            if self.tagSet != nil {
                var tmp : [Any] = []
                for k in self.tagSet! {
                    tmp.append(k.toMap())
                }
                map["TagSet"] = tmp
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.VPCId != nil {
                map["VPCId"] = self.VPCId!
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CnNodeClassCode"] as? String {
                self.cnNodeClassCode = value
            }
            if let value = dict["CnNodeCount"] as? Int32 {
                self.cnNodeCount = value
            }
            if let value = dict["CommodityCode"] as? String {
                self.commodityCode = value
            }
            if let value = dict["ConnAddrs"] as? [Any?] {
                var tmp : [DescribeDBInstanceViaEndpointResponseBody.DBInstance.ConnAddrs] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDBInstanceViaEndpointResponseBody.DBInstance.ConnAddrs()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.connAddrs = tmp
            }
            if let value = dict["ConnectionString"] as? String {
                self.connectionString = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DBInstanceType"] as? String {
                self.DBInstanceType = value
            }
            if let value = dict["DBNodeClass"] as? String {
                self.DBNodeClass = value
            }
            if let value = dict["DBNodeCount"] as? Int32 {
                self.DBNodeCount = value
            }
            if let value = dict["DBNodes"] as? [Any?] {
                var tmp : [DescribeDBInstanceViaEndpointResponseBody.DBInstance.DBNodes] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDBInstanceViaEndpointResponseBody.DBInstance.DBNodes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.DBNodes = tmp
            }
            if let value = dict["DBType"] as? String {
                self.DBType = value
            }
            if let value = dict["DBVersion"] as? String {
                self.DBVersion = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DnNodeClassCode"] as? String {
                self.dnNodeClassCode = value
            }
            if let value = dict["DnNodeCount"] as? Int32 {
                self.dnNodeCount = value
            }
            if let value = dict["Engine"] as? String {
                self.engine = value
            }
            if let value = dict["ExpireDate"] as? String {
                self.expireDate = value
            }
            if let value = dict["Expired"] as? String {
                self.expired = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["KindCode"] as? Int32 {
                self.kindCode = value
            }
            if let value = dict["LTSVersions"] as? [String] {
                self.LTSVersions = value
            }
            if let value = dict["LatestMinorVersion"] as? String {
                self.latestMinorVersion = value
            }
            if let value = dict["LockMode"] as? String {
                self.lockMode = value
            }
            if let value = dict["MaintainEndTime"] as? String {
                self.maintainEndTime = value
            }
            if let value = dict["MaintainStartTime"] as? String {
                self.maintainStartTime = value
            }
            if let value = dict["MinorVersion"] as? String {
                self.minorVersion = value
            }
            if let value = dict["Network"] as? String {
                self.network = value
            }
            if let value = dict["PayType"] as? String {
                self.payType = value
            }
            if let value = dict["Port"] as? String {
                self.port = value
            }
            if let value = dict["ReadDBInstances"] as? [String] {
                self.readDBInstances = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["RightsSeparationEnabled"] as? Bool {
                self.rightsSeparationEnabled = value
            }
            if let value = dict["RightsSeparationStatus"] as? String {
                self.rightsSeparationStatus = value
            }
            if let value = dict["Series"] as? String {
                self.series = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["StorageUsed"] as? Int64 {
                self.storageUsed = value
            }
            if let value = dict["TagSet"] as? [Any?] {
                var tmp : [DescribeDBInstanceViaEndpointResponseBody.DBInstance.TagSet] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDBInstanceViaEndpointResponseBody.DBInstance.TagSet()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tagSet = tmp
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["VPCId"] as? String {
                self.VPCId = value
            }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var DBInstance: DescribeDBInstanceViaEndpointResponseBody.DBInstance?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.DBInstance?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstance != nil {
            map["DBInstance"] = self.DBInstance?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstance"] as? [String: Any?] {
            var model = DescribeDBInstanceViaEndpointResponseBody.DBInstance()
            model.fromMap(value)
            self.DBInstance = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeDBInstanceViaEndpointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBInstanceViaEndpointResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDBInstanceViaEndpointResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDBInstancesRequest : Tea.TeaModel {
    public var dbVersion: String?

    public var instanceId: String?

    public var mustHasCdc: Bool?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var series: String?

    public var tags: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbVersion != nil {
            map["DbVersion"] = self.dbVersion!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.mustHasCdc != nil {
            map["MustHasCdc"] = self.mustHasCdc!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.series != nil {
            map["Series"] = self.series!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbVersion"] as? String {
            self.dbVersion = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MustHasCdc"] as? Bool {
            self.mustHasCdc = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Series"] as? String {
            self.series = value
        }
        if let value = dict["Tags"] as? String {
            self.tags = value
        }
    }
}

public class DescribeDBInstancesResponseBody : Tea.TeaModel {
    public class DBInstances : Tea.TeaModel {
        public class Nodes : Tea.TeaModel {
            public var classCode: String?

            public var id: String?

            public var regionId: String?

            public var zoneId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.classCode != nil {
                    map["ClassCode"] = self.classCode!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ClassCode"] as? String {
                    self.classCode = value
                }
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["ZoneId"] as? String {
                    self.zoneId = value
                }
            }
        }
        public class TagSet : Tea.TeaModel {
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
        public var cdcInstanceName: String?

        public var cnNodeClassCode: String?

        public var cnNodeCount: Int32?

        public var columnarInstanceName: String?

        public var columnarReadDBInstances: [String]?

        public var commodityCode: String?

        public var containBinlogX: Bool?

        public var cpuType: String?

        public var createTime: String?

        public var DBInstanceName: String?

        public var DBType: String?

        public var DBVersion: String?

        public var description_: String?

        public var dnNodeClassCode: String?

        public var dnNodeCount: Int32?

        public var engine: String?

        public var expireTime: String?

        public var expired: Bool?

        public var id: String?

        public var lockMode: String?

        public var lockReason: String?

        public var minorVersion: String?

        public var network: String?

        public var nodeClass: String?

        public var nodeCount: Int32?

        public var nodes: [DescribeDBInstancesResponseBody.DBInstances.Nodes]?

        public var payType: String?

        public var primaryInstanceId: String?

        public var primaryZone: String?

        public var readDBInstances: [String]?

        public var regionId: String?

        public var resourceGroupId: String?

        public var secondaryZone: String?

        public var series: String?

        public var status: String?

        public var storageType: String?

        public var storageUsed: Int64?

        public var supportBinlogX: Bool?

        public var tagSet: [DescribeDBInstancesResponseBody.DBInstances.TagSet]?

        public var tertiaryZone: String?

        public var topologyType: String?

        public var type: String?

        public var VPCId: String?

        public var zoneId: String?

        public var gdnRole: String?

        public var isInGdn: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cdcInstanceName != nil {
                map["CdcInstanceName"] = self.cdcInstanceName!
            }
            if self.cnNodeClassCode != nil {
                map["CnNodeClassCode"] = self.cnNodeClassCode!
            }
            if self.cnNodeCount != nil {
                map["CnNodeCount"] = self.cnNodeCount!
            }
            if self.columnarInstanceName != nil {
                map["ColumnarInstanceName"] = self.columnarInstanceName!
            }
            if self.columnarReadDBInstances != nil {
                map["ColumnarReadDBInstances"] = self.columnarReadDBInstances!
            }
            if self.commodityCode != nil {
                map["CommodityCode"] = self.commodityCode!
            }
            if self.containBinlogX != nil {
                map["ContainBinlogX"] = self.containBinlogX!
            }
            if self.cpuType != nil {
                map["CpuType"] = self.cpuType!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.DBInstanceName != nil {
                map["DBInstanceName"] = self.DBInstanceName!
            }
            if self.DBType != nil {
                map["DBType"] = self.DBType!
            }
            if self.DBVersion != nil {
                map["DBVersion"] = self.DBVersion!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.dnNodeClassCode != nil {
                map["DnNodeClassCode"] = self.dnNodeClassCode!
            }
            if self.dnNodeCount != nil {
                map["DnNodeCount"] = self.dnNodeCount!
            }
            if self.engine != nil {
                map["Engine"] = self.engine!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.expired != nil {
                map["Expired"] = self.expired!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.lockMode != nil {
                map["LockMode"] = self.lockMode!
            }
            if self.lockReason != nil {
                map["LockReason"] = self.lockReason!
            }
            if self.minorVersion != nil {
                map["MinorVersion"] = self.minorVersion!
            }
            if self.network != nil {
                map["Network"] = self.network!
            }
            if self.nodeClass != nil {
                map["NodeClass"] = self.nodeClass!
            }
            if self.nodeCount != nil {
                map["NodeCount"] = self.nodeCount!
            }
            if self.nodes != nil {
                var tmp : [Any] = []
                for k in self.nodes! {
                    tmp.append(k.toMap())
                }
                map["Nodes"] = tmp
            }
            if self.payType != nil {
                map["PayType"] = self.payType!
            }
            if self.primaryInstanceId != nil {
                map["PrimaryInstanceId"] = self.primaryInstanceId!
            }
            if self.primaryZone != nil {
                map["PrimaryZone"] = self.primaryZone!
            }
            if self.readDBInstances != nil {
                map["ReadDBInstances"] = self.readDBInstances!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.secondaryZone != nil {
                map["SecondaryZone"] = self.secondaryZone!
            }
            if self.series != nil {
                map["Series"] = self.series!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.storageType != nil {
                map["StorageType"] = self.storageType!
            }
            if self.storageUsed != nil {
                map["StorageUsed"] = self.storageUsed!
            }
            if self.supportBinlogX != nil {
                map["SupportBinlogX"] = self.supportBinlogX!
            }
            if self.tagSet != nil {
                var tmp : [Any] = []
                for k in self.tagSet! {
                    tmp.append(k.toMap())
                }
                map["TagSet"] = tmp
            }
            if self.tertiaryZone != nil {
                map["TertiaryZone"] = self.tertiaryZone!
            }
            if self.topologyType != nil {
                map["TopologyType"] = self.topologyType!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.VPCId != nil {
                map["VPCId"] = self.VPCId!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            if self.gdnRole != nil {
                map["gdnRole"] = self.gdnRole!
            }
            if self.isInGdn != nil {
                map["isInGdn"] = self.isInGdn!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CdcInstanceName"] as? String {
                self.cdcInstanceName = value
            }
            if let value = dict["CnNodeClassCode"] as? String {
                self.cnNodeClassCode = value
            }
            if let value = dict["CnNodeCount"] as? Int32 {
                self.cnNodeCount = value
            }
            if let value = dict["ColumnarInstanceName"] as? String {
                self.columnarInstanceName = value
            }
            if let value = dict["ColumnarReadDBInstances"] as? [String] {
                self.columnarReadDBInstances = value
            }
            if let value = dict["CommodityCode"] as? String {
                self.commodityCode = value
            }
            if let value = dict["ContainBinlogX"] as? Bool {
                self.containBinlogX = value
            }
            if let value = dict["CpuType"] as? String {
                self.cpuType = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DBInstanceName"] as? String {
                self.DBInstanceName = value
            }
            if let value = dict["DBType"] as? String {
                self.DBType = value
            }
            if let value = dict["DBVersion"] as? String {
                self.DBVersion = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DnNodeClassCode"] as? String {
                self.dnNodeClassCode = value
            }
            if let value = dict["DnNodeCount"] as? Int32 {
                self.dnNodeCount = value
            }
            if let value = dict["Engine"] as? String {
                self.engine = value
            }
            if let value = dict["ExpireTime"] as? String {
                self.expireTime = value
            }
            if let value = dict["Expired"] as? Bool {
                self.expired = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["LockMode"] as? String {
                self.lockMode = value
            }
            if let value = dict["LockReason"] as? String {
                self.lockReason = value
            }
            if let value = dict["MinorVersion"] as? String {
                self.minorVersion = value
            }
            if let value = dict["Network"] as? String {
                self.network = value
            }
            if let value = dict["NodeClass"] as? String {
                self.nodeClass = value
            }
            if let value = dict["NodeCount"] as? Int32 {
                self.nodeCount = value
            }
            if let value = dict["Nodes"] as? [Any?] {
                var tmp : [DescribeDBInstancesResponseBody.DBInstances.Nodes] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDBInstancesResponseBody.DBInstances.Nodes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.nodes = tmp
            }
            if let value = dict["PayType"] as? String {
                self.payType = value
            }
            if let value = dict["PrimaryInstanceId"] as? String {
                self.primaryInstanceId = value
            }
            if let value = dict["PrimaryZone"] as? String {
                self.primaryZone = value
            }
            if let value = dict["ReadDBInstances"] as? [String] {
                self.readDBInstances = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["SecondaryZone"] as? String {
                self.secondaryZone = value
            }
            if let value = dict["Series"] as? String {
                self.series = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["StorageType"] as? String {
                self.storageType = value
            }
            if let value = dict["StorageUsed"] as? Int64 {
                self.storageUsed = value
            }
            if let value = dict["SupportBinlogX"] as? Bool {
                self.supportBinlogX = value
            }
            if let value = dict["TagSet"] as? [Any?] {
                var tmp : [DescribeDBInstancesResponseBody.DBInstances.TagSet] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDBInstancesResponseBody.DBInstances.TagSet()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tagSet = tmp
            }
            if let value = dict["TertiaryZone"] as? String {
                self.tertiaryZone = value
            }
            if let value = dict["TopologyType"] as? String {
                self.topologyType = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["VPCId"] as? String {
                self.VPCId = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
            if let value = dict["gdnRole"] as? String {
                self.gdnRole = value
            }
            if let value = dict["isInGdn"] as? Bool {
                self.isInGdn = value
            }
        }
    }
    public var DBInstances: [DescribeDBInstancesResponseBody.DBInstances]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalNumber: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstances != nil {
            var tmp : [Any] = []
            for k in self.DBInstances! {
                tmp.append(k.toMap())
            }
            map["DBInstances"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalNumber != nil {
            map["TotalNumber"] = self.totalNumber!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstances"] as? [Any?] {
            var tmp : [DescribeDBInstancesResponseBody.DBInstances] = []
            for v in value {
                if v != nil {
                    var model = DescribeDBInstancesResponseBody.DBInstances()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.DBInstances = tmp
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalNumber"] as? Int32 {
            self.totalNumber = value
        }
    }
}

public class DescribeDBInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBInstancesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDBInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDBNodePerformanceRequest : Tea.TeaModel {
    public var characterType: String?

    public var DBInstanceName: String?

    public var DBNodeIds: String?

    public var DBNodeRole: String?

    public var endTime: String?

    public var key: String?

    public var regionId: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.characterType != nil {
            map["CharacterType"] = self.characterType!
        }
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.DBNodeIds != nil {
            map["DBNodeIds"] = self.DBNodeIds!
        }
        if self.DBNodeRole != nil {
            map["DBNodeRole"] = self.DBNodeRole!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CharacterType"] as? String {
            self.characterType = value
        }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["DBNodeIds"] as? String {
            self.DBNodeIds = value
        }
        if let value = dict["DBNodeRole"] as? String {
            self.DBNodeRole = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["Key"] as? String {
            self.key = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class DescribeDBNodePerformanceResponseBody : Tea.TeaModel {
    public class PerformanceKeys : Tea.TeaModel {
        public class PerformanceItem : Tea.TeaModel {
            public class Points : Tea.TeaModel {
                public class PerformanceItemValue : Tea.TeaModel {
                    public var timestamp: Int64?

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
                        if self.timestamp != nil {
                            map["Timestamp"] = self.timestamp!
                        }
                        if self.value != nil {
                            map["Value"] = self.value!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Timestamp"] as? Int64 {
                            self.timestamp = value
                        }
                        if let value = dict["Value"] as? String {
                            self.value = value
                        }
                    }
                }
                public var performanceItemValue: [DescribeDBNodePerformanceResponseBody.PerformanceKeys.PerformanceItem.Points.PerformanceItemValue]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.performanceItemValue != nil {
                        var tmp : [Any] = []
                        for k in self.performanceItemValue! {
                            tmp.append(k.toMap())
                        }
                        map["PerformanceItemValue"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["PerformanceItemValue"] as? [Any?] {
                        var tmp : [DescribeDBNodePerformanceResponseBody.PerformanceKeys.PerformanceItem.Points.PerformanceItemValue] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeDBNodePerformanceResponseBody.PerformanceKeys.PerformanceItem.Points.PerformanceItemValue()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.performanceItemValue = tmp
                    }
                }
            }
            public var DBNodeId: String?

            public var measurement: String?

            public var metricName: String?

            public var points: DescribeDBNodePerformanceResponseBody.PerformanceKeys.PerformanceItem.Points?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.points?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.DBNodeId != nil {
                    map["DBNodeId"] = self.DBNodeId!
                }
                if self.measurement != nil {
                    map["Measurement"] = self.measurement!
                }
                if self.metricName != nil {
                    map["MetricName"] = self.metricName!
                }
                if self.points != nil {
                    map["Points"] = self.points?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DBNodeId"] as? String {
                    self.DBNodeId = value
                }
                if let value = dict["Measurement"] as? String {
                    self.measurement = value
                }
                if let value = dict["MetricName"] as? String {
                    self.metricName = value
                }
                if let value = dict["Points"] as? [String: Any?] {
                    var model = DescribeDBNodePerformanceResponseBody.PerformanceKeys.PerformanceItem.Points()
                    model.fromMap(value)
                    self.points = model
                }
            }
        }
        public var performanceItem: [DescribeDBNodePerformanceResponseBody.PerformanceKeys.PerformanceItem]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.performanceItem != nil {
                var tmp : [Any] = []
                for k in self.performanceItem! {
                    tmp.append(k.toMap())
                }
                map["PerformanceItem"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PerformanceItem"] as? [Any?] {
                var tmp : [DescribeDBNodePerformanceResponseBody.PerformanceKeys.PerformanceItem] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDBNodePerformanceResponseBody.PerformanceKeys.PerformanceItem()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.performanceItem = tmp
            }
        }
    }
    public var DBInstanceName: String?

    public var endTime: String?

    public var performanceKeys: DescribeDBNodePerformanceResponseBody.PerformanceKeys?

    public var requestId: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.performanceKeys?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.performanceKeys != nil {
            map["PerformanceKeys"] = self.performanceKeys?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["PerformanceKeys"] as? [String: Any?] {
            var model = DescribeDBNodePerformanceResponseBody.PerformanceKeys()
            model.fromMap(value)
            self.performanceKeys = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class DescribeDBNodePerformanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBNodePerformanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDBNodePerformanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDbListRequest : Tea.TeaModel {
    public var DBInstanceName: String?

    public var DBName: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.DBName != nil {
            map["DBName"] = self.DBName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["DBName"] as? String {
            self.DBName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeDbListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Accounts : Tea.TeaModel {
            public var accountName: String?

            public var accountPrivilege: String?

            public override init() {
                super.init()
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
                if self.accountPrivilege != nil {
                    map["AccountPrivilege"] = self.accountPrivilege!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccountName"] as? String {
                    self.accountName = value
                }
                if let value = dict["AccountPrivilege"] as? String {
                    self.accountPrivilege = value
                }
            }
        }
        public var accounts: [DescribeDbListResponseBody.Data.Accounts]?

        public var characterSetName: String?

        public var DBDescription: String?

        public var DBInstanceName: String?

        public var DBName: String?

        public override init() {
            super.init()
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
            if self.characterSetName != nil {
                map["CharacterSetName"] = self.characterSetName!
            }
            if self.DBDescription != nil {
                map["DBDescription"] = self.DBDescription!
            }
            if self.DBInstanceName != nil {
                map["DBInstanceName"] = self.DBInstanceName!
            }
            if self.DBName != nil {
                map["DBName"] = self.DBName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Accounts"] as? [Any?] {
                var tmp : [DescribeDbListResponseBody.Data.Accounts] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDbListResponseBody.Data.Accounts()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.accounts = tmp
            }
            if let value = dict["CharacterSetName"] as? String {
                self.characterSetName = value
            }
            if let value = dict["DBDescription"] as? String {
                self.DBDescription = value
            }
            if let value = dict["DBInstanceName"] as? String {
                self.DBInstanceName = value
            }
            if let value = dict["DBName"] as? String {
                self.DBName = value
            }
        }
    }
    public var data: [DescribeDbListResponseBody.Data]?

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
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeDbListResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeDbListResponseBody.Data()
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

public class DescribeDbListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDbListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDbListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDistributeTableListRequest : Tea.TeaModel {
    public var DBInstanceName: String?

    public var dbName: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeDistributeTableListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Tables : Tea.TeaModel {
            public var dbKey: String?

            public var tableName: String?

            public var tableType: String?

            public var tbKey: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dbKey != nil {
                    map["DbKey"] = self.dbKey!
                }
                if self.tableName != nil {
                    map["TableName"] = self.tableName!
                }
                if self.tableType != nil {
                    map["TableType"] = self.tableType!
                }
                if self.tbKey != nil {
                    map["TbKey"] = self.tbKey!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DbKey"] as? String {
                    self.dbKey = value
                }
                if let value = dict["TableName"] as? String {
                    self.tableName = value
                }
                if let value = dict["TableType"] as? String {
                    self.tableType = value
                }
                if let value = dict["TbKey"] as? String {
                    self.tbKey = value
                }
            }
        }
        public var tables: [DescribeDistributeTableListResponseBody.Data.Tables]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tables != nil {
                var tmp : [Any] = []
                for k in self.tables! {
                    tmp.append(k.toMap())
                }
                map["Tables"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Tables"] as? [Any?] {
                var tmp : [DescribeDistributeTableListResponseBody.Data.Tables] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDistributeTableListResponseBody.Data.Tables()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tables = tmp
            }
        }
    }
    public var data: DescribeDistributeTableListResponseBody.Data?

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
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeDistributeTableListResponseBody.Data()
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

public class DescribeDistributeTableListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDistributeTableListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDistributeTableListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeEventsRequest : Tea.TeaModel {
    public var endTime: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var startTime: String?

    public override init() {
        super.init()
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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class DescribeEventsResponseBody : Tea.TeaModel {
    public class EventItems : Tea.TeaModel {
        public var eventId: Int64?

        public var eventName: String?

        public var eventPayload: String?

        public var eventReason: String?

        public var eventRecordTime: String?

        public var eventTime: String?

        public var eventType: String?

        public var eventUserType: String?

        public var regionId: String?

        public var resourceName: String?

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
            if self.eventId != nil {
                map["EventId"] = self.eventId!
            }
            if self.eventName != nil {
                map["EventName"] = self.eventName!
            }
            if self.eventPayload != nil {
                map["EventPayload"] = self.eventPayload!
            }
            if self.eventReason != nil {
                map["EventReason"] = self.eventReason!
            }
            if self.eventRecordTime != nil {
                map["EventRecordTime"] = self.eventRecordTime!
            }
            if self.eventTime != nil {
                map["EventTime"] = self.eventTime!
            }
            if self.eventType != nil {
                map["EventType"] = self.eventType!
            }
            if self.eventUserType != nil {
                map["EventUserType"] = self.eventUserType!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceName != nil {
                map["ResourceName"] = self.resourceName!
            }
            if self.resourceType != nil {
                map["ResourceType"] = self.resourceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EventId"] as? Int64 {
                self.eventId = value
            }
            if let value = dict["EventName"] as? String {
                self.eventName = value
            }
            if let value = dict["EventPayload"] as? String {
                self.eventPayload = value
            }
            if let value = dict["EventReason"] as? String {
                self.eventReason = value
            }
            if let value = dict["EventRecordTime"] as? String {
                self.eventRecordTime = value
            }
            if let value = dict["EventTime"] as? String {
                self.eventTime = value
            }
            if let value = dict["EventType"] as? String {
                self.eventType = value
            }
            if let value = dict["EventUserType"] as? String {
                self.eventUserType = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceName"] as? String {
                self.resourceName = value
            }
            if let value = dict["ResourceType"] as? String {
                self.resourceType = value
            }
        }
    }
    public var eventItems: [DescribeEventsResponseBody.EventItems]?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

    public var totalRecordCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.eventItems != nil {
            var tmp : [Any] = []
            for k in self.eventItems! {
                tmp.append(k.toMap())
            }
            map["EventItems"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalRecordCount != nil {
            map["TotalRecordCount"] = self.totalRecordCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EventItems"] as? [Any?] {
            var tmp : [DescribeEventsResponseBody.EventItems] = []
            for v in value {
                if v != nil {
                    var model = DescribeEventsResponseBody.EventItems()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.eventItems = tmp
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalRecordCount"] as? Int64 {
            self.totalRecordCount = value
        }
    }
}

public class DescribeEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeEventsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeEventsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeGdnInstancesRequest : Tea.TeaModel {
    public var filterType: String?

    public var filterValue: String?

    public var GDNId: String?

    public var pageNum: String?

    public var pageSize: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filterType != nil {
            map["FilterType"] = self.filterType!
        }
        if self.filterValue != nil {
            map["FilterValue"] = self.filterValue!
        }
        if self.GDNId != nil {
            map["GDNId"] = self.GDNId!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FilterType"] as? String {
            self.filterType = value
        }
        if let value = dict["FilterValue"] as? String {
            self.filterValue = value
        }
        if let value = dict["GDNId"] as? String {
            self.GDNId = value
        }
        if let value = dict["PageNum"] as? String {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeGdnInstancesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class GdnInstanceList : Tea.TeaModel {
            public class MemberList : Tea.TeaModel {
                public var classCode: String?

                public var cnNodeClassCode: String?

                public var cnNodeCount: String?

                public var commodityCode: String?

                public var dnNodeClassCode: String?

                public var dnNodeCount: String?

                public var expireTime: String?

                public var gmtCreated: String?

                public var memberName: String?

                public var payType: String?

                public var primaryZone: String?

                public var regionId: String?

                public var role: String?

                public var secondaryZone: String?

                public var secondsBehindMaster: String?

                public var status: String?

                public var taskStatus: String?

                public var tertiaryZone: String?

                public var zoneId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.classCode != nil {
                        map["ClassCode"] = self.classCode!
                    }
                    if self.cnNodeClassCode != nil {
                        map["CnNodeClassCode"] = self.cnNodeClassCode!
                    }
                    if self.cnNodeCount != nil {
                        map["CnNodeCount"] = self.cnNodeCount!
                    }
                    if self.commodityCode != nil {
                        map["CommodityCode"] = self.commodityCode!
                    }
                    if self.dnNodeClassCode != nil {
                        map["DnNodeClassCode"] = self.dnNodeClassCode!
                    }
                    if self.dnNodeCount != nil {
                        map["DnNodeCount"] = self.dnNodeCount!
                    }
                    if self.expireTime != nil {
                        map["ExpireTime"] = self.expireTime!
                    }
                    if self.gmtCreated != nil {
                        map["GmtCreated"] = self.gmtCreated!
                    }
                    if self.memberName != nil {
                        map["MemberName"] = self.memberName!
                    }
                    if self.payType != nil {
                        map["PayType"] = self.payType!
                    }
                    if self.primaryZone != nil {
                        map["PrimaryZone"] = self.primaryZone!
                    }
                    if self.regionId != nil {
                        map["RegionId"] = self.regionId!
                    }
                    if self.role != nil {
                        map["Role"] = self.role!
                    }
                    if self.secondaryZone != nil {
                        map["SecondaryZone"] = self.secondaryZone!
                    }
                    if self.secondsBehindMaster != nil {
                        map["SecondsBehindMaster"] = self.secondsBehindMaster!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    if self.taskStatus != nil {
                        map["TaskStatus"] = self.taskStatus!
                    }
                    if self.tertiaryZone != nil {
                        map["TertiaryZone"] = self.tertiaryZone!
                    }
                    if self.zoneId != nil {
                        map["ZoneId"] = self.zoneId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ClassCode"] as? String {
                        self.classCode = value
                    }
                    if let value = dict["CnNodeClassCode"] as? String {
                        self.cnNodeClassCode = value
                    }
                    if let value = dict["CnNodeCount"] as? String {
                        self.cnNodeCount = value
                    }
                    if let value = dict["CommodityCode"] as? String {
                        self.commodityCode = value
                    }
                    if let value = dict["DnNodeClassCode"] as? String {
                        self.dnNodeClassCode = value
                    }
                    if let value = dict["DnNodeCount"] as? String {
                        self.dnNodeCount = value
                    }
                    if let value = dict["ExpireTime"] as? String {
                        self.expireTime = value
                    }
                    if let value = dict["GmtCreated"] as? String {
                        self.gmtCreated = value
                    }
                    if let value = dict["MemberName"] as? String {
                        self.memberName = value
                    }
                    if let value = dict["PayType"] as? String {
                        self.payType = value
                    }
                    if let value = dict["PrimaryZone"] as? String {
                        self.primaryZone = value
                    }
                    if let value = dict["RegionId"] as? String {
                        self.regionId = value
                    }
                    if let value = dict["Role"] as? String {
                        self.role = value
                    }
                    if let value = dict["SecondaryZone"] as? String {
                        self.secondaryZone = value
                    }
                    if let value = dict["SecondsBehindMaster"] as? String {
                        self.secondsBehindMaster = value
                    }
                    if let value = dict["Status"] as? String {
                        self.status = value
                    }
                    if let value = dict["TaskStatus"] as? String {
                        self.taskStatus = value
                    }
                    if let value = dict["TertiaryZone"] as? String {
                        self.tertiaryZone = value
                    }
                    if let value = dict["ZoneId"] as? String {
                        self.zoneId = value
                    }
                }
            }
            public var description_: String?

            public var gdnInstanceName: String?

            public var gmtCreated: String?

            public var memberList: [DescribeGdnInstancesResponseBody.Data.GdnInstanceList.MemberList]?

            public var mysqlVersion: String?

            public var status: String?

            public var switchHistory: String?

            public override init() {
                super.init()
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
                if self.gdnInstanceName != nil {
                    map["GdnInstanceName"] = self.gdnInstanceName!
                }
                if self.gmtCreated != nil {
                    map["GmtCreated"] = self.gmtCreated!
                }
                if self.memberList != nil {
                    var tmp : [Any] = []
                    for k in self.memberList! {
                        tmp.append(k.toMap())
                    }
                    map["MemberList"] = tmp
                }
                if self.mysqlVersion != nil {
                    map["MysqlVersion"] = self.mysqlVersion!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.switchHistory != nil {
                    map["SwitchHistory"] = self.switchHistory!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["GdnInstanceName"] as? String {
                    self.gdnInstanceName = value
                }
                if let value = dict["GmtCreated"] as? String {
                    self.gmtCreated = value
                }
                if let value = dict["MemberList"] as? [Any?] {
                    var tmp : [DescribeGdnInstancesResponseBody.Data.GdnInstanceList.MemberList] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeGdnInstancesResponseBody.Data.GdnInstanceList.MemberList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.memberList = tmp
                }
                if let value = dict["MysqlVersion"] as? String {
                    self.mysqlVersion = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["SwitchHistory"] as? String {
                    self.switchHistory = value
                }
            }
        }
        public var gdnInstanceList: [DescribeGdnInstancesResponseBody.Data.GdnInstanceList]?

        public var pageNumber: String?

        public var pageSize: String?

        public var totalNumber: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.gdnInstanceList != nil {
                var tmp : [Any] = []
                for k in self.gdnInstanceList! {
                    tmp.append(k.toMap())
                }
                map["GdnInstanceList"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalNumber != nil {
                map["TotalNumber"] = self.totalNumber!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GdnInstanceList"] as? [Any?] {
                var tmp : [DescribeGdnInstancesResponseBody.Data.GdnInstanceList] = []
                for v in value {
                    if v != nil {
                        var model = DescribeGdnInstancesResponseBody.Data.GdnInstanceList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.gdnInstanceList = tmp
            }
            if let value = dict["PageNumber"] as? String {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? String {
                self.pageSize = value
            }
            if let value = dict["TotalNumber"] as? String {
                self.totalNumber = value
            }
        }
    }
    public var data: DescribeGdnInstancesResponseBody.Data?

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
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeGdnInstancesResponseBody.Data()
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

public class DescribeGdnInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGdnInstancesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeGdnInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeOpenBackupSetRequest : Tea.TeaModel {
    public var DBInstanceName: String?

    public var regionId: String?

    public var restoreTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.restoreTime != nil {
            map["RestoreTime"] = self.restoreTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RestoreTime"] as? String {
            self.restoreTime = value
        }
    }
}

public class DescribeOpenBackupSetResponseBody : Tea.TeaModel {
    public var data: Any?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeOpenBackupSetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOpenBackupSetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeOpenBackupSetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeParameterTemplatesRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var engineVersion: String?

    public var paramLevel: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.engineVersion != nil {
            map["EngineVersion"] = self.engineVersion!
        }
        if self.paramLevel != nil {
            map["ParamLevel"] = self.paramLevel!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["EngineVersion"] as? String {
            self.engineVersion = value
        }
        if let value = dict["ParamLevel"] as? String {
            self.paramLevel = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeParameterTemplatesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Parameters : Tea.TeaModel {
            public var checkingCode: String?

            public var dynamic_: Int32?

            public var parameterDescription: String?

            public var parameterName: String?

            public var parameterValue: String?

            public var revisable: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.checkingCode != nil {
                    map["CheckingCode"] = self.checkingCode!
                }
                if self.dynamic_ != nil {
                    map["Dynamic"] = self.dynamic_!
                }
                if self.parameterDescription != nil {
                    map["ParameterDescription"] = self.parameterDescription!
                }
                if self.parameterName != nil {
                    map["ParameterName"] = self.parameterName!
                }
                if self.parameterValue != nil {
                    map["ParameterValue"] = self.parameterValue!
                }
                if self.revisable != nil {
                    map["Revisable"] = self.revisable!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CheckingCode"] as? String {
                    self.checkingCode = value
                }
                if let value = dict["Dynamic"] as? Int32 {
                    self.dynamic_ = value
                }
                if let value = dict["ParameterDescription"] as? String {
                    self.parameterDescription = value
                }
                if let value = dict["ParameterName"] as? String {
                    self.parameterName = value
                }
                if let value = dict["ParameterValue"] as? String {
                    self.parameterValue = value
                }
                if let value = dict["Revisable"] as? Int32 {
                    self.revisable = value
                }
            }
        }
        public var engine: String?

        public var engineVersion: String?

        public var parameterCount: Int32?

        public var parameters: [DescribeParameterTemplatesResponseBody.Data.Parameters]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.engine != nil {
                map["Engine"] = self.engine!
            }
            if self.engineVersion != nil {
                map["EngineVersion"] = self.engineVersion!
            }
            if self.parameterCount != nil {
                map["ParameterCount"] = self.parameterCount!
            }
            if self.parameters != nil {
                var tmp : [Any] = []
                for k in self.parameters! {
                    tmp.append(k.toMap())
                }
                map["Parameters"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Engine"] as? String {
                self.engine = value
            }
            if let value = dict["EngineVersion"] as? String {
                self.engineVersion = value
            }
            if let value = dict["ParameterCount"] as? Int32 {
                self.parameterCount = value
            }
            if let value = dict["Parameters"] as? [Any?] {
                var tmp : [DescribeParameterTemplatesResponseBody.Data.Parameters] = []
                for v in value {
                    if v != nil {
                        var model = DescribeParameterTemplatesResponseBody.Data.Parameters()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.parameters = tmp
            }
        }
    }
    public var data: DescribeParameterTemplatesResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeParameterTemplatesResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeParameterTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeParameterTemplatesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeParameterTemplatesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeParametersRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var paramLevel: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.paramLevel != nil {
            map["ParamLevel"] = self.paramLevel!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["ParamLevel"] as? String {
            self.paramLevel = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeParametersResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ConfigParameters : Tea.TeaModel {
            public var parameterDescription: String?

            public var parameterName: String?

            public var parameterValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.parameterDescription != nil {
                    map["ParameterDescription"] = self.parameterDescription!
                }
                if self.parameterName != nil {
                    map["ParameterName"] = self.parameterName!
                }
                if self.parameterValue != nil {
                    map["ParameterValue"] = self.parameterValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ParameterDescription"] as? String {
                    self.parameterDescription = value
                }
                if let value = dict["ParameterName"] as? String {
                    self.parameterName = value
                }
                if let value = dict["ParameterValue"] as? String {
                    self.parameterValue = value
                }
            }
        }
        public class RunningParameters : Tea.TeaModel {
            public var parameterDescription: String?

            public var parameterName: String?

            public var parameterValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.parameterDescription != nil {
                    map["ParameterDescription"] = self.parameterDescription!
                }
                if self.parameterName != nil {
                    map["ParameterName"] = self.parameterName!
                }
                if self.parameterValue != nil {
                    map["ParameterValue"] = self.parameterValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ParameterDescription"] as? String {
                    self.parameterDescription = value
                }
                if let value = dict["ParameterName"] as? String {
                    self.parameterName = value
                }
                if let value = dict["ParameterValue"] as? String {
                    self.parameterValue = value
                }
            }
        }
        public var configParameters: [DescribeParametersResponseBody.Data.ConfigParameters]?

        public var DBInstanceId: String?

        public var engine: String?

        public var engineVersion: String?

        public var runningParameters: [DescribeParametersResponseBody.Data.RunningParameters]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configParameters != nil {
                var tmp : [Any] = []
                for k in self.configParameters! {
                    tmp.append(k.toMap())
                }
                map["ConfigParameters"] = tmp
            }
            if self.DBInstanceId != nil {
                map["DBInstanceId"] = self.DBInstanceId!
            }
            if self.engine != nil {
                map["Engine"] = self.engine!
            }
            if self.engineVersion != nil {
                map["EngineVersion"] = self.engineVersion!
            }
            if self.runningParameters != nil {
                var tmp : [Any] = []
                for k in self.runningParameters! {
                    tmp.append(k.toMap())
                }
                map["RunningParameters"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConfigParameters"] as? [Any?] {
                var tmp : [DescribeParametersResponseBody.Data.ConfigParameters] = []
                for v in value {
                    if v != nil {
                        var model = DescribeParametersResponseBody.Data.ConfigParameters()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.configParameters = tmp
            }
            if let value = dict["DBInstanceId"] as? String {
                self.DBInstanceId = value
            }
            if let value = dict["Engine"] as? String {
                self.engine = value
            }
            if let value = dict["EngineVersion"] as? String {
                self.engineVersion = value
            }
            if let value = dict["RunningParameters"] as? [Any?] {
                var tmp : [DescribeParametersResponseBody.Data.RunningParameters] = []
                for v in value {
                    if v != nil {
                        var model = DescribeParametersResponseBody.Data.RunningParameters()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.runningParameters = tmp
            }
        }
    }
    public var data: DescribeParametersResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeParametersResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeParametersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeParametersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeParametersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public class Region : Tea.TeaModel {
            public class Zones : Tea.TeaModel {
                public class Zone : Tea.TeaModel {
                    public var vpcEnabled: Bool?

                    public var zoneId: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.vpcEnabled != nil {
                            map["VpcEnabled"] = self.vpcEnabled!
                        }
                        if self.zoneId != nil {
                            map["ZoneId"] = self.zoneId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["VpcEnabled"] as? Bool {
                            self.vpcEnabled = value
                        }
                        if let value = dict["ZoneId"] as? String {
                            self.zoneId = value
                        }
                    }
                }
                public var zone: [DescribeRegionsResponseBody.Regions.Region.Zones.Zone]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.zone != nil {
                        var tmp : [Any] = []
                        for k in self.zone! {
                            tmp.append(k.toMap())
                        }
                        map["Zone"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Zone"] as? [Any?] {
                        var tmp : [DescribeRegionsResponseBody.Regions.Region.Zones.Zone] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeRegionsResponseBody.Regions.Region.Zones.Zone()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.zone = tmp
                    }
                }
            }
            public var regionId: String?

            public var supportPolarx10: Bool?

            public var supportPolarx20: Bool?

            public var zones: DescribeRegionsResponseBody.Regions.Region.Zones?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.zones?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.supportPolarx10 != nil {
                    map["SupportPolarx10"] = self.supportPolarx10!
                }
                if self.supportPolarx20 != nil {
                    map["SupportPolarx20"] = self.supportPolarx20!
                }
                if self.zones != nil {
                    map["Zones"] = self.zones?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["SupportPolarx10"] as? Bool {
                    self.supportPolarx10 = value
                }
                if let value = dict["SupportPolarx20"] as? Bool {
                    self.supportPolarx20 = value
                }
                if let value = dict["Zones"] as? [String: Any?] {
                    var model = DescribeRegionsResponseBody.Regions.Region.Zones()
                    model.fromMap(value)
                    self.zones = model
                }
            }
        }
        public var region: [DescribeRegionsResponseBody.Regions.Region]?

        public override init() {
            super.init()
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
                var tmp : [Any] = []
                for k in self.region! {
                    tmp.append(k.toMap())
                }
                map["Region"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Region"] as? [Any?] {
                var tmp : [DescribeRegionsResponseBody.Regions.Region] = []
                for v in value {
                    if v != nil {
                        var model = DescribeRegionsResponseBody.Regions.Region()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.region = tmp
            }
        }
    }
    public var code: Int32?

    public var errorCode: Int32?

    public var message: String?

    public var regions: DescribeRegionsResponseBody.Regions?

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
        try self.regions?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.regions != nil {
            map["Regions"] = self.regions?.toMap()
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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Regions"] as? [String: Any?] {
            var model = DescribeRegionsResponseBody.Regions()
            model.fromMap(value)
            self.regions = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRegionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeRegionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeScaleOutMigrateTaskListRequest : Tea.TeaModel {
    public var DBInstanceName: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

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
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
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
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class DescribeScaleOutMigrateTaskListResponseBody : Tea.TeaModel {
    public var progress: Int32?

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
        if self.progress != nil {
            map["Progress"] = self.progress!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Progress"] as? Int32 {
            self.progress = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeScaleOutMigrateTaskListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeScaleOutMigrateTaskListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeScaleOutMigrateTaskListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSecurityIpsRequest : Tea.TeaModel {
    public var DBInstanceName: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeSecurityIpsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class GroupItems : Tea.TeaModel {
            public var groupName: String?

            public var securityIPList: String?

            public override init() {
                super.init()
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
                if self.securityIPList != nil {
                    map["SecurityIPList"] = self.securityIPList!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["GroupName"] as? String {
                    self.groupName = value
                }
                if let value = dict["SecurityIPList"] as? String {
                    self.securityIPList = value
                }
            }
        }
        public var DBInstanceName: String?

        public var groupItems: [DescribeSecurityIpsResponseBody.Data.GroupItems]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.DBInstanceName != nil {
                map["DBInstanceName"] = self.DBInstanceName!
            }
            if self.groupItems != nil {
                var tmp : [Any] = []
                for k in self.groupItems! {
                    tmp.append(k.toMap())
                }
                map["GroupItems"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DBInstanceName"] as? String {
                self.DBInstanceName = value
            }
            if let value = dict["GroupItems"] as? [Any?] {
                var tmp : [DescribeSecurityIpsResponseBody.Data.GroupItems] = []
                for v in value {
                    if v != nil {
                        var model = DescribeSecurityIpsResponseBody.Data.GroupItems()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.groupItems = tmp
            }
        }
    }
    public var data: DescribeSecurityIpsResponseBody.Data?

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
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeSecurityIpsResponseBody.Data()
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

public class DescribeSecurityIpsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSecurityIpsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeSecurityIpsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSlowLogRecordsRequest : Tea.TeaModel {
    public var characterType: String?

    public var DBInstanceName: String?

    public var DBName: String?

    public var DBNodeIds: String?

    public var endTime: String?

    public var page: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.characterType != nil {
            map["CharacterType"] = self.characterType!
        }
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.DBName != nil {
            map["DBName"] = self.DBName!
        }
        if self.DBNodeIds != nil {
            map["DBNodeIds"] = self.DBNodeIds!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CharacterType"] as? String {
            self.characterType = value
        }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["DBName"] as? String {
            self.DBName = value
        }
        if let value = dict["DBNodeIds"] as? String {
            self.DBNodeIds = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["Page"] as? Int32 {
            self.page = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class DescribeSlowLogRecordsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var CNname: String?

        public var DBName: String?

        public var extension_: String?

        public var fail: String?

        public var frows: String?

        public var hostAddress: String?

        public var insName: String?

        public var isBind: String?

        public var lockTimeMS: String?

        public var params: String?

        public var parseRowCounts: String?

        public var queryStartTime: String?

        public var queryTime: String?

        public var queryTimeMS: String?

        public var returnRowCounts: String?

        public var rows: String?

        public var SCNT: String?

        public var SQLHash: String?

        public var SQLText: String?

        public var sqlType: String?

        public var templateId: String?

        public var tooLong: String?

        public var traceId: String?

        public var transactionPolicy: String?

        public var trxId: String?

        public var WT: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.CNname != nil {
                map["CNname"] = self.CNname!
            }
            if self.DBName != nil {
                map["DBName"] = self.DBName!
            }
            if self.extension_ != nil {
                map["Extension"] = self.extension_!
            }
            if self.fail != nil {
                map["Fail"] = self.fail!
            }
            if self.frows != nil {
                map["Frows"] = self.frows!
            }
            if self.hostAddress != nil {
                map["HostAddress"] = self.hostAddress!
            }
            if self.insName != nil {
                map["InsName"] = self.insName!
            }
            if self.isBind != nil {
                map["IsBind"] = self.isBind!
            }
            if self.lockTimeMS != nil {
                map["LockTimeMS"] = self.lockTimeMS!
            }
            if self.params != nil {
                map["Params"] = self.params!
            }
            if self.parseRowCounts != nil {
                map["ParseRowCounts"] = self.parseRowCounts!
            }
            if self.queryStartTime != nil {
                map["QueryStartTime"] = self.queryStartTime!
            }
            if self.queryTime != nil {
                map["QueryTime"] = self.queryTime!
            }
            if self.queryTimeMS != nil {
                map["QueryTimeMS"] = self.queryTimeMS!
            }
            if self.returnRowCounts != nil {
                map["ReturnRowCounts"] = self.returnRowCounts!
            }
            if self.rows != nil {
                map["Rows"] = self.rows!
            }
            if self.SCNT != nil {
                map["SCNT"] = self.SCNT!
            }
            if self.SQLHash != nil {
                map["SQLHash"] = self.SQLHash!
            }
            if self.SQLText != nil {
                map["SQLText"] = self.SQLText!
            }
            if self.sqlType != nil {
                map["SqlType"] = self.sqlType!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.tooLong != nil {
                map["TooLong"] = self.tooLong!
            }
            if self.traceId != nil {
                map["TraceId"] = self.traceId!
            }
            if self.transactionPolicy != nil {
                map["TransactionPolicy"] = self.transactionPolicy!
            }
            if self.trxId != nil {
                map["TrxId"] = self.trxId!
            }
            if self.WT != nil {
                map["WT"] = self.WT!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CNname"] as? String {
                self.CNname = value
            }
            if let value = dict["DBName"] as? String {
                self.DBName = value
            }
            if let value = dict["Extension"] as? String {
                self.extension_ = value
            }
            if let value = dict["Fail"] as? String {
                self.fail = value
            }
            if let value = dict["Frows"] as? String {
                self.frows = value
            }
            if let value = dict["HostAddress"] as? String {
                self.hostAddress = value
            }
            if let value = dict["InsName"] as? String {
                self.insName = value
            }
            if let value = dict["IsBind"] as? String {
                self.isBind = value
            }
            if let value = dict["LockTimeMS"] as? String {
                self.lockTimeMS = value
            }
            if let value = dict["Params"] as? String {
                self.params = value
            }
            if let value = dict["ParseRowCounts"] as? String {
                self.parseRowCounts = value
            }
            if let value = dict["QueryStartTime"] as? String {
                self.queryStartTime = value
            }
            if let value = dict["QueryTime"] as? String {
                self.queryTime = value
            }
            if let value = dict["QueryTimeMS"] as? String {
                self.queryTimeMS = value
            }
            if let value = dict["ReturnRowCounts"] as? String {
                self.returnRowCounts = value
            }
            if let value = dict["Rows"] as? String {
                self.rows = value
            }
            if let value = dict["SCNT"] as? String {
                self.SCNT = value
            }
            if let value = dict["SQLHash"] as? String {
                self.SQLHash = value
            }
            if let value = dict["SQLText"] as? String {
                self.SQLText = value
            }
            if let value = dict["SqlType"] as? String {
                self.sqlType = value
            }
            if let value = dict["TemplateId"] as? String {
                self.templateId = value
            }
            if let value = dict["TooLong"] as? String {
                self.tooLong = value
            }
            if let value = dict["TraceId"] as? String {
                self.traceId = value
            }
            if let value = dict["TransactionPolicy"] as? String {
                self.transactionPolicy = value
            }
            if let value = dict["TrxId"] as? String {
                self.trxId = value
            }
            if let value = dict["WT"] as? String {
                self.WT = value
            }
        }
    }
    public var DBInstanceId: String?

    public var items: [DescribeSlowLogRecordsResponseBody.Items]?

    public var pageNumber: String?

    public var pageRecordCount: String?

    public var requestId: String?

    public var totalCount: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageRecordCount != nil {
            map["PageRecordCount"] = self.pageRecordCount!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [DescribeSlowLogRecordsResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = DescribeSlowLogRecordsResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageRecordCount"] as? String {
            self.pageRecordCount = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? String {
            self.totalCount = value
        }
    }
}

public class DescribeSlowLogRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSlowLogRecordsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeSlowLogRecordsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeTagsRequest : Tea.TeaModel {
    public var DBInstanceName: String?

    public var regionId: String?

    public var tagKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.tagKey != nil {
            map["TagKey"] = self.tagKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TagKey"] as? String {
            self.tagKey = value
        }
    }
}

public class DescribeTagsResponseBody : Tea.TeaModel {
    public class TagInfos : Tea.TeaModel {
        public var DBInstanceIds: [String]?

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
            if self.DBInstanceIds != nil {
                map["DBInstanceIds"] = self.DBInstanceIds!
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
            if let value = dict["DBInstanceIds"] as? [String] {
                self.DBInstanceIds = value
            }
            if let value = dict["TagKey"] as? String {
                self.tagKey = value
            }
            if let value = dict["TagValue"] as? String {
                self.tagValue = value
            }
        }
    }
    public var requestId: String?

    public var tagInfos: [DescribeTagsResponseBody.TagInfos]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tagInfos != nil {
            var tmp : [Any] = []
            for k in self.tagInfos! {
                tmp.append(k.toMap())
            }
            map["TagInfos"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TagInfos"] as? [Any?] {
            var tmp : [DescribeTagsResponseBody.TagInfos] = []
            for v in value {
                if v != nil {
                    var model = DescribeTagsResponseBody.TagInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tagInfos = tmp
        }
    }
}

public class DescribeTagsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTagsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeTagsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeTasksRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var endTime: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class DescribeTasksResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var beginTime: String?

        public var DBName: String?

        public var finishTime: String?

        public var progress: String?

        public var progressInfo: String?

        public var scaleOutToken: String?

        public var status: String?

        public var taskAction: String?

        public var taskErrorCode: String?

        public var taskErrorMessage: String?

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
            if self.beginTime != nil {
                map["BeginTime"] = self.beginTime!
            }
            if self.DBName != nil {
                map["DBName"] = self.DBName!
            }
            if self.finishTime != nil {
                map["FinishTime"] = self.finishTime!
            }
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.progressInfo != nil {
                map["ProgressInfo"] = self.progressInfo!
            }
            if self.scaleOutToken != nil {
                map["ScaleOutToken"] = self.scaleOutToken!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.taskAction != nil {
                map["TaskAction"] = self.taskAction!
            }
            if self.taskErrorCode != nil {
                map["TaskErrorCode"] = self.taskErrorCode!
            }
            if self.taskErrorMessage != nil {
                map["TaskErrorMessage"] = self.taskErrorMessage!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BeginTime"] as? String {
                self.beginTime = value
            }
            if let value = dict["DBName"] as? String {
                self.DBName = value
            }
            if let value = dict["FinishTime"] as? String {
                self.finishTime = value
            }
            if let value = dict["Progress"] as? String {
                self.progress = value
            }
            if let value = dict["ProgressInfo"] as? String {
                self.progressInfo = value
            }
            if let value = dict["ScaleOutToken"] as? String {
                self.scaleOutToken = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TaskAction"] as? String {
                self.taskAction = value
            }
            if let value = dict["TaskErrorCode"] as? String {
                self.taskErrorCode = value
            }
            if let value = dict["TaskErrorMessage"] as? String {
                self.taskErrorMessage = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
        }
    }
    public var items: [DescribeTasksResponseBody.Items]?

    public var pageNumber: Int32?

    public var pageRecordCount: Int32?

    public var requestId: String?

    public var totalRecordCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageRecordCount != nil {
            map["PageRecordCount"] = self.pageRecordCount!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalRecordCount != nil {
            map["TotalRecordCount"] = self.totalRecordCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [DescribeTasksResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = DescribeTasksResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageRecordCount"] as? Int32 {
            self.pageRecordCount = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalRecordCount"] as? Int32 {
            self.totalRecordCount = value
        }
    }
}

public class DescribeTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTasksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeTasksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeUserEncryptionKeyListRequest : Tea.TeaModel {
    public var DBInstanceName: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeUserEncryptionKeyListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var keyIds: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.keyIds != nil {
                map["KeyIds"] = self.keyIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["KeyIds"] as? [String] {
                self.keyIds = value
            }
        }
    }
    public var data: DescribeUserEncryptionKeyListResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeUserEncryptionKeyListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeUserEncryptionKeyListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUserEncryptionKeyListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeUserEncryptionKeyListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DisableRightsSeparationRequest : Tea.TeaModel {
    public var DBInstanceName: String?

    public var dbaAccountName: String?

    public var dbaAccountPassword: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.dbaAccountName != nil {
            map["DbaAccountName"] = self.dbaAccountName!
        }
        if self.dbaAccountPassword != nil {
            map["DbaAccountPassword"] = self.dbaAccountPassword!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["DbaAccountName"] as? String {
            self.dbaAccountName = value
        }
        if let value = dict["DbaAccountPassword"] as? String {
            self.dbaAccountPassword = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DisableRightsSeparationResponseBody : Tea.TeaModel {
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

public class DisableRightsSeparationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableRightsSeparationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DisableRightsSeparationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableRightsSeparationRequest : Tea.TeaModel {
    public var auditAccountDescription: String?

    public var auditAccountName: String?

    public var auditAccountPassword: String?

    public var DBInstanceName: String?

    public var regionId: String?

    public var securityAccountDescription: String?

    public var securityAccountName: String?

    public var securityAccountPassword: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.auditAccountDescription != nil {
            map["AuditAccountDescription"] = self.auditAccountDescription!
        }
        if self.auditAccountName != nil {
            map["AuditAccountName"] = self.auditAccountName!
        }
        if self.auditAccountPassword != nil {
            map["AuditAccountPassword"] = self.auditAccountPassword!
        }
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.securityAccountDescription != nil {
            map["SecurityAccountDescription"] = self.securityAccountDescription!
        }
        if self.securityAccountName != nil {
            map["SecurityAccountName"] = self.securityAccountName!
        }
        if self.securityAccountPassword != nil {
            map["SecurityAccountPassword"] = self.securityAccountPassword!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuditAccountDescription"] as? String {
            self.auditAccountDescription = value
        }
        if let value = dict["AuditAccountName"] as? String {
            self.auditAccountName = value
        }
        if let value = dict["AuditAccountPassword"] as? String {
            self.auditAccountPassword = value
        }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SecurityAccountDescription"] as? String {
            self.securityAccountDescription = value
        }
        if let value = dict["SecurityAccountName"] as? String {
            self.securityAccountName = value
        }
        if let value = dict["SecurityAccountPassword"] as? String {
            self.securityAccountPassword = value
        }
    }
}

public class EnableRightsSeparationResponseBody : Tea.TeaModel {
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

public class EnableRightsSeparationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableRightsSeparationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = EnableRightsSeparationResponseBody()
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

    public var regionId: String?

    public var resourceId: [String]?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
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
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
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

public class ListTagResourcesResponseBody : Tea.TeaModel {
    public class TagResources : Tea.TeaModel {
        public class TagResource : Tea.TeaModel {
            public var resourceId: String?

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
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
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
                if let value = dict["ResourceId"] as? String {
                    self.resourceId = value
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
        public var tagResource: [ListTagResourcesResponseBody.TagResources.TagResource]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tagResource != nil {
                var tmp : [Any] = []
                for k in self.tagResource! {
                    tmp.append(k.toMap())
                }
                map["TagResource"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TagResource"] as? [Any?] {
                var tmp : [ListTagResourcesResponseBody.TagResources.TagResource] = []
                for v in value {
                    if v != nil {
                        var model = ListTagResourcesResponseBody.TagResources.TagResource()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tagResource = tmp
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var tagResources: ListTagResourcesResponseBody.TagResources?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tagResources?.validate()
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
            map["TagResources"] = self.tagResources?.toMap()
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
        if let value = dict["TagResources"] as? [String: Any?] {
            var model = ListTagResourcesResponseBody.TagResources()
            model.fromMap(value)
            self.tagResources = model
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

public class ModifyAccountDescriptionRequest : Tea.TeaModel {
    public var accountDescription: String?

    public var accountName: String?

    public var DBInstanceName: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountDescription != nil {
            map["AccountDescription"] = self.accountDescription!
        }
        if self.accountName != nil {
            map["AccountName"] = self.accountName!
        }
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountDescription"] as? String {
            self.accountDescription = value
        }
        if let value = dict["AccountName"] as? String {
            self.accountName = value
        }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ModifyAccountDescriptionResponseBody : Tea.TeaModel {
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

public class ModifyAccountDescriptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAccountDescriptionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyAccountDescriptionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyAccountPrivilegeRequest : Tea.TeaModel {
    public var accountName: String?

    public var accountPrivilege: String?

    public var DBInstanceName: String?

    public var dbName: String?

    public var regionId: String?

    public var securityAccountName: String?

    public var securityAccountPassword: String?

    public override init() {
        super.init()
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
        if self.accountPrivilege != nil {
            map["AccountPrivilege"] = self.accountPrivilege!
        }
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.securityAccountName != nil {
            map["SecurityAccountName"] = self.securityAccountName!
        }
        if self.securityAccountPassword != nil {
            map["SecurityAccountPassword"] = self.securityAccountPassword!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountName"] as? String {
            self.accountName = value
        }
        if let value = dict["AccountPrivilege"] as? String {
            self.accountPrivilege = value
        }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SecurityAccountName"] as? String {
            self.securityAccountName = value
        }
        if let value = dict["SecurityAccountPassword"] as? String {
            self.securityAccountPassword = value
        }
    }
}

public class ModifyAccountPrivilegeResponseBody : Tea.TeaModel {
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

public class ModifyAccountPrivilegeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAccountPrivilegeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyAccountPrivilegeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyActiveOperationMaintainConfRequest : Tea.TeaModel {
    public var cycleTime: String?

    public var cycleType: String?

    public var maintainEndTime: String?

    public var maintainStartTime: String?

    public var regionId: String?

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
        if self.cycleTime != nil {
            map["CycleTime"] = self.cycleTime!
        }
        if self.cycleType != nil {
            map["CycleType"] = self.cycleType!
        }
        if self.maintainEndTime != nil {
            map["MaintainEndTime"] = self.maintainEndTime!
        }
        if self.maintainStartTime != nil {
            map["MaintainStartTime"] = self.maintainStartTime!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CycleTime"] as? String {
            self.cycleTime = value
        }
        if let value = dict["CycleType"] as? String {
            self.cycleType = value
        }
        if let value = dict["MaintainEndTime"] as? String {
            self.maintainEndTime = value
        }
        if let value = dict["MaintainStartTime"] as? String {
            self.maintainStartTime = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
    }
}

public class ModifyActiveOperationMaintainConfResponseBody : Tea.TeaModel {
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

public class ModifyActiveOperationMaintainConfResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyActiveOperationMaintainConfResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyActiveOperationMaintainConfResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyActiveOperationTasksRequest : Tea.TeaModel {
    public var ids: String?

    public var immediateStart: Int64?

    public var regionId: String?

    public var switchTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ids != nil {
            map["Ids"] = self.ids!
        }
        if self.immediateStart != nil {
            map["ImmediateStart"] = self.immediateStart!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.switchTime != nil {
            map["SwitchTime"] = self.switchTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Ids"] as? String {
            self.ids = value
        }
        if let value = dict["ImmediateStart"] as? Int64 {
            self.immediateStart = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SwitchTime"] as? String {
            self.switchTime = value
        }
    }
}

public class ModifyActiveOperationTasksResponseBody : Tea.TeaModel {
    public var ids: String?

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
        if self.ids != nil {
            map["Ids"] = self.ids!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Ids"] as? String {
            self.ids = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ModifyActiveOperationTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyActiveOperationTasksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyActiveOperationTasksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyDBInstanceClassRequest : Tea.TeaModel {
    public var clientToken: String?

    public var cnClass: String?

    public var DBInstanceName: String?

    public var dnClass: String?

    public var dnStorageSpace: String?

    public var regionId: String?

    public var specifiedDNScale: Bool?

    public var specifiedDNSpecMapJson: String?

    public var switchTime: String?

    public var switchTimeMode: String?

    public var targetDBInstanceClass: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.cnClass != nil {
            map["CnClass"] = self.cnClass!
        }
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.dnClass != nil {
            map["DnClass"] = self.dnClass!
        }
        if self.dnStorageSpace != nil {
            map["DnStorageSpace"] = self.dnStorageSpace!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.specifiedDNScale != nil {
            map["SpecifiedDNScale"] = self.specifiedDNScale!
        }
        if self.specifiedDNSpecMapJson != nil {
            map["SpecifiedDNSpecMapJson"] = self.specifiedDNSpecMapJson!
        }
        if self.switchTime != nil {
            map["SwitchTime"] = self.switchTime!
        }
        if self.switchTimeMode != nil {
            map["SwitchTimeMode"] = self.switchTimeMode!
        }
        if self.targetDBInstanceClass != nil {
            map["TargetDBInstanceClass"] = self.targetDBInstanceClass!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["CnClass"] as? String {
            self.cnClass = value
        }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["DnClass"] as? String {
            self.dnClass = value
        }
        if let value = dict["DnStorageSpace"] as? String {
            self.dnStorageSpace = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SpecifiedDNScale"] as? Bool {
            self.specifiedDNScale = value
        }
        if let value = dict["SpecifiedDNSpecMapJson"] as? String {
            self.specifiedDNSpecMapJson = value
        }
        if let value = dict["SwitchTime"] as? String {
            self.switchTime = value
        }
        if let value = dict["SwitchTimeMode"] as? String {
            self.switchTimeMode = value
        }
        if let value = dict["TargetDBInstanceClass"] as? String {
            self.targetDBInstanceClass = value
        }
    }
}

public class ModifyDBInstanceClassResponseBody : Tea.TeaModel {
    public var orderId: String?

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
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ModifyDBInstanceClassResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDBInstanceClassResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyDBInstanceClassResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyDBInstanceConfigRequest : Tea.TeaModel {
    public var configName: String?

    public var configValue: String?

    public var DBInstanceName: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configName != nil {
            map["ConfigName"] = self.configName!
        }
        if self.configValue != nil {
            map["ConfigValue"] = self.configValue!
        }
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConfigName"] as? String {
            self.configName = value
        }
        if let value = dict["ConfigValue"] as? String {
            self.configValue = value
        }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ModifyDBInstanceConfigResponseBody : Tea.TeaModel {
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

public class ModifyDBInstanceConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDBInstanceConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyDBInstanceConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyDBInstanceConnectionStringRequest : Tea.TeaModel {
    public var connectionString: String?

    public var DBInstanceName: String?

    public var newPort: String?

    public var newPrefix: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.connectionString != nil {
            map["ConnectionString"] = self.connectionString!
        }
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.newPort != nil {
            map["NewPort"] = self.newPort!
        }
        if self.newPrefix != nil {
            map["NewPrefix"] = self.newPrefix!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConnectionString"] as? String {
            self.connectionString = value
        }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["NewPort"] as? String {
            self.newPort = value
        }
        if let value = dict["NewPrefix"] as? String {
            self.newPrefix = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ModifyDBInstanceConnectionStringResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var connectionString: String?

        public var DBInstanceName: String?

        public var DBInstanceNetType: String?

        public var port: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.connectionString != nil {
                map["ConnectionString"] = self.connectionString!
            }
            if self.DBInstanceName != nil {
                map["DBInstanceName"] = self.DBInstanceName!
            }
            if self.DBInstanceNetType != nil {
                map["DBInstanceNetType"] = self.DBInstanceNetType!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConnectionString"] as? String {
                self.connectionString = value
            }
            if let value = dict["DBInstanceName"] as? String {
                self.DBInstanceName = value
            }
            if let value = dict["DBInstanceNetType"] as? String {
                self.DBInstanceNetType = value
            }
            if let value = dict["Port"] as? String {
                self.port = value
            }
        }
    }
    public var code: Int64?

    public var data: ModifyDBInstanceConnectionStringResponseBody.Data?

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
        if let value = dict["Code"] as? Int64 {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ModifyDBInstanceConnectionStringResponseBody.Data()
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

public class ModifyDBInstanceConnectionStringResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDBInstanceConnectionStringResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyDBInstanceConnectionStringResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyDBInstanceDescriptionRequest : Tea.TeaModel {
    public var DBInstanceDescription: String?

    public var DBInstanceName: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceDescription != nil {
            map["DBInstanceDescription"] = self.DBInstanceDescription!
        }
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceDescription"] as? String {
            self.DBInstanceDescription = value
        }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ModifyDBInstanceDescriptionResponseBody : Tea.TeaModel {
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

public class ModifyDBInstanceDescriptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDBInstanceDescriptionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyDBInstanceDescriptionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyDatabaseDescriptionRequest : Tea.TeaModel {
    public var DBInstanceName: String?

    public var dbDescription: String?

    public var dbName: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.dbDescription != nil {
            map["DbDescription"] = self.dbDescription!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["DbDescription"] as? String {
            self.dbDescription = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ModifyDatabaseDescriptionResponseBody : Tea.TeaModel {
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

public class ModifyDatabaseDescriptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDatabaseDescriptionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyDatabaseDescriptionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyParameterRequest : Tea.TeaModel {
    public var clientToken: String?

    public var DBInstanceId: String?

    public var paramLevel: String?

    public var parameterGroupId: String?

    public var parameters: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.paramLevel != nil {
            map["ParamLevel"] = self.paramLevel!
        }
        if self.parameterGroupId != nil {
            map["ParameterGroupId"] = self.parameterGroupId!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["ParamLevel"] as? String {
            self.paramLevel = value
        }
        if let value = dict["ParameterGroupId"] as? String {
            self.parameterGroupId = value
        }
        if let value = dict["Parameters"] as? String {
            self.parameters = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ModifyParameterResponseBody : Tea.TeaModel {
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

public class ModifyParameterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyParameterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyParameterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifySecurityIpsRequest : Tea.TeaModel {
    public var DBInstanceName: String?

    public var groupName: String?

    public var modifyMode: String?

    public var regionId: String?

    public var securityIPList: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.modifyMode != nil {
            map["ModifyMode"] = self.modifyMode!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.securityIPList != nil {
            map["SecurityIPList"] = self.securityIPList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["ModifyMode"] as? String {
            self.modifyMode = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SecurityIPList"] as? String {
            self.securityIPList = value
        }
    }
}

public class ModifySecurityIpsResponseBody : Tea.TeaModel {
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

public class ModifySecurityIpsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifySecurityIpsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifySecurityIpsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReleaseColdDataVolumeRequest : Tea.TeaModel {
    public var DBInstanceName: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ReleaseColdDataVolumeResponseBody : Tea.TeaModel {
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

public class ReleaseColdDataVolumeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReleaseColdDataVolumeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ReleaseColdDataVolumeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReleaseInstancePublicConnectionRequest : Tea.TeaModel {
    public var currentConnectionString: String?

    public var DBInstanceName: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentConnectionString != nil {
            map["CurrentConnectionString"] = self.currentConnectionString!
        }
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentConnectionString"] as? String {
            self.currentConnectionString = value
        }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ReleaseInstancePublicConnectionResponseBody : Tea.TeaModel {
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

public class ReleaseInstancePublicConnectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReleaseInstancePublicConnectionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ReleaseInstancePublicConnectionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ResetAccountPasswordRequest : Tea.TeaModel {
    public var accountName: String?

    public var accountPassword: String?

    public var DBInstanceName: String?

    public var regionId: String?

    public var securityAccountName: String?

    public var securityAccountPassword: String?

    public override init() {
        super.init()
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
        if self.accountPassword != nil {
            map["AccountPassword"] = self.accountPassword!
        }
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.securityAccountName != nil {
            map["SecurityAccountName"] = self.securityAccountName!
        }
        if self.securityAccountPassword != nil {
            map["SecurityAccountPassword"] = self.securityAccountPassword!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountName"] as? String {
            self.accountName = value
        }
        if let value = dict["AccountPassword"] as? String {
            self.accountPassword = value
        }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SecurityAccountName"] as? String {
            self.securityAccountName = value
        }
        if let value = dict["SecurityAccountPassword"] as? String {
            self.securityAccountPassword = value
        }
    }
}

public class ResetAccountPasswordResponseBody : Tea.TeaModel {
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

public class ResetAccountPasswordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetAccountPasswordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ResetAccountPasswordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RestartDBInstanceRequest : Tea.TeaModel {
    public var DBInstanceName: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class RestartDBInstanceResponseBody : Tea.TeaModel {
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

public class RestartDBInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RestartDBInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RestartDBInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SwitchDBInstanceHARequest : Tea.TeaModel {
    public var DBInstanceName: String?

    public var regionId: String?

    public var switchTime: String?

    public var switchTimeMode: String?

    public var targetPrimaryAzoneId: String?

    public var targetPrimaryRegionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.switchTime != nil {
            map["SwitchTime"] = self.switchTime!
        }
        if self.switchTimeMode != nil {
            map["SwitchTimeMode"] = self.switchTimeMode!
        }
        if self.targetPrimaryAzoneId != nil {
            map["TargetPrimaryAzoneId"] = self.targetPrimaryAzoneId!
        }
        if self.targetPrimaryRegionId != nil {
            map["TargetPrimaryRegionId"] = self.targetPrimaryRegionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SwitchTime"] as? String {
            self.switchTime = value
        }
        if let value = dict["SwitchTimeMode"] as? String {
            self.switchTimeMode = value
        }
        if let value = dict["TargetPrimaryAzoneId"] as? String {
            self.targetPrimaryAzoneId = value
        }
        if let value = dict["TargetPrimaryRegionId"] as? String {
            self.targetPrimaryRegionId = value
        }
    }
}

public class SwitchDBInstanceHAResponseBody : Tea.TeaModel {
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

public class SwitchDBInstanceHAResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SwitchDBInstanceHAResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SwitchDBInstanceHAResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SwitchGdnMemberRoleRequest : Tea.TeaModel {
    public var DBInstanceName: String?

    public var regionId: String?

    public var switchMode: String?

    public var taskTimeout: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.switchMode != nil {
            map["SwitchMode"] = self.switchMode!
        }
        if self.taskTimeout != nil {
            map["TaskTimeout"] = self.taskTimeout!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SwitchMode"] as? String {
            self.switchMode = value
        }
        if let value = dict["TaskTimeout"] as? Int64 {
            self.taskTimeout = value
        }
    }
}

public class SwitchGdnMemberRoleResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var taskId: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TaskId"] as? Int32 {
                self.taskId = value
            }
        }
    }
    public var data: SwitchGdnMemberRoleResponseBody.Data?

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
        if let value = dict["Data"] as? [String: Any?] {
            var model = SwitchGdnMemberRoleResponseBody.Data()
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

public class SwitchGdnMemberRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SwitchGdnMemberRoleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SwitchGdnMemberRoleResponseBody()
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
    public var regionId: String?

    public var resourceId: [String]?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
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
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
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

public class UntagResourcesRequest : Tea.TeaModel {
    public var all: Bool?

    public var regionId: String?

    public var resourceId: [String]?

    public var resourceType: String?

    public var tagKey: [String]?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tagKey != nil {
            map["TagKey"] = self.tagKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["All"] as? Bool {
            self.all = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["TagKey"] as? [String] {
            self.tagKey = value
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

public class UpdateBackupPolicyRequest : Tea.TeaModel {
    public var backupPeriod: String?

    public var backupPlanBegin: String?

    public var backupSetRetention: Int32?

    public var backupType: String?

    public var backupWay: String?

    public var coldDataBackupInterval: Int32?

    public var coldDataBackupRetention: Int32?

    public var crossRegionDataBackupRetention: Int32?

    public var crossRegionLogBackupRetention: Int32?

    public var DBInstanceName: String?

    public var destCrossRegion: String?

    public var forceCleanOnHighSpaceUsage: Int32?

    public var isCrossRegionDataBackupEnabled: Bool?

    public var isCrossRegionLogBackupEnabled: Bool?

    public var isEnabled: Int32?

    public var localLogRetention: Int32?

    public var localLogRetentionNumber: Int32?

    public var logLocalRetentionSpace: Int32?

    public var regionId: String?

    public var removeLogRetention: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backupPeriod != nil {
            map["BackupPeriod"] = self.backupPeriod!
        }
        if self.backupPlanBegin != nil {
            map["BackupPlanBegin"] = self.backupPlanBegin!
        }
        if self.backupSetRetention != nil {
            map["BackupSetRetention"] = self.backupSetRetention!
        }
        if self.backupType != nil {
            map["BackupType"] = self.backupType!
        }
        if self.backupWay != nil {
            map["BackupWay"] = self.backupWay!
        }
        if self.coldDataBackupInterval != nil {
            map["ColdDataBackupInterval"] = self.coldDataBackupInterval!
        }
        if self.coldDataBackupRetention != nil {
            map["ColdDataBackupRetention"] = self.coldDataBackupRetention!
        }
        if self.crossRegionDataBackupRetention != nil {
            map["CrossRegionDataBackupRetention"] = self.crossRegionDataBackupRetention!
        }
        if self.crossRegionLogBackupRetention != nil {
            map["CrossRegionLogBackupRetention"] = self.crossRegionLogBackupRetention!
        }
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.destCrossRegion != nil {
            map["DestCrossRegion"] = self.destCrossRegion!
        }
        if self.forceCleanOnHighSpaceUsage != nil {
            map["ForceCleanOnHighSpaceUsage"] = self.forceCleanOnHighSpaceUsage!
        }
        if self.isCrossRegionDataBackupEnabled != nil {
            map["IsCrossRegionDataBackupEnabled"] = self.isCrossRegionDataBackupEnabled!
        }
        if self.isCrossRegionLogBackupEnabled != nil {
            map["IsCrossRegionLogBackupEnabled"] = self.isCrossRegionLogBackupEnabled!
        }
        if self.isEnabled != nil {
            map["IsEnabled"] = self.isEnabled!
        }
        if self.localLogRetention != nil {
            map["LocalLogRetention"] = self.localLogRetention!
        }
        if self.localLogRetentionNumber != nil {
            map["LocalLogRetentionNumber"] = self.localLogRetentionNumber!
        }
        if self.logLocalRetentionSpace != nil {
            map["LogLocalRetentionSpace"] = self.logLocalRetentionSpace!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.removeLogRetention != nil {
            map["RemoveLogRetention"] = self.removeLogRetention!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupPeriod"] as? String {
            self.backupPeriod = value
        }
        if let value = dict["BackupPlanBegin"] as? String {
            self.backupPlanBegin = value
        }
        if let value = dict["BackupSetRetention"] as? Int32 {
            self.backupSetRetention = value
        }
        if let value = dict["BackupType"] as? String {
            self.backupType = value
        }
        if let value = dict["BackupWay"] as? String {
            self.backupWay = value
        }
        if let value = dict["ColdDataBackupInterval"] as? Int32 {
            self.coldDataBackupInterval = value
        }
        if let value = dict["ColdDataBackupRetention"] as? Int32 {
            self.coldDataBackupRetention = value
        }
        if let value = dict["CrossRegionDataBackupRetention"] as? Int32 {
            self.crossRegionDataBackupRetention = value
        }
        if let value = dict["CrossRegionLogBackupRetention"] as? Int32 {
            self.crossRegionLogBackupRetention = value
        }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["DestCrossRegion"] as? String {
            self.destCrossRegion = value
        }
        if let value = dict["ForceCleanOnHighSpaceUsage"] as? Int32 {
            self.forceCleanOnHighSpaceUsage = value
        }
        if let value = dict["IsCrossRegionDataBackupEnabled"] as? Bool {
            self.isCrossRegionDataBackupEnabled = value
        }
        if let value = dict["IsCrossRegionLogBackupEnabled"] as? Bool {
            self.isCrossRegionLogBackupEnabled = value
        }
        if let value = dict["IsEnabled"] as? Int32 {
            self.isEnabled = value
        }
        if let value = dict["LocalLogRetention"] as? Int32 {
            self.localLogRetention = value
        }
        if let value = dict["LocalLogRetentionNumber"] as? Int32 {
            self.localLogRetentionNumber = value
        }
        if let value = dict["LogLocalRetentionSpace"] as? Int32 {
            self.logLocalRetentionSpace = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RemoveLogRetention"] as? Int32 {
            self.removeLogRetention = value
        }
    }
}

public class UpdateBackupPolicyResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var backupPeriod: String?

        public var backupPlanBegin: String?

        public var backupSetRetention: Int32?

        public var backupType: String?

        public var backupWay: String?

        public var coldDataBackupInterval: Int32?

        public var coldDataBackupRetention: Int32?

        public var crossRegionDataBackupRetention: Int32?

        public var crossRegionLogBackupRetention: Int32?

        public var DBInstanceName: String?

        public var destCrossRegion: String?

        public var forceCleanOnHighSpaceUsage: Int32?

        public var isCrossRegionDataBackupEnabled: Bool?

        public var isCrossRegionLogBackupEnabled: Bool?

        public var isEnabled: Int32?

        public var localLogRetention: Int32?

        public var localLogRetentionNumber: Int32?

        public var logLocalRetentionSpace: Int32?

        public var removeLogRetention: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backupPeriod != nil {
                map["BackupPeriod"] = self.backupPeriod!
            }
            if self.backupPlanBegin != nil {
                map["BackupPlanBegin"] = self.backupPlanBegin!
            }
            if self.backupSetRetention != nil {
                map["BackupSetRetention"] = self.backupSetRetention!
            }
            if self.backupType != nil {
                map["BackupType"] = self.backupType!
            }
            if self.backupWay != nil {
                map["BackupWay"] = self.backupWay!
            }
            if self.coldDataBackupInterval != nil {
                map["ColdDataBackupInterval"] = self.coldDataBackupInterval!
            }
            if self.coldDataBackupRetention != nil {
                map["ColdDataBackupRetention"] = self.coldDataBackupRetention!
            }
            if self.crossRegionDataBackupRetention != nil {
                map["CrossRegionDataBackupRetention"] = self.crossRegionDataBackupRetention!
            }
            if self.crossRegionLogBackupRetention != nil {
                map["CrossRegionLogBackupRetention"] = self.crossRegionLogBackupRetention!
            }
            if self.DBInstanceName != nil {
                map["DBInstanceName"] = self.DBInstanceName!
            }
            if self.destCrossRegion != nil {
                map["DestCrossRegion"] = self.destCrossRegion!
            }
            if self.forceCleanOnHighSpaceUsage != nil {
                map["ForceCleanOnHighSpaceUsage"] = self.forceCleanOnHighSpaceUsage!
            }
            if self.isCrossRegionDataBackupEnabled != nil {
                map["IsCrossRegionDataBackupEnabled"] = self.isCrossRegionDataBackupEnabled!
            }
            if self.isCrossRegionLogBackupEnabled != nil {
                map["IsCrossRegionLogBackupEnabled"] = self.isCrossRegionLogBackupEnabled!
            }
            if self.isEnabled != nil {
                map["IsEnabled"] = self.isEnabled!
            }
            if self.localLogRetention != nil {
                map["LocalLogRetention"] = self.localLogRetention!
            }
            if self.localLogRetentionNumber != nil {
                map["LocalLogRetentionNumber"] = self.localLogRetentionNumber!
            }
            if self.logLocalRetentionSpace != nil {
                map["LogLocalRetentionSpace"] = self.logLocalRetentionSpace!
            }
            if self.removeLogRetention != nil {
                map["RemoveLogRetention"] = self.removeLogRetention!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackupPeriod"] as? String {
                self.backupPeriod = value
            }
            if let value = dict["BackupPlanBegin"] as? String {
                self.backupPlanBegin = value
            }
            if let value = dict["BackupSetRetention"] as? Int32 {
                self.backupSetRetention = value
            }
            if let value = dict["BackupType"] as? String {
                self.backupType = value
            }
            if let value = dict["BackupWay"] as? String {
                self.backupWay = value
            }
            if let value = dict["ColdDataBackupInterval"] as? Int32 {
                self.coldDataBackupInterval = value
            }
            if let value = dict["ColdDataBackupRetention"] as? Int32 {
                self.coldDataBackupRetention = value
            }
            if let value = dict["CrossRegionDataBackupRetention"] as? Int32 {
                self.crossRegionDataBackupRetention = value
            }
            if let value = dict["CrossRegionLogBackupRetention"] as? Int32 {
                self.crossRegionLogBackupRetention = value
            }
            if let value = dict["DBInstanceName"] as? String {
                self.DBInstanceName = value
            }
            if let value = dict["DestCrossRegion"] as? String {
                self.destCrossRegion = value
            }
            if let value = dict["ForceCleanOnHighSpaceUsage"] as? Int32 {
                self.forceCleanOnHighSpaceUsage = value
            }
            if let value = dict["IsCrossRegionDataBackupEnabled"] as? Bool {
                self.isCrossRegionDataBackupEnabled = value
            }
            if let value = dict["IsCrossRegionLogBackupEnabled"] as? Bool {
                self.isCrossRegionLogBackupEnabled = value
            }
            if let value = dict["IsEnabled"] as? Int32 {
                self.isEnabled = value
            }
            if let value = dict["LocalLogRetention"] as? Int32 {
                self.localLogRetention = value
            }
            if let value = dict["LocalLogRetentionNumber"] as? Int32 {
                self.localLogRetentionNumber = value
            }
            if let value = dict["LogLocalRetentionSpace"] as? Int32 {
                self.logLocalRetentionSpace = value
            }
            if let value = dict["RemoveLogRetention"] as? Int32 {
                self.removeLogRetention = value
            }
        }
    }
    public var data: UpdateBackupPolicyResponseBody.Data?

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
        if let value = dict["Data"] as? [String: Any?] {
            var model = UpdateBackupPolicyResponseBody.Data()
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

public class UpdateBackupPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateBackupPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateBackupPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDBInstanceSSLRequest : Tea.TeaModel {
    public var certCommonName: String?

    public var DBInstanceName: String?

    public var enableSSL: Bool?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certCommonName != nil {
            map["CertCommonName"] = self.certCommonName!
        }
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.enableSSL != nil {
            map["EnableSSL"] = self.enableSSL!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertCommonName"] as? String {
            self.certCommonName = value
        }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["EnableSSL"] as? Bool {
            self.enableSSL = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class UpdateDBInstanceSSLResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TaskId"] as? Int64 {
                self.taskId = value
            }
        }
    }
    public var data: UpdateDBInstanceSSLResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = UpdateDBInstanceSSLResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateDBInstanceSSLResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDBInstanceSSLResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateDBInstanceSSLResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDBInstanceTDERequest : Tea.TeaModel {
    public var DBInstanceName: String?

    public var encryptionKey: String?

    public var regionId: String?

    public var roleArn: String?

    public var TDEStatus: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.encryptionKey != nil {
            map["EncryptionKey"] = self.encryptionKey!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.roleArn != nil {
            map["RoleArn"] = self.roleArn!
        }
        if self.TDEStatus != nil {
            map["TDEStatus"] = self.TDEStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["EncryptionKey"] as? String {
            self.encryptionKey = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RoleArn"] as? String {
            self.roleArn = value
        }
        if let value = dict["TDEStatus"] as? Int32 {
            self.TDEStatus = value
        }
    }
}

public class UpdateDBInstanceTDEResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
        }
    }
    public var data: UpdateDBInstanceTDEResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = UpdateDBInstanceTDEResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateDBInstanceTDEResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDBInstanceTDEResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateDBInstanceTDEResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdatePolarDBXInstanceNodeRequest : Tea.TeaModel {
    public var addDNSpec: String?

    public var CNNodeCount: Int32?

    public var clientToken: String?

    public var DBInstanceName: String?

    public var DNNodeCount: Int32?

    public var dbInstanceNodeCount: Int32?

    public var deleteDNIds: String?

    public var regionId: String?

    public var storagePoolName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addDNSpec != nil {
            map["AddDNSpec"] = self.addDNSpec!
        }
        if self.CNNodeCount != nil {
            map["CNNodeCount"] = self.CNNodeCount!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.DNNodeCount != nil {
            map["DNNodeCount"] = self.DNNodeCount!
        }
        if self.dbInstanceNodeCount != nil {
            map["DbInstanceNodeCount"] = self.dbInstanceNodeCount!
        }
        if self.deleteDNIds != nil {
            map["DeleteDNIds"] = self.deleteDNIds!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.storagePoolName != nil {
            map["StoragePoolName"] = self.storagePoolName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddDNSpec"] as? String {
            self.addDNSpec = value
        }
        if let value = dict["CNNodeCount"] as? Int32 {
            self.CNNodeCount = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["DNNodeCount"] as? Int32 {
            self.DNNodeCount = value
        }
        if let value = dict["DbInstanceNodeCount"] as? Int32 {
            self.dbInstanceNodeCount = value
        }
        if let value = dict["DeleteDNIds"] as? String {
            self.deleteDNIds = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StoragePoolName"] as? String {
            self.storagePoolName = value
        }
    }
}

public class UpdatePolarDBXInstanceNodeResponseBody : Tea.TeaModel {
    public var orderId: String?

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
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdatePolarDBXInstanceNodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePolarDBXInstanceNodeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdatePolarDBXInstanceNodeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpgradeDBInstanceKernelVersionRequest : Tea.TeaModel {
    public var DBInstanceName: String?

    public var minorVersion: String?

    public var regionId: String?

    public var switchMode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.minorVersion != nil {
            map["MinorVersion"] = self.minorVersion!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.switchMode != nil {
            map["SwitchMode"] = self.switchMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["MinorVersion"] as? String {
            self.minorVersion = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SwitchMode"] as? String {
            self.switchMode = value
        }
    }
}

public class UpgradeDBInstanceKernelVersionResponseBody : Tea.TeaModel {
    public var DBInstanceName: String?

    public var requestId: String?

    public var targetMinorVersion: String?

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
        if self.DBInstanceName != nil {
            map["DBInstanceName"] = self.DBInstanceName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.targetMinorVersion != nil {
            map["TargetMinorVersion"] = self.targetMinorVersion!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceName"] as? String {
            self.DBInstanceName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TargetMinorVersion"] as? String {
            self.targetMinorVersion = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class UpgradeDBInstanceKernelVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpgradeDBInstanceKernelVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpgradeDBInstanceKernelVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
