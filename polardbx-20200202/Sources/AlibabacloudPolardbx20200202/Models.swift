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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StorageInstanceName") {
            self.storageInstanceName = dict["StorageInstanceName"] as! String
        }
        if dict.keys.contains("SwitchTime") {
            self.switchTime = dict["SwitchTime"] as! String
        }
        if dict.keys.contains("SwitchTimeMode") {
            self.switchTimeMode = dict["SwitchTimeMode"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AlignStoragePrimaryAzoneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AllocateColdDataVolumeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConnectionStringPrefix") {
            self.connectionStringPrefix = dict["ConnectionStringPrefix"] as! String
        }
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Port") {
            self.port = dict["Port"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AllocateInstancePublicConnectionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ids") {
            self.ids = dict["Ids"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ids") {
            self.ids = dict["Ids"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CancelActiveOperationTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NewResourceGroupId") {
            self.newResourceGroupId = dict["NewResourceGroupId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ChangeResourceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleArn") {
            self.roleArn = dict["RoleArn"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthorizationState") {
                self.authorizationState = dict["AuthorizationState"] as! String
            }
            if dict.keys.contains("RoleArn") {
                self.roleArn = dict["RoleArn"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = CheckCloudResourceAuthorizedResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CheckCloudResourceAuthorizedResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountDescription") {
            self.accountDescription = dict["AccountDescription"] as! String
        }
        if dict.keys.contains("AccountName") {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("AccountPassword") {
            self.accountPassword = dict["AccountPassword"] as! String
        }
        if dict.keys.contains("AccountPrivilege") {
            self.accountPrivilege = dict["AccountPrivilege"] as! String
        }
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("DBName") {
            self.DBName = dict["DBName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SecurityAccountName") {
            self.securityAccountName = dict["SecurityAccountName"] as! String
        }
        if dict.keys.contains("SecurityAccountPassword") {
            self.securityAccountPassword = dict["SecurityAccountPassword"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupType") {
            self.backupType = dict["BackupType"] as! String
        }
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BackupSetId") {
                self.backupSetId = dict["BackupSetId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = CreateBackupResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateBackupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountName") {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("AccountPrivilege") {
            self.accountPrivilege = dict["AccountPrivilege"] as! String
        }
        if dict.keys.contains("Charset") {
            self.charset = dict["Charset"] as! String
        }
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("DbDescription") {
            self.dbDescription = dict["DbDescription"] as! String
        }
        if dict.keys.contains("DbName") {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("Mode") {
            self.mode = dict["Mode"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SecurityAccountName") {
            self.securityAccountName = dict["SecurityAccountName"] as! String
        }
        if dict.keys.contains("SecurityAccountPassword") {
            self.securityAccountPassword = dict["SecurityAccountPassword"] as! String
        }
        if dict.keys.contains("StoragePoolName") {
            self.storagePoolName = dict["StoragePoolName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateDBResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDBInstanceRequest : Tea.TeaModel {
    public var autoRenew: Bool?

    public var CNNodeCount: String?

    public var clientToken: String?

    public var cnClass: String?

    public var DBNodeClass: String?

    public var DBNodeCount: Int32?

    public var DNNodeCount: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoRenew") {
            self.autoRenew = dict["AutoRenew"] as! Bool
        }
        if dict.keys.contains("CNNodeCount") {
            self.CNNodeCount = dict["CNNodeCount"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("CnClass") {
            self.cnClass = dict["CnClass"] as! String
        }
        if dict.keys.contains("DBNodeClass") {
            self.DBNodeClass = dict["DBNodeClass"] as! String
        }
        if dict.keys.contains("DBNodeCount") {
            self.DBNodeCount = dict["DBNodeCount"] as! Int32
        }
        if dict.keys.contains("DNNodeCount") {
            self.DNNodeCount = dict["DNNodeCount"] as! String
        }
        if dict.keys.contains("DnClass") {
            self.dnClass = dict["DnClass"] as! String
        }
        if dict.keys.contains("DnStorageSpace") {
            self.dnStorageSpace = dict["DnStorageSpace"] as! String
        }
        if dict.keys.contains("EngineVersion") {
            self.engineVersion = dict["EngineVersion"] as! String
        }
        if dict.keys.contains("ExtraParams") {
            self.extraParams = dict["ExtraParams"] as! [String: String]
        }
        if dict.keys.contains("IsColumnarReadDBInstance") {
            self.isColumnarReadDBInstance = dict["IsColumnarReadDBInstance"] as! Bool
        }
        if dict.keys.contains("IsReadDBInstance") {
            self.isReadDBInstance = dict["IsReadDBInstance"] as! Bool
        }
        if dict.keys.contains("NetworkType") {
            self.networkType = dict["NetworkType"] as! String
        }
        if dict.keys.contains("PayType") {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! String
        }
        if dict.keys.contains("PrimaryDBInstanceName") {
            self.primaryDBInstanceName = dict["PrimaryDBInstanceName"] as! String
        }
        if dict.keys.contains("PrimaryZone") {
            self.primaryZone = dict["PrimaryZone"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SecondaryZone") {
            self.secondaryZone = dict["SecondaryZone"] as! String
        }
        if dict.keys.contains("Series") {
            self.series = dict["Series"] as! String
        }
        if dict.keys.contains("TertiaryZone") {
            self.tertiaryZone = dict["TertiaryZone"] as! String
        }
        if dict.keys.contains("TopologyType") {
            self.topologyType = dict["TopologyType"] as! String
        }
        if dict.keys.contains("UsedTime") {
            self.usedTime = dict["UsedTime"] as! Int32
        }
        if dict.keys.contains("VPCId") {
            self.VPCId = dict["VPCId"] as! String
        }
        if dict.keys.contains("VSwitchId") {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class CreateDBInstanceShrinkRequest : Tea.TeaModel {
    public var autoRenew: Bool?

    public var CNNodeCount: String?

    public var clientToken: String?

    public var cnClass: String?

    public var DBNodeClass: String?

    public var DBNodeCount: Int32?

    public var DNNodeCount: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoRenew") {
            self.autoRenew = dict["AutoRenew"] as! Bool
        }
        if dict.keys.contains("CNNodeCount") {
            self.CNNodeCount = dict["CNNodeCount"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("CnClass") {
            self.cnClass = dict["CnClass"] as! String
        }
        if dict.keys.contains("DBNodeClass") {
            self.DBNodeClass = dict["DBNodeClass"] as! String
        }
        if dict.keys.contains("DBNodeCount") {
            self.DBNodeCount = dict["DBNodeCount"] as! Int32
        }
        if dict.keys.contains("DNNodeCount") {
            self.DNNodeCount = dict["DNNodeCount"] as! String
        }
        if dict.keys.contains("DnClass") {
            self.dnClass = dict["DnClass"] as! String
        }
        if dict.keys.contains("DnStorageSpace") {
            self.dnStorageSpace = dict["DnStorageSpace"] as! String
        }
        if dict.keys.contains("EngineVersion") {
            self.engineVersion = dict["EngineVersion"] as! String
        }
        if dict.keys.contains("ExtraParams") {
            self.extraParamsShrink = dict["ExtraParams"] as! String
        }
        if dict.keys.contains("IsColumnarReadDBInstance") {
            self.isColumnarReadDBInstance = dict["IsColumnarReadDBInstance"] as! Bool
        }
        if dict.keys.contains("IsReadDBInstance") {
            self.isReadDBInstance = dict["IsReadDBInstance"] as! Bool
        }
        if dict.keys.contains("NetworkType") {
            self.networkType = dict["NetworkType"] as! String
        }
        if dict.keys.contains("PayType") {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! String
        }
        if dict.keys.contains("PrimaryDBInstanceName") {
            self.primaryDBInstanceName = dict["PrimaryDBInstanceName"] as! String
        }
        if dict.keys.contains("PrimaryZone") {
            self.primaryZone = dict["PrimaryZone"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SecondaryZone") {
            self.secondaryZone = dict["SecondaryZone"] as! String
        }
        if dict.keys.contains("Series") {
            self.series = dict["Series"] as! String
        }
        if dict.keys.contains("TertiaryZone") {
            self.tertiaryZone = dict["TertiaryZone"] as! String
        }
        if dict.keys.contains("TopologyType") {
            self.topologyType = dict["TopologyType"] as! String
        }
        if dict.keys.contains("UsedTime") {
            self.usedTime = dict["UsedTime"] as! Int32
        }
        if dict.keys.contains("VPCId") {
            self.VPCId = dict["VPCId"] as! String
        }
        if dict.keys.contains("VSwitchId") {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateDBInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountDescription") {
            self.accountDescription = dict["AccountDescription"] as! String
        }
        if dict.keys.contains("AccountName") {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("AccountPassword") {
            self.accountPassword = dict["AccountPassword"] as! String
        }
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateSuperAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountName") {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SecurityAccountName") {
            self.securityAccountName = dict["SecurityAccountName"] as! String
        }
        if dict.keys.contains("SecurityAccountPassword") {
            self.securityAccountPassword = dict["SecurityAccountPassword"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("DbName") {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteDBResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteDBInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountName") {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("AccountType") {
            self.accountType = dict["AccountType"] as! String
        }
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountDescription") {
                self.accountDescription = dict["AccountDescription"] as! String
            }
            if dict.keys.contains("AccountName") {
                self.accountName = dict["AccountName"] as! String
            }
            if dict.keys.contains("AccountPrivilege") {
                self.accountPrivilege = dict["AccountPrivilege"] as! String
            }
            if dict.keys.contains("AccountType") {
                self.accountType = dict["AccountType"] as! String
            }
            if dict.keys.contains("DBInstanceName") {
                self.DBInstanceName = dict["DBInstanceName"] as! String
            }
            if dict.keys.contains("DBName") {
                self.DBName = dict["DBName"] as! String
            }
            if dict.keys.contains("GmtCreated") {
                self.gmtCreated = dict["GmtCreated"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var tmp : [DescribeAccountListResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeAccountListResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAccountListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreatedTime") {
                self.createdTime = dict["CreatedTime"] as! String
            }
            if dict.keys.contains("CycleTime") {
                self.cycleTime = dict["CycleTime"] as! String
            }
            if dict.keys.contains("CycleType") {
                self.cycleType = dict["CycleType"] as! String
            }
            if dict.keys.contains("MaintainEndTime") {
                self.maintainEndTime = dict["MaintainEndTime"] as! String
            }
            if dict.keys.contains("MaintainStartTime") {
                self.maintainStartTime = dict["MaintainStartTime"] as! String
            }
            if dict.keys.contains("ModifiedTime") {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Config") {
            var model = DescribeActiveOperationMaintainConfResponseBody.Config()
            model.fromMap(dict["Config"] as! [String: Any])
            self.config = model
        }
        if dict.keys.contains("HasConfig") {
            self.hasConfig = dict["HasConfig"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeActiveOperationMaintainConfResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Category") {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("Product") {
            self.product = dict["Product"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NeedPop") {
            self.needPop = dict["NeedPop"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskCount") {
            self.taskCount = dict["TaskCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeActiveOperationTaskCountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AllowCancel") {
            self.allowCancel = dict["AllowCancel"] as! Int64
        }
        if dict.keys.contains("AllowChange") {
            self.allowChange = dict["AllowChange"] as! Int64
        }
        if dict.keys.contains("ChangeLevel") {
            self.changeLevel = dict["ChangeLevel"] as! String
        }
        if dict.keys.contains("DbType") {
            self.dbType = dict["DbType"] as! String
        }
        if dict.keys.contains("InsName") {
            self.insName = dict["InsName"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("ProductId") {
            self.productId = dict["ProductId"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int64
        }
        if dict.keys.contains("TaskType") {
            self.taskType = dict["TaskType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AllowCancel") {
                self.allowCancel = dict["AllowCancel"] as! String
            }
            if dict.keys.contains("AllowChange") {
                self.allowChange = dict["AllowChange"] as! String
            }
            if dict.keys.contains("ChangeLevel") {
                self.changeLevel = dict["ChangeLevel"] as! String
            }
            if dict.keys.contains("ChangeLevelEn") {
                self.changeLevelEn = dict["ChangeLevelEn"] as! String
            }
            if dict.keys.contains("ChangeLevelZh") {
                self.changeLevelZh = dict["ChangeLevelZh"] as! String
            }
            if dict.keys.contains("CreatedTime") {
                self.createdTime = dict["CreatedTime"] as! String
            }
            if dict.keys.contains("CurrentAVZ") {
                self.currentAVZ = dict["CurrentAVZ"] as! String
            }
            if dict.keys.contains("DbType") {
                self.dbType = dict["DbType"] as! String
            }
            if dict.keys.contains("DbVersion") {
                self.dbVersion = dict["DbVersion"] as! String
            }
            if dict.keys.contains("Deadline") {
                self.deadline = dict["Deadline"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("Impact") {
                self.impact = dict["Impact"] as! String
            }
            if dict.keys.contains("ImpactEn") {
                self.impactEn = dict["ImpactEn"] as! String
            }
            if dict.keys.contains("ImpactZh") {
                self.impactZh = dict["ImpactZh"] as! String
            }
            if dict.keys.contains("InsComment") {
                self.insComment = dict["InsComment"] as! String
            }
            if dict.keys.contains("InsName") {
                self.insName = dict["InsName"] as! String
            }
            if dict.keys.contains("ModifiedTime") {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("PrepareInterval") {
                self.prepareInterval = dict["PrepareInterval"] as! String
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("ResultInfo") {
                self.resultInfo = dict["ResultInfo"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int64
            }
            if dict.keys.contains("SubInsNames") {
                self.subInsNames = dict["SubInsNames"] as! [String]
            }
            if dict.keys.contains("SwitchTime") {
                self.switchTime = dict["SwitchTime"] as! String
            }
            if dict.keys.contains("TaskType") {
                self.taskType = dict["TaskType"] as! String
            }
            if dict.keys.contains("TaskTypeEn") {
                self.taskTypeEn = dict["TaskTypeEn"] as! String
            }
            if dict.keys.contains("TaskTypeZh") {
                self.taskTypeZh = dict["TaskTypeZh"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Items") {
            var tmp : [DescribeActiveOperationTasksResponseBody.Items] = []
            for v in dict["Items"] as! [Any] {
                var model = DescribeActiveOperationTasksResponseBody.Items()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.items = tmp
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalRecordCount") {
            self.totalRecordCount = dict["TotalRecordCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeActiveOperationTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SchemaName") {
            self.schemaName = dict["SchemaName"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TableName") {
            self.tableName = dict["TableName"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ArchiveStatus") {
                    self.archiveStatus = dict["ArchiveStatus"] as! String
                }
                if dict.keys.contains("CreatedDate") {
                    self.createdDate = dict["CreatedDate"] as! Int64
                }
                if dict.keys.contains("FileCount") {
                    self.fileCount = dict["FileCount"] as! Int32
                }
                if dict.keys.contains("LastSuccessArchiveTime") {
                    self.lastSuccessArchiveTime = dict["LastSuccessArchiveTime"] as! Int64
                }
                if dict.keys.contains("SchemaName") {
                    self.schemaName = dict["SchemaName"] as! String
                }
                if dict.keys.contains("SpaceSize") {
                    self.spaceSize = dict["SpaceSize"] as! Double
                }
                if dict.keys.contains("TableName") {
                    self.tableName = dict["TableName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PageIndex") {
                self.pageIndex = dict["PageIndex"] as! Int64
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int64
            }
            if dict.keys.contains("PausedCount") {
                self.pausedCount = dict["PausedCount"] as! Int32
            }
            if dict.keys.contains("RunningCount") {
                self.runningCount = dict["RunningCount"] as! Int32
            }
            if dict.keys.contains("SuccessCount") {
                self.successCount = dict["SuccessCount"] as! Int32
            }
            if dict.keys.contains("Tables") {
                var tmp : [DescribeArchiveTableListResponseBody.Data.Tables] = []
                for v in dict["Tables"] as! [Any] {
                    var model = DescribeArchiveTableListResponseBody.Data.Tables()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tables = tmp
            }
            if dict.keys.contains("TobeArchivedConut") {
                self.tobeArchivedConut = dict["TobeArchivedConut"] as! Int32
            }
            if dict.keys.contains("Total") {
                self.total = dict["Total"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = DescribeArchiveTableListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeArchiveTableListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BackupPeriod") {
                self.backupPeriod = dict["BackupPeriod"] as! String
            }
            if dict.keys.contains("BackupPlanBegin") {
                self.backupPlanBegin = dict["BackupPlanBegin"] as! String
            }
            if dict.keys.contains("BackupSetRetention") {
                self.backupSetRetention = dict["BackupSetRetention"] as! Int32
            }
            if dict.keys.contains("BackupType") {
                self.backupType = dict["BackupType"] as! String
            }
            if dict.keys.contains("BackupWay") {
                self.backupWay = dict["BackupWay"] as! String
            }
            if dict.keys.contains("ColdDataBackupInterval") {
                self.coldDataBackupInterval = dict["ColdDataBackupInterval"] as! Int32
            }
            if dict.keys.contains("ColdDataBackupRetention") {
                self.coldDataBackupRetention = dict["ColdDataBackupRetention"] as! Int32
            }
            if dict.keys.contains("CrossRegionDataBackupRetention") {
                self.crossRegionDataBackupRetention = dict["CrossRegionDataBackupRetention"] as! Int32
            }
            if dict.keys.contains("CrossRegionLogBackupRetention") {
                self.crossRegionLogBackupRetention = dict["CrossRegionLogBackupRetention"] as! Int32
            }
            if dict.keys.contains("DBInstanceName") {
                self.DBInstanceName = dict["DBInstanceName"] as! String
            }
            if dict.keys.contains("DestCrossRegion") {
                self.destCrossRegion = dict["DestCrossRegion"] as! String
            }
            if dict.keys.contains("ForceCleanOnHighSpaceUsage") {
                self.forceCleanOnHighSpaceUsage = dict["ForceCleanOnHighSpaceUsage"] as! Int32
            }
            if dict.keys.contains("IsCrossRegionDataBackupEnabled") {
                self.isCrossRegionDataBackupEnabled = dict["IsCrossRegionDataBackupEnabled"] as! Bool
            }
            if dict.keys.contains("IsCrossRegionLogBackupEnabled") {
                self.isCrossRegionLogBackupEnabled = dict["IsCrossRegionLogBackupEnabled"] as! Bool
            }
            if dict.keys.contains("IsEnabled") {
                self.isEnabled = dict["IsEnabled"] as! Int32
            }
            if dict.keys.contains("LocalLogRetention") {
                self.localLogRetention = dict["LocalLogRetention"] as! Int32
            }
            if dict.keys.contains("LocalLogRetentionNumber") {
                self.localLogRetentionNumber = dict["LocalLogRetentionNumber"] as! Int32
            }
            if dict.keys.contains("LogLocalRetentionSpace") {
                self.logLocalRetentionSpace = dict["LogLocalRetentionSpace"] as! Int32
            }
            if dict.keys.contains("RemoveLogRetention") {
                self.removeLogRetention = dict["RemoveLogRetention"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = DescribeBackupPolicyResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeBackupPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupSetId") {
            self.backupSetId = dict["BackupSetId"] as! String
        }
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("DestCrossRegion") {
            self.destCrossRegion = dict["DestCrossRegion"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BackupSetFile") {
                    self.backupSetFile = dict["BackupSetFile"] as! String
                }
                if dict.keys.contains("DownloadLink") {
                    self.downloadLink = dict["DownloadLink"] as! String
                }
                if dict.keys.contains("IntranetDownloadLink") {
                    self.intranetDownloadLink = dict["IntranetDownloadLink"] as! String
                }
                if dict.keys.contains("LinkExpiredTime") {
                    self.linkExpiredTime = dict["LinkExpiredTime"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BackupModel") {
                self.backupModel = dict["BackupModel"] as! Int32
            }
            if dict.keys.contains("BackupSetId") {
                self.backupSetId = dict["BackupSetId"] as! Int64
            }
            if dict.keys.contains("BackupSetSize") {
                self.backupSetSize = dict["BackupSetSize"] as! Int64
            }
            if dict.keys.contains("BackupType") {
                self.backupType = dict["BackupType"] as! Int32
            }
            if dict.keys.contains("BeginTime") {
                self.beginTime = dict["BeginTime"] as! Int64
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! Int64
            }
            if dict.keys.contains("OSSList") {
                var tmp : [DescribeBackupSetResponseBody.Data.OSSList] = []
                for v in dict["OSSList"] as! [Any] {
                    var model = DescribeBackupSetResponseBody.Data.OSSList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.OSSList = tmp
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var tmp : [DescribeBackupSetResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeBackupSetResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeBackupSetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("DestCrossRegion") {
            self.destCrossRegion = dict["DestCrossRegion"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BackupModel") {
                self.backupModel = dict["BackupModel"] as! Int32
            }
            if dict.keys.contains("BackupSetId") {
                self.backupSetId = dict["BackupSetId"] as! String
            }
            if dict.keys.contains("BackupSetSize") {
                self.backupSetSize = dict["BackupSetSize"] as! Int64
            }
            if dict.keys.contains("BackupType") {
                self.backupType = dict["BackupType"] as! Int32
            }
            if dict.keys.contains("BeginTime") {
                self.beginTime = dict["BeginTime"] as! Int64
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! Int64
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var tmp : [DescribeBackupSetListResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeBackupSetListResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeBackupSetListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("InstanceName") {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BeginTime") {
                self.beginTime = dict["BeginTime"] as! String
            }
            if dict.keys.contains("CreatedTime") {
                self.createdTime = dict["CreatedTime"] as! String
            }
            if dict.keys.contains("DownloadLink") {
                self.downloadLink = dict["DownloadLink"] as! String
            }
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("FileName") {
                self.fileName = dict["FileName"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! Int64
            }
            if dict.keys.contains("LogSize") {
                self.logSize = dict["LogSize"] as! Int64
            }
            if dict.keys.contains("ModifiedTime") {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("PurgeStatus") {
                self.purgeStatus = dict["PurgeStatus"] as! Int32
            }
            if dict.keys.contains("UploadHost") {
                self.uploadHost = dict["UploadHost"] as! String
            }
            if dict.keys.contains("UploadStatus") {
                self.uploadStatus = dict["UploadStatus"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LogList") {
            var tmp : [DescribeBinaryLogListResponseBody.LogList] = []
            for v in dict["LogList"] as! [Any] {
                var model = DescribeBinaryLogListResponseBody.LogList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.logList = tmp
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalNumber") {
            self.totalNumber = dict["TotalNumber"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeBinaryLogListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CharacterSet") {
                self.characterSet = dict["CharacterSet"] as! [String]
            }
            if dict.keys.contains("Engine") {
                self.engine = dict["Engine"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = DescribeCharacterSetResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeCharacterSetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BackupSetCount") {
                self.backupSetCount = dict["BackupSetCount"] as! Int32
            }
            if dict.keys.contains("BackupSetSpaceSize") {
                self.backupSetSpaceSize = dict["BackupSetSpaceSize"] as! Double
            }
            if dict.keys.contains("CloudProduct") {
                self.cloudProduct = dict["CloudProduct"] as! String
            }
            if dict.keys.contains("CurrentSpaceSize") {
                self.currentSpaceSize = dict["CurrentSpaceSize"] as! Double
            }
            if dict.keys.contains("DataRedundancyType") {
                self.dataRedundancyType = dict["DataRedundancyType"] as! String
            }
            if dict.keys.contains("EnableStatus") {
                self.enableStatus = dict["EnableStatus"] as! Bool
            }
            if dict.keys.contains("ReadAccessNum") {
                self.readAccessNum = dict["ReadAccessNum"] as! Int64
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("VolumeName") {
                self.volumeName = dict["VolumeName"] as! String
            }
            if dict.keys.contains("WriteAccessNum") {
                self.writeAccessNum = dict["WriteAccessNum"] as! Double
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = DescribeColdDataBasicInfoResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeColdDataBasicInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConnectionString") {
                    self.connectionString = dict["ConnectionString"] as! String
                }
                if dict.keys.contains("Port") {
                    self.port = dict["Port"] as! Int64
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("VPCId") {
                    self.VPCId = dict["VPCId"] as! String
                }
                if dict.keys.contains("VSwitchId") {
                    self.vSwitchId = dict["VSwitchId"] as! String
                }
                if dict.keys.contains("VpcInstanceId") {
                    self.vpcInstanceId = dict["VpcInstanceId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ComputeNodeId") {
                    self.computeNodeId = dict["ComputeNodeId"] as! String
                }
                if dict.keys.contains("DataNodeId") {
                    self.dataNodeId = dict["DataNodeId"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("NodeClass") {
                    self.nodeClass = dict["NodeClass"] as! String
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("ZoneId") {
                    self.zoneId = dict["ZoneId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("MemberName") {
                    self.memberName = dict["MemberName"] as! String
                }
                if dict.keys.contains("Role") {
                    self.role = dict["Role"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CanNotCreateColumnar") {
                self.canNotCreateColumnar = dict["CanNotCreateColumnar"] as! Bool
            }
            if dict.keys.contains("CnNodeClassCode") {
                self.cnNodeClassCode = dict["CnNodeClassCode"] as! String
            }
            if dict.keys.contains("CnNodeCount") {
                self.cnNodeCount = dict["CnNodeCount"] as! Int32
            }
            if dict.keys.contains("ColumnarInstanceName") {
                self.columnarInstanceName = dict["ColumnarInstanceName"] as! String
            }
            if dict.keys.contains("ColumnarReadDBInstances") {
                self.columnarReadDBInstances = dict["ColumnarReadDBInstances"] as! [String]
            }
            if dict.keys.contains("CommodityCode") {
                self.commodityCode = dict["CommodityCode"] as! String
            }
            if dict.keys.contains("ConnAddrs") {
                var tmp : [DescribeDBInstanceAttributeResponseBody.DBInstance.ConnAddrs] = []
                for v in dict["ConnAddrs"] as! [Any] {
                    var model = DescribeDBInstanceAttributeResponseBody.DBInstance.ConnAddrs()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.connAddrs = tmp
            }
            if dict.keys.contains("ConnectionString") {
                self.connectionString = dict["ConnectionString"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DBInstanceType") {
                self.DBInstanceType = dict["DBInstanceType"] as! String
            }
            if dict.keys.contains("DBNodeClass") {
                self.DBNodeClass = dict["DBNodeClass"] as! String
            }
            if dict.keys.contains("DBNodeCount") {
                self.DBNodeCount = dict["DBNodeCount"] as! Int32
            }
            if dict.keys.contains("DBNodes") {
                var tmp : [DescribeDBInstanceAttributeResponseBody.DBInstance.DBNodes] = []
                for v in dict["DBNodes"] as! [Any] {
                    var model = DescribeDBInstanceAttributeResponseBody.DBInstance.DBNodes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.DBNodes = tmp
            }
            if dict.keys.contains("DBType") {
                self.DBType = dict["DBType"] as! String
            }
            if dict.keys.contains("DBVersion") {
                self.DBVersion = dict["DBVersion"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DifferentDNSpec") {
                self.differentDNSpec = dict["DifferentDNSpec"] as! Bool
            }
            if dict.keys.contains("DnNodeClassCode") {
                self.dnNodeClassCode = dict["DnNodeClassCode"] as! String
            }
            if dict.keys.contains("DnNodeCount") {
                self.dnNodeCount = dict["DnNodeCount"] as! Int32
            }
            if dict.keys.contains("Engine") {
                self.engine = dict["Engine"] as! String
            }
            if dict.keys.contains("ExpireDate") {
                self.expireDate = dict["ExpireDate"] as! String
            }
            if dict.keys.contains("Expired") {
                self.expired = dict["Expired"] as! String
            }
            if dict.keys.contains("GdnInstanceName") {
                self.gdnInstanceName = dict["GdnInstanceName"] as! String
            }
            if dict.keys.contains("GdnMemberList") {
                var tmp : [DescribeDBInstanceAttributeResponseBody.DBInstance.GdnMemberList] = []
                for v in dict["GdnMemberList"] as! [Any] {
                    var model = DescribeDBInstanceAttributeResponseBody.DBInstance.GdnMemberList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.gdnMemberList = tmp
            }
            if dict.keys.contains("GdnRole") {
                self.gdnRole = dict["GdnRole"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("KindCode") {
                self.kindCode = dict["KindCode"] as! Int32
            }
            if dict.keys.contains("LTSVersions") {
                self.LTSVersions = dict["LTSVersions"] as! [String]
            }
            if dict.keys.contains("LatestMinorVersion") {
                self.latestMinorVersion = dict["LatestMinorVersion"] as! String
            }
            if dict.keys.contains("LockMode") {
                self.lockMode = dict["LockMode"] as! String
            }
            if dict.keys.contains("MaintainEndTime") {
                self.maintainEndTime = dict["MaintainEndTime"] as! String
            }
            if dict.keys.contains("MaintainStartTime") {
                self.maintainStartTime = dict["MaintainStartTime"] as! String
            }
            if dict.keys.contains("MinorVersion") {
                self.minorVersion = dict["MinorVersion"] as! String
            }
            if dict.keys.contains("Network") {
                self.network = dict["Network"] as! String
            }
            if dict.keys.contains("PayType") {
                self.payType = dict["PayType"] as! String
            }
            if dict.keys.contains("Port") {
                self.port = dict["Port"] as! String
            }
            if dict.keys.contains("PrimaryInstanceId") {
                self.primaryInstanceId = dict["PrimaryInstanceId"] as! String
            }
            if dict.keys.contains("PrimaryZone") {
                self.primaryZone = dict["PrimaryZone"] as! String
            }
            if dict.keys.contains("ReadDBInstances") {
                self.readDBInstances = dict["ReadDBInstances"] as! [String]
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("RightsSeparationEnabled") {
                self.rightsSeparationEnabled = dict["RightsSeparationEnabled"] as! Bool
            }
            if dict.keys.contains("RightsSeparationStatus") {
                self.rightsSeparationStatus = dict["RightsSeparationStatus"] as! String
            }
            if dict.keys.contains("SecondaryZone") {
                self.secondaryZone = dict["SecondaryZone"] as! String
            }
            if dict.keys.contains("Series") {
                self.series = dict["Series"] as! String
            }
            if dict.keys.contains("SpecCategory") {
                self.specCategory = dict["SpecCategory"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StorageUsed") {
                self.storageUsed = dict["StorageUsed"] as! Int64
            }
            if dict.keys.contains("TagSet") {
                var tmp : [DescribeDBInstanceAttributeResponseBody.DBInstance.TagSet] = []
                for v in dict["TagSet"] as! [Any] {
                    var model = DescribeDBInstanceAttributeResponseBody.DBInstance.TagSet()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tagSet = tmp
            }
            if dict.keys.contains("TertiaryZone") {
                self.tertiaryZone = dict["TertiaryZone"] as! String
            }
            if dict.keys.contains("TopologyType") {
                self.topologyType = dict["TopologyType"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("VPCId") {
                self.VPCId = dict["VPCId"] as! String
            }
            if dict.keys.contains("VSwitchId") {
                self.vSwitchId = dict["VSwitchId"] as! String
            }
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstance") {
            var model = DescribeDBInstanceAttributeResponseBody.DBInstance()
            model.fromMap(dict["DBInstance"] as! [String: Any])
            self.DBInstance = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDBInstanceAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigName") {
            self.configName = dict["ConfigName"] as! String
        }
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConfigName") {
                self.configName = dict["ConfigName"] as! String
            }
            if dict.keys.contains("ConfigValue") {
                self.configValue = dict["ConfigValue"] as! String
            }
            if dict.keys.contains("DbInstanceName") {
                self.dbInstanceName = dict["DbInstanceName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = DescribeDBInstanceConfigResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDBInstanceConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PrimaryAzoneId") {
                self.primaryAzoneId = dict["PrimaryAzoneId"] as! String
            }
            if dict.keys.contains("PrimaryRegionId") {
                self.primaryRegionId = dict["PrimaryRegionId"] as! String
            }
            if dict.keys.contains("SecondaryAzoneId") {
                self.secondaryAzoneId = dict["SecondaryAzoneId"] as! String
            }
            if dict.keys.contains("SecondaryRegionId") {
                self.secondaryRegionId = dict["SecondaryRegionId"] as! String
            }
            if dict.keys.contains("TopologyType") {
                self.topologyType = dict["TopologyType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = DescribeDBInstanceHAResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDBInstanceHAResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CertCommonName") {
                self.certCommonName = dict["CertCommonName"] as! String
            }
            if dict.keys.contains("SSLEnabled") {
                self.SSLEnabled = dict["SSLEnabled"] as! Bool
            }
            if dict.keys.contains("SSLExpiredTime") {
                self.SSLExpiredTime = dict["SSLExpiredTime"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = DescribeDBInstanceSSLResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDBInstanceSSLResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TDEStatus") {
                self.TDEStatus = dict["TDEStatus"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = DescribeDBInstanceTDEResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDBInstanceTDEResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("MinuteSimple") {
            self.minuteSimple = dict["MinuteSimple"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Activated") {
                        self.activated = dict["Activated"] as! Bool
                    }
                    if dict.keys.contains("Azone") {
                        self.azone = dict["Azone"] as! String
                    }
                    if dict.keys.contains("CharacterType") {
                        self.characterType = dict["CharacterType"] as! String
                    }
                    if dict.keys.contains("DBInstanceId") {
                        self.DBInstanceId = dict["DBInstanceId"] as! String
                    }
                    if dict.keys.contains("DBInstanceName") {
                        self.DBInstanceName = dict["DBInstanceName"] as! String
                    }
                    if dict.keys.contains("PhyInstanceName") {
                        self.phyInstanceName = dict["PhyInstanceName"] as! String
                    }
                    if dict.keys.contains("Region") {
                        self.region = dict["Region"] as! String
                    }
                    if dict.keys.contains("Role") {
                        self.role = dict["Role"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Azone") {
                            self.azone = dict["Azone"] as! String
                        }
                        if dict.keys.contains("Role") {
                            self.role = dict["Role"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ConnectionString") {
                            self.connectionString = dict["ConnectionString"] as! String
                        }
                        if dict.keys.contains("DBInstanceNetType") {
                            self.DBInstanceNetType = dict["DBInstanceNetType"] as! Int32
                        }
                        if dict.keys.contains("Port") {
                            self.port = dict["Port"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Activated") {
                        self.activated = dict["Activated"] as! Bool
                    }
                    if dict.keys.contains("Azone") {
                        self.azone = dict["Azone"] as! String
                    }
                    if dict.keys.contains("AzoneRoleList") {
                        var tmp : [DescribeDBInstanceTopologyResponseBody.Data.LogicInstanceTopology.Items.AzoneRoleList] = []
                        for v in dict["AzoneRoleList"] as! [Any] {
                            var model = DescribeDBInstanceTopologyResponseBody.Data.LogicInstanceTopology.Items.AzoneRoleList()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.azoneRoleList = tmp
                    }
                    if dict.keys.contains("CharacterType") {
                        self.characterType = dict["CharacterType"] as! String
                    }
                    if dict.keys.contains("ConnectionIp") {
                        var tmp : [DescribeDBInstanceTopologyResponseBody.Data.LogicInstanceTopology.Items.ConnectionIp] = []
                        for v in dict["ConnectionIp"] as! [Any] {
                            var model = DescribeDBInstanceTopologyResponseBody.Data.LogicInstanceTopology.Items.ConnectionIp()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.connectionIp = tmp
                    }
                    if dict.keys.contains("DBInstanceConnType") {
                        self.DBInstanceConnType = dict["DBInstanceConnType"] as! Int32
                    }
                    if dict.keys.contains("DBInstanceCreateTime") {
                        self.DBInstanceCreateTime = dict["DBInstanceCreateTime"] as! String
                    }
                    if dict.keys.contains("DBInstanceDescription") {
                        self.DBInstanceDescription = dict["DBInstanceDescription"] as! String
                    }
                    if dict.keys.contains("DBInstanceId") {
                        self.DBInstanceId = dict["DBInstanceId"] as! String
                    }
                    if dict.keys.contains("DBInstanceName") {
                        self.DBInstanceName = dict["DBInstanceName"] as! String
                    }
                    if dict.keys.contains("DBInstanceStatus") {
                        self.DBInstanceStatus = dict["DBInstanceStatus"] as! Int32
                    }
                    if dict.keys.contains("DBInstanceStatusDescription") {
                        self.DBInstanceStatusDescription = dict["DBInstanceStatusDescription"] as! String
                    }
                    if dict.keys.contains("DiskSize") {
                        self.diskSize = dict["DiskSize"] as! Int64
                    }
                    if dict.keys.contains("Engine") {
                        self.engine = dict["Engine"] as! String
                    }
                    if dict.keys.contains("EngineVersion") {
                        self.engineVersion = dict["EngineVersion"] as! String
                    }
                    if dict.keys.contains("LockMode") {
                        self.lockMode = dict["LockMode"] as! Int32
                    }
                    if dict.keys.contains("LockReason") {
                        self.lockReason = dict["LockReason"] as! String
                    }
                    if dict.keys.contains("MaintainEndTime") {
                        self.maintainEndTime = dict["MaintainEndTime"] as! String
                    }
                    if dict.keys.contains("MaintainStartTime") {
                        self.maintainStartTime = dict["MaintainStartTime"] as! String
                    }
                    if dict.keys.contains("MaxConnections") {
                        self.maxConnections = dict["MaxConnections"] as! Int32
                    }
                    if dict.keys.contains("MaxIops") {
                        self.maxIops = dict["MaxIops"] as! Int32
                    }
                    if dict.keys.contains("NodeClass") {
                        self.nodeClass = dict["NodeClass"] as! String
                    }
                    if dict.keys.contains("PhyInstanceName") {
                        self.phyInstanceName = dict["PhyInstanceName"] as! String
                    }
                    if dict.keys.contains("Region") {
                        self.region = dict["Region"] as! String
                    }
                    if dict.keys.contains("Role") {
                        self.role = dict["Role"] as! String
                    }
                    if dict.keys.contains("Status") {
                        self.status = dict["Status"] as! String
                    }
                    if dict.keys.contains("StorageUsed") {
                        self.storageUsed = dict["StorageUsed"] as! String
                    }
                    if dict.keys.contains("Version") {
                        self.version = dict["Version"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DBInstanceConnType") {
                    self.DBInstanceConnType = dict["DBInstanceConnType"] as! String
                }
                if dict.keys.contains("DBInstanceCreateTime") {
                    self.DBInstanceCreateTime = dict["DBInstanceCreateTime"] as! String
                }
                if dict.keys.contains("DBInstanceDescription") {
                    self.DBInstanceDescription = dict["DBInstanceDescription"] as! String
                }
                if dict.keys.contains("DBInstanceId") {
                    self.DBInstanceId = dict["DBInstanceId"] as! String
                }
                if dict.keys.contains("DBInstanceName") {
                    self.DBInstanceName = dict["DBInstanceName"] as! String
                }
                if dict.keys.contains("DBInstanceStatus") {
                    self.DBInstanceStatus = dict["DBInstanceStatus"] as! Int32
                }
                if dict.keys.contains("DBInstanceStatusDescription") {
                    self.DBInstanceStatusDescription = dict["DBInstanceStatusDescription"] as! String
                }
                if dict.keys.contains("DBInstanceStorage") {
                    self.DBInstanceStorage = dict["DBInstanceStorage"] as! Int32
                }
                if dict.keys.contains("Engine") {
                    self.engine = dict["Engine"] as! String
                }
                if dict.keys.contains("EngineVersion") {
                    self.engineVersion = dict["EngineVersion"] as! String
                }
                if dict.keys.contains("HistoryItems") {
                    var tmp : [DescribeDBInstanceTopologyResponseBody.Data.LogicInstanceTopology.HistoryItems] = []
                    for v in dict["HistoryItems"] as! [Any] {
                        var model = DescribeDBInstanceTopologyResponseBody.Data.LogicInstanceTopology.HistoryItems()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.historyItems = tmp
                }
                if dict.keys.contains("Items") {
                    var tmp : [DescribeDBInstanceTopologyResponseBody.Data.LogicInstanceTopology.Items] = []
                    for v in dict["Items"] as! [Any] {
                        var model = DescribeDBInstanceTopologyResponseBody.Data.LogicInstanceTopology.Items()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.items = tmp
                }
                if dict.keys.contains("LockMode") {
                    self.lockMode = dict["LockMode"] as! Int32
                }
                if dict.keys.contains("LockReason") {
                    self.lockReason = dict["LockReason"] as! String
                }
                if dict.keys.contains("MaintainEndTime") {
                    self.maintainEndTime = dict["MaintainEndTime"] as! String
                }
                if dict.keys.contains("MaintainStartTime") {
                    self.maintainStartTime = dict["MaintainStartTime"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LogicInstanceTopology") {
                var model = DescribeDBInstanceTopologyResponseBody.Data.LogicInstanceTopology()
                model.fromMap(dict["LogicInstanceTopology"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = DescribeDBInstanceTopologyResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDBInstanceTopologyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Endpoint") {
            self.endpoint = dict["Endpoint"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConnectionString") {
                    self.connectionString = dict["ConnectionString"] as! String
                }
                if dict.keys.contains("Port") {
                    self.port = dict["Port"] as! Int64
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("VPCId") {
                    self.VPCId = dict["VPCId"] as! String
                }
                if dict.keys.contains("VSwitchId") {
                    self.vSwitchId = dict["VSwitchId"] as! String
                }
                if dict.keys.contains("VpcInstanceId") {
                    self.vpcInstanceId = dict["VpcInstanceId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ComputeNodeId") {
                    self.computeNodeId = dict["ComputeNodeId"] as! String
                }
                if dict.keys.contains("DataNodeId") {
                    self.dataNodeId = dict["DataNodeId"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("NodeClass") {
                    self.nodeClass = dict["NodeClass"] as! String
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("ZoneId") {
                    self.zoneId = dict["ZoneId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CnNodeClassCode") {
                self.cnNodeClassCode = dict["CnNodeClassCode"] as! String
            }
            if dict.keys.contains("CnNodeCount") {
                self.cnNodeCount = dict["CnNodeCount"] as! Int32
            }
            if dict.keys.contains("CommodityCode") {
                self.commodityCode = dict["CommodityCode"] as! String
            }
            if dict.keys.contains("ConnAddrs") {
                var tmp : [DescribeDBInstanceViaEndpointResponseBody.DBInstance.ConnAddrs] = []
                for v in dict["ConnAddrs"] as! [Any] {
                    var model = DescribeDBInstanceViaEndpointResponseBody.DBInstance.ConnAddrs()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.connAddrs = tmp
            }
            if dict.keys.contains("ConnectionString") {
                self.connectionString = dict["ConnectionString"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DBInstanceType") {
                self.DBInstanceType = dict["DBInstanceType"] as! String
            }
            if dict.keys.contains("DBNodeClass") {
                self.DBNodeClass = dict["DBNodeClass"] as! String
            }
            if dict.keys.contains("DBNodeCount") {
                self.DBNodeCount = dict["DBNodeCount"] as! Int32
            }
            if dict.keys.contains("DBNodes") {
                var tmp : [DescribeDBInstanceViaEndpointResponseBody.DBInstance.DBNodes] = []
                for v in dict["DBNodes"] as! [Any] {
                    var model = DescribeDBInstanceViaEndpointResponseBody.DBInstance.DBNodes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.DBNodes = tmp
            }
            if dict.keys.contains("DBType") {
                self.DBType = dict["DBType"] as! String
            }
            if dict.keys.contains("DBVersion") {
                self.DBVersion = dict["DBVersion"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DnNodeClassCode") {
                self.dnNodeClassCode = dict["DnNodeClassCode"] as! String
            }
            if dict.keys.contains("DnNodeCount") {
                self.dnNodeCount = dict["DnNodeCount"] as! Int32
            }
            if dict.keys.contains("Engine") {
                self.engine = dict["Engine"] as! String
            }
            if dict.keys.contains("ExpireDate") {
                self.expireDate = dict["ExpireDate"] as! String
            }
            if dict.keys.contains("Expired") {
                self.expired = dict["Expired"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("KindCode") {
                self.kindCode = dict["KindCode"] as! Int32
            }
            if dict.keys.contains("LTSVersions") {
                self.LTSVersions = dict["LTSVersions"] as! [String]
            }
            if dict.keys.contains("LatestMinorVersion") {
                self.latestMinorVersion = dict["LatestMinorVersion"] as! String
            }
            if dict.keys.contains("LockMode") {
                self.lockMode = dict["LockMode"] as! String
            }
            if dict.keys.contains("MaintainEndTime") {
                self.maintainEndTime = dict["MaintainEndTime"] as! String
            }
            if dict.keys.contains("MaintainStartTime") {
                self.maintainStartTime = dict["MaintainStartTime"] as! String
            }
            if dict.keys.contains("MinorVersion") {
                self.minorVersion = dict["MinorVersion"] as! String
            }
            if dict.keys.contains("Network") {
                self.network = dict["Network"] as! String
            }
            if dict.keys.contains("PayType") {
                self.payType = dict["PayType"] as! String
            }
            if dict.keys.contains("Port") {
                self.port = dict["Port"] as! String
            }
            if dict.keys.contains("ReadDBInstances") {
                self.readDBInstances = dict["ReadDBInstances"] as! [String]
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("RightsSeparationEnabled") {
                self.rightsSeparationEnabled = dict["RightsSeparationEnabled"] as! Bool
            }
            if dict.keys.contains("RightsSeparationStatus") {
                self.rightsSeparationStatus = dict["RightsSeparationStatus"] as! String
            }
            if dict.keys.contains("Series") {
                self.series = dict["Series"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StorageUsed") {
                self.storageUsed = dict["StorageUsed"] as! Int64
            }
            if dict.keys.contains("TagSet") {
                var tmp : [DescribeDBInstanceViaEndpointResponseBody.DBInstance.TagSet] = []
                for v in dict["TagSet"] as! [Any] {
                    var model = DescribeDBInstanceViaEndpointResponseBody.DBInstance.TagSet()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tagSet = tmp
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("VPCId") {
                self.VPCId = dict["VPCId"] as! String
            }
            if dict.keys.contains("VSwitchId") {
                self.vSwitchId = dict["VSwitchId"] as! String
            }
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstance") {
            var model = DescribeDBInstanceViaEndpointResponseBody.DBInstance()
            model.fromMap(dict["DBInstance"] as! [String: Any])
            self.DBInstance = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDBInstanceViaEndpointResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbVersion") {
            self.dbVersion = dict["DbVersion"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MustHasCdc") {
            self.mustHasCdc = dict["MustHasCdc"] as! Bool
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Series") {
            self.series = dict["Series"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ClassCode") {
                    self.classCode = dict["ClassCode"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("ZoneId") {
                    self.zoneId = dict["ZoneId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CdcInstanceName") {
                self.cdcInstanceName = dict["CdcInstanceName"] as! String
            }
            if dict.keys.contains("CnNodeClassCode") {
                self.cnNodeClassCode = dict["CnNodeClassCode"] as! String
            }
            if dict.keys.contains("CnNodeCount") {
                self.cnNodeCount = dict["CnNodeCount"] as! Int32
            }
            if dict.keys.contains("ColumnarInstanceName") {
                self.columnarInstanceName = dict["ColumnarInstanceName"] as! String
            }
            if dict.keys.contains("ColumnarReadDBInstances") {
                self.columnarReadDBInstances = dict["ColumnarReadDBInstances"] as! [String]
            }
            if dict.keys.contains("CommodityCode") {
                self.commodityCode = dict["CommodityCode"] as! String
            }
            if dict.keys.contains("ContainBinlogX") {
                self.containBinlogX = dict["ContainBinlogX"] as! Bool
            }
            if dict.keys.contains("CpuType") {
                self.cpuType = dict["CpuType"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DBInstanceName") {
                self.DBInstanceName = dict["DBInstanceName"] as! String
            }
            if dict.keys.contains("DBType") {
                self.DBType = dict["DBType"] as! String
            }
            if dict.keys.contains("DBVersion") {
                self.DBVersion = dict["DBVersion"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DnNodeClassCode") {
                self.dnNodeClassCode = dict["DnNodeClassCode"] as! String
            }
            if dict.keys.contains("DnNodeCount") {
                self.dnNodeCount = dict["DnNodeCount"] as! Int32
            }
            if dict.keys.contains("Engine") {
                self.engine = dict["Engine"] as! String
            }
            if dict.keys.contains("ExpireTime") {
                self.expireTime = dict["ExpireTime"] as! String
            }
            if dict.keys.contains("Expired") {
                self.expired = dict["Expired"] as! Bool
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("LockMode") {
                self.lockMode = dict["LockMode"] as! String
            }
            if dict.keys.contains("LockReason") {
                self.lockReason = dict["LockReason"] as! String
            }
            if dict.keys.contains("MinorVersion") {
                self.minorVersion = dict["MinorVersion"] as! String
            }
            if dict.keys.contains("Network") {
                self.network = dict["Network"] as! String
            }
            if dict.keys.contains("NodeClass") {
                self.nodeClass = dict["NodeClass"] as! String
            }
            if dict.keys.contains("NodeCount") {
                self.nodeCount = dict["NodeCount"] as! Int32
            }
            if dict.keys.contains("Nodes") {
                var tmp : [DescribeDBInstancesResponseBody.DBInstances.Nodes] = []
                for v in dict["Nodes"] as! [Any] {
                    var model = DescribeDBInstancesResponseBody.DBInstances.Nodes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.nodes = tmp
            }
            if dict.keys.contains("PayType") {
                self.payType = dict["PayType"] as! String
            }
            if dict.keys.contains("PrimaryInstanceId") {
                self.primaryInstanceId = dict["PrimaryInstanceId"] as! String
            }
            if dict.keys.contains("PrimaryZone") {
                self.primaryZone = dict["PrimaryZone"] as! String
            }
            if dict.keys.contains("ReadDBInstances") {
                self.readDBInstances = dict["ReadDBInstances"] as! [String]
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("SecondaryZone") {
                self.secondaryZone = dict["SecondaryZone"] as! String
            }
            if dict.keys.contains("Series") {
                self.series = dict["Series"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StorageUsed") {
                self.storageUsed = dict["StorageUsed"] as! Int64
            }
            if dict.keys.contains("SupportBinlogX") {
                self.supportBinlogX = dict["SupportBinlogX"] as! Bool
            }
            if dict.keys.contains("TagSet") {
                var tmp : [DescribeDBInstancesResponseBody.DBInstances.TagSet] = []
                for v in dict["TagSet"] as! [Any] {
                    var model = DescribeDBInstancesResponseBody.DBInstances.TagSet()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tagSet = tmp
            }
            if dict.keys.contains("TertiaryZone") {
                self.tertiaryZone = dict["TertiaryZone"] as! String
            }
            if dict.keys.contains("TopologyType") {
                self.topologyType = dict["TopologyType"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("VPCId") {
                self.VPCId = dict["VPCId"] as! String
            }
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
            }
            if dict.keys.contains("gdnRole") {
                self.gdnRole = dict["gdnRole"] as! String
            }
            if dict.keys.contains("isInGdn") {
                self.isInGdn = dict["isInGdn"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstances") {
            var tmp : [DescribeDBInstancesResponseBody.DBInstances] = []
            for v in dict["DBInstances"] as! [Any] {
                var model = DescribeDBInstancesResponseBody.DBInstances()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.DBInstances = tmp
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalNumber") {
            self.totalNumber = dict["TotalNumber"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDBInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CharacterType") {
            self.characterType = dict["CharacterType"] as! String
        }
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("DBNodeIds") {
            self.DBNodeIds = dict["DBNodeIds"] as! String
        }
        if dict.keys.contains("DBNodeRole") {
            self.DBNodeRole = dict["DBNodeRole"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Key") {
            self.key = dict["Key"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Timestamp") {
                            self.timestamp = dict["Timestamp"] as! Int64
                        }
                        if dict.keys.contains("Value") {
                            self.value = dict["Value"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("PerformanceItemValue") {
                        var tmp : [DescribeDBNodePerformanceResponseBody.PerformanceKeys.PerformanceItem.Points.PerformanceItemValue] = []
                        for v in dict["PerformanceItemValue"] as! [Any] {
                            var model = DescribeDBNodePerformanceResponseBody.PerformanceKeys.PerformanceItem.Points.PerformanceItemValue()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DBNodeId") {
                    self.DBNodeId = dict["DBNodeId"] as! String
                }
                if dict.keys.contains("Measurement") {
                    self.measurement = dict["Measurement"] as! String
                }
                if dict.keys.contains("MetricName") {
                    self.metricName = dict["MetricName"] as! String
                }
                if dict.keys.contains("Points") {
                    var model = DescribeDBNodePerformanceResponseBody.PerformanceKeys.PerformanceItem.Points()
                    model.fromMap(dict["Points"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PerformanceItem") {
                var tmp : [DescribeDBNodePerformanceResponseBody.PerformanceKeys.PerformanceItem] = []
                for v in dict["PerformanceItem"] as! [Any] {
                    var model = DescribeDBNodePerformanceResponseBody.PerformanceKeys.PerformanceItem()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("PerformanceKeys") {
            var model = DescribeDBNodePerformanceResponseBody.PerformanceKeys()
            model.fromMap(dict["PerformanceKeys"] as! [String: Any])
            self.performanceKeys = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDBNodePerformanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("DBName") {
            self.DBName = dict["DBName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountName") {
                    self.accountName = dict["AccountName"] as! String
                }
                if dict.keys.contains("AccountPrivilege") {
                    self.accountPrivilege = dict["AccountPrivilege"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Accounts") {
                var tmp : [DescribeDbListResponseBody.Data.Accounts] = []
                for v in dict["Accounts"] as! [Any] {
                    var model = DescribeDbListResponseBody.Data.Accounts()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.accounts = tmp
            }
            if dict.keys.contains("CharacterSetName") {
                self.characterSetName = dict["CharacterSetName"] as! String
            }
            if dict.keys.contains("DBDescription") {
                self.DBDescription = dict["DBDescription"] as! String
            }
            if dict.keys.contains("DBInstanceName") {
                self.DBInstanceName = dict["DBInstanceName"] as! String
            }
            if dict.keys.contains("DBName") {
                self.DBName = dict["DBName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var tmp : [DescribeDbListResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeDbListResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDbListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("DbName") {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DbKey") {
                    self.dbKey = dict["DbKey"] as! String
                }
                if dict.keys.contains("TableName") {
                    self.tableName = dict["TableName"] as! String
                }
                if dict.keys.contains("TableType") {
                    self.tableType = dict["TableType"] as! String
                }
                if dict.keys.contains("TbKey") {
                    self.tbKey = dict["TbKey"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Tables") {
                var tmp : [DescribeDistributeTableListResponseBody.Data.Tables] = []
                for v in dict["Tables"] as! [Any] {
                    var model = DescribeDistributeTableListResponseBody.Data.Tables()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = DescribeDistributeTableListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDistributeTableListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EventId") {
                self.eventId = dict["EventId"] as! Int64
            }
            if dict.keys.contains("EventName") {
                self.eventName = dict["EventName"] as! String
            }
            if dict.keys.contains("EventPayload") {
                self.eventPayload = dict["EventPayload"] as! String
            }
            if dict.keys.contains("EventReason") {
                self.eventReason = dict["EventReason"] as! String
            }
            if dict.keys.contains("EventRecordTime") {
                self.eventRecordTime = dict["EventRecordTime"] as! String
            }
            if dict.keys.contains("EventTime") {
                self.eventTime = dict["EventTime"] as! String
            }
            if dict.keys.contains("EventType") {
                self.eventType = dict["EventType"] as! String
            }
            if dict.keys.contains("EventUserType") {
                self.eventUserType = dict["EventUserType"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ResourceName") {
                self.resourceName = dict["ResourceName"] as! String
            }
            if dict.keys.contains("ResourceType") {
                self.resourceType = dict["ResourceType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EventItems") {
            var tmp : [DescribeEventsResponseBody.EventItems] = []
            for v in dict["EventItems"] as! [Any] {
                var model = DescribeEventsResponseBody.EventItems()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.eventItems = tmp
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalRecordCount") {
            self.totalRecordCount = dict["TotalRecordCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeEventsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FilterType") {
            self.filterType = dict["FilterType"] as! String
        }
        if dict.keys.contains("FilterValue") {
            self.filterValue = dict["FilterValue"] as! String
        }
        if dict.keys.contains("GDNId") {
            self.GDNId = dict["GDNId"] as! String
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ClassCode") {
                        self.classCode = dict["ClassCode"] as! String
                    }
                    if dict.keys.contains("CnNodeClassCode") {
                        self.cnNodeClassCode = dict["CnNodeClassCode"] as! String
                    }
                    if dict.keys.contains("CnNodeCount") {
                        self.cnNodeCount = dict["CnNodeCount"] as! String
                    }
                    if dict.keys.contains("CommodityCode") {
                        self.commodityCode = dict["CommodityCode"] as! String
                    }
                    if dict.keys.contains("DnNodeClassCode") {
                        self.dnNodeClassCode = dict["DnNodeClassCode"] as! String
                    }
                    if dict.keys.contains("DnNodeCount") {
                        self.dnNodeCount = dict["DnNodeCount"] as! String
                    }
                    if dict.keys.contains("ExpireTime") {
                        self.expireTime = dict["ExpireTime"] as! String
                    }
                    if dict.keys.contains("GmtCreated") {
                        self.gmtCreated = dict["GmtCreated"] as! String
                    }
                    if dict.keys.contains("MemberName") {
                        self.memberName = dict["MemberName"] as! String
                    }
                    if dict.keys.contains("PayType") {
                        self.payType = dict["PayType"] as! String
                    }
                    if dict.keys.contains("PrimaryZone") {
                        self.primaryZone = dict["PrimaryZone"] as! String
                    }
                    if dict.keys.contains("RegionId") {
                        self.regionId = dict["RegionId"] as! String
                    }
                    if dict.keys.contains("Role") {
                        self.role = dict["Role"] as! String
                    }
                    if dict.keys.contains("SecondaryZone") {
                        self.secondaryZone = dict["SecondaryZone"] as! String
                    }
                    if dict.keys.contains("SecondsBehindMaster") {
                        self.secondsBehindMaster = dict["SecondsBehindMaster"] as! String
                    }
                    if dict.keys.contains("Status") {
                        self.status = dict["Status"] as! String
                    }
                    if dict.keys.contains("TaskStatus") {
                        self.taskStatus = dict["TaskStatus"] as! String
                    }
                    if dict.keys.contains("TertiaryZone") {
                        self.tertiaryZone = dict["TertiaryZone"] as! String
                    }
                    if dict.keys.contains("ZoneId") {
                        self.zoneId = dict["ZoneId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("GdnInstanceName") {
                    self.gdnInstanceName = dict["GdnInstanceName"] as! String
                }
                if dict.keys.contains("GmtCreated") {
                    self.gmtCreated = dict["GmtCreated"] as! String
                }
                if dict.keys.contains("MemberList") {
                    var tmp : [DescribeGdnInstancesResponseBody.Data.GdnInstanceList.MemberList] = []
                    for v in dict["MemberList"] as! [Any] {
                        var model = DescribeGdnInstancesResponseBody.Data.GdnInstanceList.MemberList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.memberList = tmp
                }
                if dict.keys.contains("MysqlVersion") {
                    self.mysqlVersion = dict["MysqlVersion"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("SwitchHistory") {
                    self.switchHistory = dict["SwitchHistory"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GdnInstanceList") {
                var tmp : [DescribeGdnInstancesResponseBody.Data.GdnInstanceList] = []
                for v in dict["GdnInstanceList"] as! [Any] {
                    var model = DescribeGdnInstancesResponseBody.Data.GdnInstanceList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.gdnInstanceList = tmp
            }
            if dict.keys.contains("PageNumber") {
                self.pageNumber = dict["PageNumber"] as! String
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! String
            }
            if dict.keys.contains("TotalNumber") {
                self.totalNumber = dict["TotalNumber"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = DescribeGdnInstancesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeGdnInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RestoreTime") {
            self.restoreTime = dict["RestoreTime"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Any
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeOpenBackupSetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("EngineVersion") {
            self.engineVersion = dict["EngineVersion"] as! String
        }
        if dict.keys.contains("ParamLevel") {
            self.paramLevel = dict["ParamLevel"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CheckingCode") {
                    self.checkingCode = dict["CheckingCode"] as! String
                }
                if dict.keys.contains("Dynamic") {
                    self.dynamic_ = dict["Dynamic"] as! Int32
                }
                if dict.keys.contains("ParameterDescription") {
                    self.parameterDescription = dict["ParameterDescription"] as! String
                }
                if dict.keys.contains("ParameterName") {
                    self.parameterName = dict["ParameterName"] as! String
                }
                if dict.keys.contains("ParameterValue") {
                    self.parameterValue = dict["ParameterValue"] as! String
                }
                if dict.keys.contains("Revisable") {
                    self.revisable = dict["Revisable"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Engine") {
                self.engine = dict["Engine"] as! String
            }
            if dict.keys.contains("EngineVersion") {
                self.engineVersion = dict["EngineVersion"] as! String
            }
            if dict.keys.contains("ParameterCount") {
                self.parameterCount = dict["ParameterCount"] as! Int32
            }
            if dict.keys.contains("Parameters") {
                var tmp : [DescribeParameterTemplatesResponseBody.Data.Parameters] = []
                for v in dict["Parameters"] as! [Any] {
                    var model = DescribeParameterTemplatesResponseBody.Data.Parameters()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = DescribeParameterTemplatesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeParameterTemplatesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("ParamLevel") {
            self.paramLevel = dict["ParamLevel"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ParameterDescription") {
                    self.parameterDescription = dict["ParameterDescription"] as! String
                }
                if dict.keys.contains("ParameterName") {
                    self.parameterName = dict["ParameterName"] as! String
                }
                if dict.keys.contains("ParameterValue") {
                    self.parameterValue = dict["ParameterValue"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ParameterDescription") {
                    self.parameterDescription = dict["ParameterDescription"] as! String
                }
                if dict.keys.contains("ParameterName") {
                    self.parameterName = dict["ParameterName"] as! String
                }
                if dict.keys.contains("ParameterValue") {
                    self.parameterValue = dict["ParameterValue"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConfigParameters") {
                var tmp : [DescribeParametersResponseBody.Data.ConfigParameters] = []
                for v in dict["ConfigParameters"] as! [Any] {
                    var model = DescribeParametersResponseBody.Data.ConfigParameters()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.configParameters = tmp
            }
            if dict.keys.contains("DBInstanceId") {
                self.DBInstanceId = dict["DBInstanceId"] as! String
            }
            if dict.keys.contains("Engine") {
                self.engine = dict["Engine"] as! String
            }
            if dict.keys.contains("EngineVersion") {
                self.engineVersion = dict["EngineVersion"] as! String
            }
            if dict.keys.contains("RunningParameters") {
                var tmp : [DescribeParametersResponseBody.Data.RunningParameters] = []
                for v in dict["RunningParameters"] as! [Any] {
                    var model = DescribeParametersResponseBody.Data.RunningParameters()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = DescribeParametersResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeParametersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("VpcEnabled") {
                            self.vpcEnabled = dict["VpcEnabled"] as! Bool
                        }
                        if dict.keys.contains("ZoneId") {
                            self.zoneId = dict["ZoneId"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Zone") {
                        var tmp : [DescribeRegionsResponseBody.Regions.Region.Zones.Zone] = []
                        for v in dict["Zone"] as! [Any] {
                            var model = DescribeRegionsResponseBody.Regions.Region.Zones.Zone()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("SupportPolarx10") {
                    self.supportPolarx10 = dict["SupportPolarx10"] as! Bool
                }
                if dict.keys.contains("SupportPolarx20") {
                    self.supportPolarx20 = dict["SupportPolarx20"] as! Bool
                }
                if dict.keys.contains("Zones") {
                    var model = DescribeRegionsResponseBody.Regions.Region.Zones()
                    model.fromMap(dict["Zones"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Region") {
                var tmp : [DescribeRegionsResponseBody.Regions.Region] = []
                for v in dict["Region"] as! [Any] {
                    var model = DescribeRegionsResponseBody.Regions.Region()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Regions") {
            var model = DescribeRegionsResponseBody.Regions()
            model.fromMap(dict["Regions"] as! [String: Any])
            self.regions = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Progress") {
            self.progress = dict["Progress"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeScaleOutMigrateTaskListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("GroupName") {
                    self.groupName = dict["GroupName"] as! String
                }
                if dict.keys.contains("SecurityIPList") {
                    self.securityIPList = dict["SecurityIPList"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DBInstanceName") {
                self.DBInstanceName = dict["DBInstanceName"] as! String
            }
            if dict.keys.contains("GroupItems") {
                var tmp : [DescribeSecurityIpsResponseBody.Data.GroupItems] = []
                for v in dict["GroupItems"] as! [Any] {
                    var model = DescribeSecurityIpsResponseBody.Data.GroupItems()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = DescribeSecurityIpsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeSecurityIpsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CharacterType") {
            self.characterType = dict["CharacterType"] as! String
        }
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("DBName") {
            self.DBName = dict["DBName"] as! String
        }
        if dict.keys.contains("DBNodeIds") {
            self.DBNodeIds = dict["DBNodeIds"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Page") {
            self.page = dict["Page"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CNname") {
                self.CNname = dict["CNname"] as! String
            }
            if dict.keys.contains("DBName") {
                self.DBName = dict["DBName"] as! String
            }
            if dict.keys.contains("Extension") {
                self.extension_ = dict["Extension"] as! String
            }
            if dict.keys.contains("Fail") {
                self.fail = dict["Fail"] as! String
            }
            if dict.keys.contains("Frows") {
                self.frows = dict["Frows"] as! String
            }
            if dict.keys.contains("HostAddress") {
                self.hostAddress = dict["HostAddress"] as! String
            }
            if dict.keys.contains("InsName") {
                self.insName = dict["InsName"] as! String
            }
            if dict.keys.contains("IsBind") {
                self.isBind = dict["IsBind"] as! String
            }
            if dict.keys.contains("LockTimeMS") {
                self.lockTimeMS = dict["LockTimeMS"] as! String
            }
            if dict.keys.contains("Params") {
                self.params = dict["Params"] as! String
            }
            if dict.keys.contains("ParseRowCounts") {
                self.parseRowCounts = dict["ParseRowCounts"] as! String
            }
            if dict.keys.contains("QueryStartTime") {
                self.queryStartTime = dict["QueryStartTime"] as! String
            }
            if dict.keys.contains("QueryTime") {
                self.queryTime = dict["QueryTime"] as! String
            }
            if dict.keys.contains("QueryTimeMS") {
                self.queryTimeMS = dict["QueryTimeMS"] as! String
            }
            if dict.keys.contains("ReturnRowCounts") {
                self.returnRowCounts = dict["ReturnRowCounts"] as! String
            }
            if dict.keys.contains("Rows") {
                self.rows = dict["Rows"] as! String
            }
            if dict.keys.contains("SCNT") {
                self.SCNT = dict["SCNT"] as! String
            }
            if dict.keys.contains("SQLHash") {
                self.SQLHash = dict["SQLHash"] as! String
            }
            if dict.keys.contains("SQLText") {
                self.SQLText = dict["SQLText"] as! String
            }
            if dict.keys.contains("SqlType") {
                self.sqlType = dict["SqlType"] as! String
            }
            if dict.keys.contains("TooLong") {
                self.tooLong = dict["TooLong"] as! String
            }
            if dict.keys.contains("TraceId") {
                self.traceId = dict["TraceId"] as! String
            }
            if dict.keys.contains("TransactionPolicy") {
                self.transactionPolicy = dict["TransactionPolicy"] as! String
            }
            if dict.keys.contains("TrxId") {
                self.trxId = dict["TrxId"] as! String
            }
            if dict.keys.contains("WT") {
                self.WT = dict["WT"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("Items") {
            var tmp : [DescribeSlowLogRecordsResponseBody.Items] = []
            for v in dict["Items"] as! [Any] {
                var model = DescribeSlowLogRecordsResponseBody.Items()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.items = tmp
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageRecordCount") {
            self.pageRecordCount = dict["PageRecordCount"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeSlowLogRecordsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TagKey") {
            self.tagKey = dict["TagKey"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DBInstanceIds") {
                self.DBInstanceIds = dict["DBInstanceIds"] as! [String]
            }
            if dict.keys.contains("TagKey") {
                self.tagKey = dict["TagKey"] as! String
            }
            if dict.keys.contains("TagValue") {
                self.tagValue = dict["TagValue"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TagInfos") {
            var tmp : [DescribeTagsResponseBody.TagInfos] = []
            for v in dict["TagInfos"] as! [Any] {
                var model = DescribeTagsResponseBody.TagInfos()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeTagsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BeginTime") {
                self.beginTime = dict["BeginTime"] as! String
            }
            if dict.keys.contains("DBName") {
                self.DBName = dict["DBName"] as! String
            }
            if dict.keys.contains("FinishTime") {
                self.finishTime = dict["FinishTime"] as! String
            }
            if dict.keys.contains("Progress") {
                self.progress = dict["Progress"] as! String
            }
            if dict.keys.contains("ProgressInfo") {
                self.progressInfo = dict["ProgressInfo"] as! String
            }
            if dict.keys.contains("ScaleOutToken") {
                self.scaleOutToken = dict["ScaleOutToken"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TaskAction") {
                self.taskAction = dict["TaskAction"] as! String
            }
            if dict.keys.contains("TaskErrorCode") {
                self.taskErrorCode = dict["TaskErrorCode"] as! String
            }
            if dict.keys.contains("TaskErrorMessage") {
                self.taskErrorMessage = dict["TaskErrorMessage"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Items") {
            var tmp : [DescribeTasksResponseBody.Items] = []
            for v in dict["Items"] as! [Any] {
                var model = DescribeTasksResponseBody.Items()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.items = tmp
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageRecordCount") {
            self.pageRecordCount = dict["PageRecordCount"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalRecordCount") {
            self.totalRecordCount = dict["TotalRecordCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("KeyIds") {
                self.keyIds = dict["KeyIds"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = DescribeUserEncryptionKeyListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeUserEncryptionKeyListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("DbaAccountName") {
            self.dbaAccountName = dict["DbaAccountName"] as! String
        }
        if dict.keys.contains("DbaAccountPassword") {
            self.dbaAccountPassword = dict["DbaAccountPassword"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DisableRightsSeparationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuditAccountDescription") {
            self.auditAccountDescription = dict["AuditAccountDescription"] as! String
        }
        if dict.keys.contains("AuditAccountName") {
            self.auditAccountName = dict["AuditAccountName"] as! String
        }
        if dict.keys.contains("AuditAccountPassword") {
            self.auditAccountPassword = dict["AuditAccountPassword"] as! String
        }
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SecurityAccountDescription") {
            self.securityAccountDescription = dict["SecurityAccountDescription"] as! String
        }
        if dict.keys.contains("SecurityAccountName") {
            self.securityAccountName = dict["SecurityAccountName"] as! String
        }
        if dict.keys.contains("SecurityAccountPassword") {
            self.securityAccountPassword = dict["SecurityAccountPassword"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = EnableRightsSeparationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tag") {
            var tmp : [ListTagResourcesRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = ListTagResourcesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ResourceId") {
                    self.resourceId = dict["ResourceId"] as! String
                }
                if dict.keys.contains("ResourceType") {
                    self.resourceType = dict["ResourceType"] as! String
                }
                if dict.keys.contains("TagKey") {
                    self.tagKey = dict["TagKey"] as! String
                }
                if dict.keys.contains("TagValue") {
                    self.tagValue = dict["TagValue"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TagResource") {
                var tmp : [ListTagResourcesResponseBody.TagResources.TagResource] = []
                for v in dict["TagResource"] as! [Any] {
                    var model = ListTagResourcesResponseBody.TagResources.TagResource()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TagResources") {
            var model = ListTagResourcesResponseBody.TagResources()
            model.fromMap(dict["TagResources"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListTagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountDescription") {
            self.accountDescription = dict["AccountDescription"] as! String
        }
        if dict.keys.contains("AccountName") {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyAccountDescriptionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountName") {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("AccountPrivilege") {
            self.accountPrivilege = dict["AccountPrivilege"] as! String
        }
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("DbName") {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SecurityAccountName") {
            self.securityAccountName = dict["SecurityAccountName"] as! String
        }
        if dict.keys.contains("SecurityAccountPassword") {
            self.securityAccountPassword = dict["SecurityAccountPassword"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyAccountPrivilegeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CycleTime") {
            self.cycleTime = dict["CycleTime"] as! String
        }
        if dict.keys.contains("CycleType") {
            self.cycleType = dict["CycleType"] as! String
        }
        if dict.keys.contains("MaintainEndTime") {
            self.maintainEndTime = dict["MaintainEndTime"] as! String
        }
        if dict.keys.contains("MaintainStartTime") {
            self.maintainStartTime = dict["MaintainStartTime"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyActiveOperationMaintainConfResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ids") {
            self.ids = dict["Ids"] as! String
        }
        if dict.keys.contains("ImmediateStart") {
            self.immediateStart = dict["ImmediateStart"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SwitchTime") {
            self.switchTime = dict["SwitchTime"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ids") {
            self.ids = dict["Ids"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyActiveOperationTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("CnClass") {
            self.cnClass = dict["CnClass"] as! String
        }
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("DnClass") {
            self.dnClass = dict["DnClass"] as! String
        }
        if dict.keys.contains("DnStorageSpace") {
            self.dnStorageSpace = dict["DnStorageSpace"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SpecifiedDNScale") {
            self.specifiedDNScale = dict["SpecifiedDNScale"] as! Bool
        }
        if dict.keys.contains("SpecifiedDNSpecMapJson") {
            self.specifiedDNSpecMapJson = dict["SpecifiedDNSpecMapJson"] as! String
        }
        if dict.keys.contains("SwitchTime") {
            self.switchTime = dict["SwitchTime"] as! String
        }
        if dict.keys.contains("SwitchTimeMode") {
            self.switchTimeMode = dict["SwitchTimeMode"] as! String
        }
        if dict.keys.contains("TargetDBInstanceClass") {
            self.targetDBInstanceClass = dict["TargetDBInstanceClass"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyDBInstanceClassResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigName") {
            self.configName = dict["ConfigName"] as! String
        }
        if dict.keys.contains("ConfigValue") {
            self.configValue = dict["ConfigValue"] as! String
        }
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyDBInstanceConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConnectionString") {
            self.connectionString = dict["ConnectionString"] as! String
        }
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("NewPort") {
            self.newPort = dict["NewPort"] as! String
        }
        if dict.keys.contains("NewPrefix") {
            self.newPrefix = dict["NewPrefix"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConnectionString") {
                self.connectionString = dict["ConnectionString"] as! String
            }
            if dict.keys.contains("DBInstanceName") {
                self.DBInstanceName = dict["DBInstanceName"] as! String
            }
            if dict.keys.contains("DBInstanceNetType") {
                self.DBInstanceNetType = dict["DBInstanceNetType"] as! String
            }
            if dict.keys.contains("Port") {
                self.port = dict["Port"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! Int64
        }
        if dict.keys.contains("Data") {
            var model = ModifyDBInstanceConnectionStringResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyDBInstanceConnectionStringResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceDescription") {
            self.DBInstanceDescription = dict["DBInstanceDescription"] as! String
        }
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyDBInstanceDescriptionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("DbDescription") {
            self.dbDescription = dict["DbDescription"] as! String
        }
        if dict.keys.contains("DbName") {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyDatabaseDescriptionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("ParamLevel") {
            self.paramLevel = dict["ParamLevel"] as! String
        }
        if dict.keys.contains("ParameterGroupId") {
            self.parameterGroupId = dict["ParameterGroupId"] as! String
        }
        if dict.keys.contains("Parameters") {
            self.parameters = dict["Parameters"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyParameterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("ModifyMode") {
            self.modifyMode = dict["ModifyMode"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SecurityIPList") {
            self.securityIPList = dict["SecurityIPList"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifySecurityIpsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ReleaseColdDataVolumeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentConnectionString") {
            self.currentConnectionString = dict["CurrentConnectionString"] as! String
        }
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ReleaseInstancePublicConnectionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountName") {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("AccountPassword") {
            self.accountPassword = dict["AccountPassword"] as! String
        }
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SecurityAccountName") {
            self.securityAccountName = dict["SecurityAccountName"] as! String
        }
        if dict.keys.contains("SecurityAccountPassword") {
            self.securityAccountPassword = dict["SecurityAccountPassword"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ResetAccountPasswordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RestartDBInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SwitchTime") {
            self.switchTime = dict["SwitchTime"] as! String
        }
        if dict.keys.contains("SwitchTimeMode") {
            self.switchTimeMode = dict["SwitchTimeMode"] as! String
        }
        if dict.keys.contains("TargetPrimaryAzoneId") {
            self.targetPrimaryAzoneId = dict["TargetPrimaryAzoneId"] as! String
        }
        if dict.keys.contains("TargetPrimaryRegionId") {
            self.targetPrimaryRegionId = dict["TargetPrimaryRegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SwitchDBInstanceHAResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SwitchMode") {
            self.switchMode = dict["SwitchMode"] as! String
        }
        if dict.keys.contains("TaskTimeout") {
            self.taskTimeout = dict["TaskTimeout"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = SwitchGdnMemberRoleResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SwitchGdnMemberRoleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tag") {
            var tmp : [TagResourcesRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = TagResourcesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = TagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("All") {
            self.all = dict["All"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("TagKey") {
            self.tagKey = dict["TagKey"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UntagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupPeriod") {
            self.backupPeriod = dict["BackupPeriod"] as! String
        }
        if dict.keys.contains("BackupPlanBegin") {
            self.backupPlanBegin = dict["BackupPlanBegin"] as! String
        }
        if dict.keys.contains("BackupSetRetention") {
            self.backupSetRetention = dict["BackupSetRetention"] as! Int32
        }
        if dict.keys.contains("BackupType") {
            self.backupType = dict["BackupType"] as! String
        }
        if dict.keys.contains("BackupWay") {
            self.backupWay = dict["BackupWay"] as! String
        }
        if dict.keys.contains("ColdDataBackupInterval") {
            self.coldDataBackupInterval = dict["ColdDataBackupInterval"] as! Int32
        }
        if dict.keys.contains("ColdDataBackupRetention") {
            self.coldDataBackupRetention = dict["ColdDataBackupRetention"] as! Int32
        }
        if dict.keys.contains("CrossRegionDataBackupRetention") {
            self.crossRegionDataBackupRetention = dict["CrossRegionDataBackupRetention"] as! Int32
        }
        if dict.keys.contains("CrossRegionLogBackupRetention") {
            self.crossRegionLogBackupRetention = dict["CrossRegionLogBackupRetention"] as! Int32
        }
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("DestCrossRegion") {
            self.destCrossRegion = dict["DestCrossRegion"] as! String
        }
        if dict.keys.contains("ForceCleanOnHighSpaceUsage") {
            self.forceCleanOnHighSpaceUsage = dict["ForceCleanOnHighSpaceUsage"] as! Int32
        }
        if dict.keys.contains("IsCrossRegionDataBackupEnabled") {
            self.isCrossRegionDataBackupEnabled = dict["IsCrossRegionDataBackupEnabled"] as! Bool
        }
        if dict.keys.contains("IsCrossRegionLogBackupEnabled") {
            self.isCrossRegionLogBackupEnabled = dict["IsCrossRegionLogBackupEnabled"] as! Bool
        }
        if dict.keys.contains("IsEnabled") {
            self.isEnabled = dict["IsEnabled"] as! Int32
        }
        if dict.keys.contains("LocalLogRetention") {
            self.localLogRetention = dict["LocalLogRetention"] as! Int32
        }
        if dict.keys.contains("LocalLogRetentionNumber") {
            self.localLogRetentionNumber = dict["LocalLogRetentionNumber"] as! Int32
        }
        if dict.keys.contains("LogLocalRetentionSpace") {
            self.logLocalRetentionSpace = dict["LogLocalRetentionSpace"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RemoveLogRetention") {
            self.removeLogRetention = dict["RemoveLogRetention"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BackupPeriod") {
                self.backupPeriod = dict["BackupPeriod"] as! String
            }
            if dict.keys.contains("BackupPlanBegin") {
                self.backupPlanBegin = dict["BackupPlanBegin"] as! String
            }
            if dict.keys.contains("BackupSetRetention") {
                self.backupSetRetention = dict["BackupSetRetention"] as! Int32
            }
            if dict.keys.contains("BackupType") {
                self.backupType = dict["BackupType"] as! String
            }
            if dict.keys.contains("BackupWay") {
                self.backupWay = dict["BackupWay"] as! String
            }
            if dict.keys.contains("ColdDataBackupInterval") {
                self.coldDataBackupInterval = dict["ColdDataBackupInterval"] as! Int32
            }
            if dict.keys.contains("ColdDataBackupRetention") {
                self.coldDataBackupRetention = dict["ColdDataBackupRetention"] as! Int32
            }
            if dict.keys.contains("CrossRegionDataBackupRetention") {
                self.crossRegionDataBackupRetention = dict["CrossRegionDataBackupRetention"] as! Int32
            }
            if dict.keys.contains("CrossRegionLogBackupRetention") {
                self.crossRegionLogBackupRetention = dict["CrossRegionLogBackupRetention"] as! Int32
            }
            if dict.keys.contains("DBInstanceName") {
                self.DBInstanceName = dict["DBInstanceName"] as! String
            }
            if dict.keys.contains("DestCrossRegion") {
                self.destCrossRegion = dict["DestCrossRegion"] as! String
            }
            if dict.keys.contains("ForceCleanOnHighSpaceUsage") {
                self.forceCleanOnHighSpaceUsage = dict["ForceCleanOnHighSpaceUsage"] as! Int32
            }
            if dict.keys.contains("IsCrossRegionDataBackupEnabled") {
                self.isCrossRegionDataBackupEnabled = dict["IsCrossRegionDataBackupEnabled"] as! Bool
            }
            if dict.keys.contains("IsCrossRegionLogBackupEnabled") {
                self.isCrossRegionLogBackupEnabled = dict["IsCrossRegionLogBackupEnabled"] as! Bool
            }
            if dict.keys.contains("IsEnabled") {
                self.isEnabled = dict["IsEnabled"] as! Int32
            }
            if dict.keys.contains("LocalLogRetention") {
                self.localLogRetention = dict["LocalLogRetention"] as! Int32
            }
            if dict.keys.contains("LocalLogRetentionNumber") {
                self.localLogRetentionNumber = dict["LocalLogRetentionNumber"] as! Int32
            }
            if dict.keys.contains("LogLocalRetentionSpace") {
                self.logLocalRetentionSpace = dict["LogLocalRetentionSpace"] as! Int32
            }
            if dict.keys.contains("RemoveLogRetention") {
                self.removeLogRetention = dict["RemoveLogRetention"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = UpdateBackupPolicyResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateBackupPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CertCommonName") {
            self.certCommonName = dict["CertCommonName"] as! String
        }
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("EnableSSL") {
            self.enableSSL = dict["EnableSSL"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = UpdateDBInstanceSSLResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateDBInstanceSSLResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("EncryptionKey") {
            self.encryptionKey = dict["EncryptionKey"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RoleArn") {
            self.roleArn = dict["RoleArn"] as! String
        }
        if dict.keys.contains("TDEStatus") {
            self.TDEStatus = dict["TDEStatus"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = UpdateDBInstanceTDEResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateDBInstanceTDEResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdatePolarDBXInstanceNodeRequest : Tea.TeaModel {
    public var addDNSpec: String?

    public var CNNodeCount: String?

    public var clientToken: String?

    public var DBInstanceName: String?

    public var DNNodeCount: String?

    public var dbInstanceNodeCount: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AddDNSpec") {
            self.addDNSpec = dict["AddDNSpec"] as! String
        }
        if dict.keys.contains("CNNodeCount") {
            self.CNNodeCount = dict["CNNodeCount"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("DNNodeCount") {
            self.DNNodeCount = dict["DNNodeCount"] as! String
        }
        if dict.keys.contains("DbInstanceNodeCount") {
            self.dbInstanceNodeCount = dict["DbInstanceNodeCount"] as! String
        }
        if dict.keys.contains("DeleteDNIds") {
            self.deleteDNIds = dict["DeleteDNIds"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StoragePoolName") {
            self.storagePoolName = dict["StoragePoolName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdatePolarDBXInstanceNodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("MinorVersion") {
            self.minorVersion = dict["MinorVersion"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SwitchMode") {
            self.switchMode = dict["SwitchMode"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceName") {
            self.DBInstanceName = dict["DBInstanceName"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TargetMinorVersion") {
            self.targetMinorVersion = dict["TargetMinorVersion"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpgradeDBInstanceKernelVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
