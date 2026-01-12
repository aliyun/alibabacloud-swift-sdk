import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AllocateClusterPublicConnectionRequest : Tea.TeaModel {
    public var connectionStringPrefix: String?

    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class AllocateClusterPublicConnectionResponseBody : Tea.TeaModel {
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

public class AllocateClusterPublicConnectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AllocateClusterPublicConnectionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AllocateClusterPublicConnectionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CancelActiveOperationTasksRequest : Tea.TeaModel {
    public var ids: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var securityToken: String?

    public override init() {
        super.init()
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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Ids"] as? String {
            self.ids = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
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

public class CancelAppointmentElectZookeeperLeaderRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
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
    }
}

public class CancelAppointmentElectZookeeperLeaderResponseBody : Tea.TeaModel {
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

public class CancelAppointmentElectZookeeperLeaderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelAppointmentElectZookeeperLeaderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CancelAppointmentElectZookeeperLeaderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CancelAppointmentRestartInstanceNodeListRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
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
    }
}

public class CancelAppointmentRestartInstanceNodeListResponseBody : Tea.TeaModel {
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

public class CancelAppointmentRestartInstanceNodeListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelAppointmentRestartInstanceNodeListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CancelAppointmentRestartInstanceNodeListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CancelRestartInstanceRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var restartTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
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
        if self.restartTime != nil {
            map["RestartTime"] = self.restartTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
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
        if let value = dict["RestartTime"] as? String {
            self.restartTime = value
        }
    }
}

public class CancelRestartInstanceResponseBody : Tea.TeaModel {
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

public class CancelRestartInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelRestartInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CancelRestartInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChangeResourceGroupRequest : Tea.TeaModel {
    public var resourceGroupId: String?

    public var resourceId: String?

    public var resourceRegionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceRegionId != nil {
            map["ResourceRegionId"] = self.resourceRegionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceRegionId"] as? String {
            self.resourceRegionId = value
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

public class CheckClickhouseToRDSRequest : Tea.TeaModel {
    public var ckPassword: String?

    public var ckUserName: String?

    public var clickhousePort: Int64?

    public var dbClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var rdsId: String?

    public var rdsPassword: String?

    public var rdsPort: Int64?

    public var rdsUserName: String?

    public var rdsVpcId: String?

    public var rdsVpcUrl: String?

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
        if self.ckPassword != nil {
            map["CkPassword"] = self.ckPassword!
        }
        if self.ckUserName != nil {
            map["CkUserName"] = self.ckUserName!
        }
        if self.clickhousePort != nil {
            map["ClickhousePort"] = self.clickhousePort!
        }
        if self.dbClusterId != nil {
            map["DbClusterId"] = self.dbClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.rdsId != nil {
            map["RdsId"] = self.rdsId!
        }
        if self.rdsPassword != nil {
            map["RdsPassword"] = self.rdsPassword!
        }
        if self.rdsPort != nil {
            map["RdsPort"] = self.rdsPort!
        }
        if self.rdsUserName != nil {
            map["RdsUserName"] = self.rdsUserName!
        }
        if self.rdsVpcId != nil {
            map["RdsVpcId"] = self.rdsVpcId!
        }
        if self.rdsVpcUrl != nil {
            map["RdsVpcUrl"] = self.rdsVpcUrl!
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
        if let value = dict["CkPassword"] as? String {
            self.ckPassword = value
        }
        if let value = dict["CkUserName"] as? String {
            self.ckUserName = value
        }
        if let value = dict["ClickhousePort"] as? Int64 {
            self.clickhousePort = value
        }
        if let value = dict["DbClusterId"] as? String {
            self.dbClusterId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RdsId"] as? String {
            self.rdsId = value
        }
        if let value = dict["RdsPassword"] as? String {
            self.rdsPassword = value
        }
        if let value = dict["RdsPort"] as? Int64 {
            self.rdsPort = value
        }
        if let value = dict["RdsUserName"] as? String {
            self.rdsUserName = value
        }
        if let value = dict["RdsVpcId"] as? String {
            self.rdsVpcId = value
        }
        if let value = dict["RdsVpcUrl"] as? String {
            self.rdsVpcUrl = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class CheckClickhouseToRDSResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var requestId: String?

    public var status: Bool?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? Bool {
            self.status = value
        }
    }
}

public class CheckClickhouseToRDSResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckClickhouseToRDSResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CheckClickhouseToRDSResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CheckModifyConfigNeedRestartRequest : Tea.TeaModel {
    public var config: String?

    public var DBClusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
    }
}

public class CheckModifyConfigNeedRestartResponseBody : Tea.TeaModel {
    public var needRestart: Bool?

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
        if self.needRestart != nil {
            map["NeedRestart"] = self.needRestart!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NeedRestart"] as? Bool {
            self.needRestart = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CheckModifyConfigNeedRestartResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckModifyConfigNeedRestartResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CheckModifyConfigNeedRestartResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CheckMonitorAlertRequest : Tea.TeaModel {
    public var DBClusterId: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
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
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
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

public class CheckMonitorAlertResponseBody : Tea.TeaModel {
    public var parameter: String?

    public var requestId: String?

    public var state: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.parameter != nil {
            map["Parameter"] = self.parameter!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Parameter"] as? String {
            self.parameter = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["State"] as? String {
            self.state = value
        }
    }
}

public class CheckMonitorAlertResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckMonitorAlertResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CheckMonitorAlertResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CheckScaleOutBalancedRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
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
    }
}

public class CheckScaleOutBalancedResponseBody : Tea.TeaModel {
    public class TableDetails : Tea.TeaModel {
        public class TableDetail : Tea.TeaModel {
            public var cluster: String?

            public var database: String?

            public var detail: Int32?

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
                if self.cluster != nil {
                    map["Cluster"] = self.cluster!
                }
                if self.database != nil {
                    map["Database"] = self.database!
                }
                if self.detail != nil {
                    map["Detail"] = self.detail!
                }
                if self.tableName != nil {
                    map["TableName"] = self.tableName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Cluster"] as? String {
                    self.cluster = value
                }
                if let value = dict["Database"] as? String {
                    self.database = value
                }
                if let value = dict["Detail"] as? Int32 {
                    self.detail = value
                }
                if let value = dict["TableName"] as? String {
                    self.tableName = value
                }
            }
        }
        public var tableDetail: [CheckScaleOutBalancedResponseBody.TableDetails.TableDetail]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tableDetail != nil {
                var tmp : [Any] = []
                for k in self.tableDetail! {
                    tmp.append(k.toMap())
                }
                map["TableDetail"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TableDetail"] as? [Any?] {
                var tmp : [CheckScaleOutBalancedResponseBody.TableDetails.TableDetail] = []
                for v in value {
                    if v != nil {
                        var model = CheckScaleOutBalancedResponseBody.TableDetails.TableDetail()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tableDetail = tmp
            }
        }
    }
    public var checkCode: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var tableDetails: CheckScaleOutBalancedResponseBody.TableDetails?

    public var timeDuration: String?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tableDetails?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.checkCode != nil {
            map["CheckCode"] = self.checkCode!
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
        if self.tableDetails != nil {
            map["TableDetails"] = self.tableDetails?.toMap()
        }
        if self.timeDuration != nil {
            map["TimeDuration"] = self.timeDuration!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CheckCode"] as? String {
            self.checkCode = value
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
        if let value = dict["TableDetails"] as? [String: Any?] {
            var model = CheckScaleOutBalancedResponseBody.TableDetails()
            model.fromMap(value)
            self.tableDetails = model
        }
        if let value = dict["TimeDuration"] as? String {
            self.timeDuration = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class CheckScaleOutBalancedResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckScaleOutBalancedResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CheckScaleOutBalancedResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CheckServiceLinkedRoleRequest : Tea.TeaModel {
    public var ownerAccount: String?

    public var ownerId: Int64?

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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class CheckServiceLinkedRoleResponseBody : Tea.TeaModel {
    public var hasServiceLinkedRole: Bool?

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
        if self.hasServiceLinkedRole != nil {
            map["HasServiceLinkedRole"] = self.hasServiceLinkedRole!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HasServiceLinkedRole"] as? Bool {
            self.hasServiceLinkedRole = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CheckServiceLinkedRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckServiceLinkedRoleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CheckServiceLinkedRoleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAccountRequest : Tea.TeaModel {
    public var accountDescription: String?

    public var accountName: String?

    public var accountPassword: String?

    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

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
        if self.accountDescription != nil {
            map["AccountDescription"] = self.accountDescription!
        }
        if self.accountName != nil {
            map["AccountName"] = self.accountName!
        }
        if self.accountPassword != nil {
            map["AccountPassword"] = self.accountPassword!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        if let value = dict["AccountDescription"] as? String {
            self.accountDescription = value
        }
        if let value = dict["AccountName"] as? String {
            self.accountName = value
        }
        if let value = dict["AccountPassword"] as? String {
            self.accountPassword = value
        }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class CreateAccountResponseBody : Tea.TeaModel {
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

public class CreateAccountAndAuthorityRequest : Tea.TeaModel {
    public var accountDescription: String?

    public var accountName: String?

    public var accountPassword: String?

    public var allowDatabases: String?

    public var allowDictionaries: String?

    public var DBClusterId: String?

    public var ddlAuthority: Bool?

    public var dmlAuthority: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var totalDatabases: String?

    public var totalDictionaries: String?

    public override init() {
        super.init()
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
        if self.allowDatabases != nil {
            map["AllowDatabases"] = self.allowDatabases!
        }
        if self.allowDictionaries != nil {
            map["AllowDictionaries"] = self.allowDictionaries!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ddlAuthority != nil {
            map["DdlAuthority"] = self.ddlAuthority!
        }
        if self.dmlAuthority != nil {
            map["DmlAuthority"] = self.dmlAuthority!
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
        if self.totalDatabases != nil {
            map["TotalDatabases"] = self.totalDatabases!
        }
        if self.totalDictionaries != nil {
            map["TotalDictionaries"] = self.totalDictionaries!
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
        if let value = dict["AllowDatabases"] as? String {
            self.allowDatabases = value
        }
        if let value = dict["AllowDictionaries"] as? String {
            self.allowDictionaries = value
        }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["DdlAuthority"] as? Bool {
            self.ddlAuthority = value
        }
        if let value = dict["DmlAuthority"] as? String {
            self.dmlAuthority = value
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
        if let value = dict["TotalDatabases"] as? String {
            self.totalDatabases = value
        }
        if let value = dict["TotalDictionaries"] as? String {
            self.totalDictionaries = value
        }
    }
}

public class CreateAccountAndAuthorityResponseBody : Tea.TeaModel {
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

public class CreateAccountAndAuthorityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAccountAndAuthorityResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateAccountAndAuthorityResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateBackupPolicyRequest : Tea.TeaModel {
    public var backupRetentionPeriod: String?

    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var preferredBackupPeriod: String?

    public var preferredBackupTime: String?

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
        if self.backupRetentionPeriod != nil {
            map["BackupRetentionPeriod"] = self.backupRetentionPeriod!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.preferredBackupPeriod != nil {
            map["PreferredBackupPeriod"] = self.preferredBackupPeriod!
        }
        if self.preferredBackupTime != nil {
            map["PreferredBackupTime"] = self.preferredBackupTime!
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
        if let value = dict["BackupRetentionPeriod"] as? String {
            self.backupRetentionPeriod = value
        }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PreferredBackupPeriod"] as? String {
            self.preferredBackupPeriod = value
        }
        if let value = dict["PreferredBackupTime"] as? String {
            self.preferredBackupTime = value
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

public class CreateBackupPolicyResponseBody : Tea.TeaModel {
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

public class CreateBackupPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateBackupPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateBackupPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDBInstanceRequest : Tea.TeaModel {
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
                map["key"] = self.key!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["key"] as? String {
                self.key = value
            }
            if let value = dict["value"] as? String {
                self.value = value
            }
        }
    }
    public var autoRenew: Bool?

    public var backupSetID: String?

    public var clientToken: String?

    public var DBClusterCategory: String?

    public var DBClusterClass: String?

    public var DBClusterDescription: String?

    public var DBClusterNetworkType: String?

    public var DBClusterVersion: String?

    public var DBNodeGroupCount: String?

    public var DBNodeStorage: String?

    public var dbNodeStorageType: String?

    public var encryptionKey: String?

    public var encryptionType: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var payType: String?

    public var period: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var sourceDBClusterId: String?

    public var tags: [CreateDBInstanceRequest.Tags]?

    public var usedTime: String?

    public var VPCId: String?

    public var vSwitchBak: String?

    public var vSwitchBak2: String?

    public var vSwitchId: String?

    public var zondIdBak2: String?

    public var zoneId: String?

    public var zoneIdBak: String?

    public override init() {
        super.init()
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
        if self.backupSetID != nil {
            map["BackupSetID"] = self.backupSetID!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.DBClusterCategory != nil {
            map["DBClusterCategory"] = self.DBClusterCategory!
        }
        if self.DBClusterClass != nil {
            map["DBClusterClass"] = self.DBClusterClass!
        }
        if self.DBClusterDescription != nil {
            map["DBClusterDescription"] = self.DBClusterDescription!
        }
        if self.DBClusterNetworkType != nil {
            map["DBClusterNetworkType"] = self.DBClusterNetworkType!
        }
        if self.DBClusterVersion != nil {
            map["DBClusterVersion"] = self.DBClusterVersion!
        }
        if self.DBNodeGroupCount != nil {
            map["DBNodeGroupCount"] = self.DBNodeGroupCount!
        }
        if self.DBNodeStorage != nil {
            map["DBNodeStorage"] = self.DBNodeStorage!
        }
        if self.dbNodeStorageType != nil {
            map["DbNodeStorageType"] = self.dbNodeStorageType!
        }
        if self.encryptionKey != nil {
            map["EncryptionKey"] = self.encryptionKey!
        }
        if self.encryptionType != nil {
            map["EncryptionType"] = self.encryptionType!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.sourceDBClusterId != nil {
            map["SourceDBClusterId"] = self.sourceDBClusterId!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        if self.usedTime != nil {
            map["UsedTime"] = self.usedTime!
        }
        if self.VPCId != nil {
            map["VPCId"] = self.VPCId!
        }
        if self.vSwitchBak != nil {
            map["VSwitchBak"] = self.vSwitchBak!
        }
        if self.vSwitchBak2 != nil {
            map["VSwitchBak2"] = self.vSwitchBak2!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        if self.zondIdBak2 != nil {
            map["ZondIdBak2"] = self.zondIdBak2!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        if self.zoneIdBak != nil {
            map["ZoneIdBak"] = self.zoneIdBak!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoRenew"] as? Bool {
            self.autoRenew = value
        }
        if let value = dict["BackupSetID"] as? String {
            self.backupSetID = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DBClusterCategory"] as? String {
            self.DBClusterCategory = value
        }
        if let value = dict["DBClusterClass"] as? String {
            self.DBClusterClass = value
        }
        if let value = dict["DBClusterDescription"] as? String {
            self.DBClusterDescription = value
        }
        if let value = dict["DBClusterNetworkType"] as? String {
            self.DBClusterNetworkType = value
        }
        if let value = dict["DBClusterVersion"] as? String {
            self.DBClusterVersion = value
        }
        if let value = dict["DBNodeGroupCount"] as? String {
            self.DBNodeGroupCount = value
        }
        if let value = dict["DBNodeStorage"] as? String {
            self.DBNodeStorage = value
        }
        if let value = dict["DbNodeStorageType"] as? String {
            self.dbNodeStorageType = value
        }
        if let value = dict["EncryptionKey"] as? String {
            self.encryptionKey = value
        }
        if let value = dict["EncryptionType"] as? String {
            self.encryptionType = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PayType"] as? String {
            self.payType = value
        }
        if let value = dict["Period"] as? String {
            self.period = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SourceDBClusterId"] as? String {
            self.sourceDBClusterId = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [CreateDBInstanceRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = CreateDBInstanceRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["UsedTime"] as? String {
            self.usedTime = value
        }
        if let value = dict["VPCId"] as? String {
            self.VPCId = value
        }
        if let value = dict["VSwitchBak"] as? String {
            self.vSwitchBak = value
        }
        if let value = dict["VSwitchBak2"] as? String {
            self.vSwitchBak2 = value
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["ZondIdBak2"] as? String {
            self.zondIdBak2 = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
        if let value = dict["ZoneIdBak"] as? String {
            self.zoneIdBak = value
        }
    }
}

public class CreateDBInstanceResponseBody : Tea.TeaModel {
    public var DBClusterId: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
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
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
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

public class CreateMonitorDataReportRequest : Tea.TeaModel {
    public var DBClusterId: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
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
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
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

public class CreateMonitorDataReportResponseBody : Tea.TeaModel {
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

public class CreateMonitorDataReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMonitorDataReportResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateMonitorDataReportResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateOSSStorageRequest : Tea.TeaModel {
    public var DBClusterId: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
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
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
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

public class CreateOSSStorageResponseBody : Tea.TeaModel {
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

public class CreateOSSStorageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateOSSStorageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateOSSStorageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePortsForClickHouseRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var portType: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.portType != nil {
            map["PortType"] = self.portType!
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
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PortType"] as? String {
            self.portType = value
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

public class CreatePortsForClickHouseResponseBody : Tea.TeaModel {
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

public class CreatePortsForClickHouseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePortsForClickHouseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreatePortsForClickHouseResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateRDSToClickhouseDbRequest : Tea.TeaModel {
    public var ckPassword: String?

    public var ckUserName: String?

    public var clickhousePort: Int64?

    public var dbClusterId: String?

    public var limitUpper: Int64?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var rdsId: String?

    public var rdsPassword: String?

    public var rdsPort: Int64?

    public var rdsUserName: String?

    public var rdsVpcId: String?

    public var rdsVpcUrl: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var skipUnsupported: Bool?

    public var synDbTables: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ckPassword != nil {
            map["CkPassword"] = self.ckPassword!
        }
        if self.ckUserName != nil {
            map["CkUserName"] = self.ckUserName!
        }
        if self.clickhousePort != nil {
            map["ClickhousePort"] = self.clickhousePort!
        }
        if self.dbClusterId != nil {
            map["DbClusterId"] = self.dbClusterId!
        }
        if self.limitUpper != nil {
            map["LimitUpper"] = self.limitUpper!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.rdsId != nil {
            map["RdsId"] = self.rdsId!
        }
        if self.rdsPassword != nil {
            map["RdsPassword"] = self.rdsPassword!
        }
        if self.rdsPort != nil {
            map["RdsPort"] = self.rdsPort!
        }
        if self.rdsUserName != nil {
            map["RdsUserName"] = self.rdsUserName!
        }
        if self.rdsVpcId != nil {
            map["RdsVpcId"] = self.rdsVpcId!
        }
        if self.rdsVpcUrl != nil {
            map["RdsVpcUrl"] = self.rdsVpcUrl!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.skipUnsupported != nil {
            map["SkipUnsupported"] = self.skipUnsupported!
        }
        if self.synDbTables != nil {
            map["SynDbTables"] = self.synDbTables!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CkPassword"] as? String {
            self.ckPassword = value
        }
        if let value = dict["CkUserName"] as? String {
            self.ckUserName = value
        }
        if let value = dict["ClickhousePort"] as? Int64 {
            self.clickhousePort = value
        }
        if let value = dict["DbClusterId"] as? String {
            self.dbClusterId = value
        }
        if let value = dict["LimitUpper"] as? Int64 {
            self.limitUpper = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RdsId"] as? String {
            self.rdsId = value
        }
        if let value = dict["RdsPassword"] as? String {
            self.rdsPassword = value
        }
        if let value = dict["RdsPort"] as? Int64 {
            self.rdsPort = value
        }
        if let value = dict["RdsUserName"] as? String {
            self.rdsUserName = value
        }
        if let value = dict["RdsVpcId"] as? String {
            self.rdsVpcId = value
        }
        if let value = dict["RdsVpcUrl"] as? String {
            self.rdsVpcUrl = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SkipUnsupported"] as? Bool {
            self.skipUnsupported = value
        }
        if let value = dict["SynDbTables"] as? String {
            self.synDbTables = value
        }
    }
}

public class CreateRDSToClickhouseDbResponseBody : Tea.TeaModel {
    public var errorMsg: String?

    public var repeatedDbs: [String]?

    public var requestId: String?

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
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.repeatedDbs != nil {
            map["RepeatedDbs"] = self.repeatedDbs!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["RepeatedDbs"] as? [String] {
            self.repeatedDbs = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? Int64 {
            self.status = value
        }
    }
}

public class CreateRDSToClickhouseDbResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRDSToClickhouseDbResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateRDSToClickhouseDbResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSLBRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var product: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.product != nil {
            map["Product"] = self.product!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["Product"] as? String {
            self.product = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class CreateSLBResponseBody : Tea.TeaModel {
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

public class CreateSLBResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSLBResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateSLBResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSQLAccountRequest : Tea.TeaModel {
    public var accountDescription: String?

    public var accountName: String?

    public var accountPassword: String?

    public var accountType: String?

    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

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
        if self.accountDescription != nil {
            map["AccountDescription"] = self.accountDescription!
        }
        if self.accountName != nil {
            map["AccountName"] = self.accountName!
        }
        if self.accountPassword != nil {
            map["AccountPassword"] = self.accountPassword!
        }
        if self.accountType != nil {
            map["AccountType"] = self.accountType!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        if let value = dict["AccountDescription"] as? String {
            self.accountDescription = value
        }
        if let value = dict["AccountName"] as? String {
            self.accountName = value
        }
        if let value = dict["AccountPassword"] as? String {
            self.accountPassword = value
        }
        if let value = dict["AccountType"] as? String {
            self.accountType = value
        }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class CreateSQLAccountResponseBody : Tea.TeaModel {
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

public class CreateSQLAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSQLAccountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateSQLAccountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateServiceLinkedRoleRequest : Tea.TeaModel {
    public var ownerAccount: String?

    public var ownerId: Int64?

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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class CreateServiceLinkedRoleResponseBody : Tea.TeaModel {
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

public class CreateServiceLinkedRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateServiceLinkedRoleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateServiceLinkedRoleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAccountRequest : Tea.TeaModel {
    public var accountName: String?

    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

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
        if self.accountName != nil {
            map["AccountName"] = self.accountName!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        if let value = dict["AccountName"] as? String {
            self.accountName = value
        }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class DeleteAccountResponseBody : Tea.TeaModel {
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

public class DeleteBackupPolicyRequest : Tea.TeaModel {
    public var clientToken: String?

    public var DBClusterId: String?

    public var maxResults: Int32?

    public var product: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.product != nil {
            map["Product"] = self.product!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["Product"] as? String {
            self.product = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class DeleteBackupPolicyResponseBody : Tea.TeaModel {
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

public class DeleteBackupPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteBackupPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteBackupPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDBClusterRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class DeleteDBClusterResponseBody : Tea.TeaModel {
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

public class DeleteDBClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDBClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteDBClusterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteSLBRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var product: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.product != nil {
            map["Product"] = self.product!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["Product"] as? String {
            self.product = value
        }
    }
}

public class DeleteSLBResponseBody : Tea.TeaModel {
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

public class DeleteSLBResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSLBResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteSLBResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteSyndbRequest : Tea.TeaModel {
    public var dbClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var synDb: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbClusterId != nil {
            map["DbClusterId"] = self.dbClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.synDb != nil {
            map["SynDb"] = self.synDb!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbClusterId"] as? String {
            self.dbClusterId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SynDb"] as? String {
            self.synDb = value
        }
    }
}

public class DeleteSyndbResponseBody : Tea.TeaModel {
    public var errorCode: Int64?

    public var errorMsg: String?

    public var requestId: String?

    public var status: Bool?

    public override init() {
        super.init()
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
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrorCode"] as? Int64 {
            self.errorCode = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? Bool {
            self.status = value
        }
    }
}

public class DeleteSyndbResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSyndbResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteSyndbResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAccountAuthorityRequest : Tea.TeaModel {
    public var accountName: String?

    public var DBClusterId: String?

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
        if self.accountName != nil {
            map["AccountName"] = self.accountName!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
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
        if let value = dict["AccountName"] as? String {
            self.accountName = value
        }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
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

public class DescribeAccountAuthorityResponseBody : Tea.TeaModel {
    public var accountName: String?

    public var allowDatabases: [String]?

    public var allowDictionaries: [String]?

    public var ddlAuthority: Bool?

    public var dmlAuthority: String?

    public var requestId: String?

    public var totalDatabases: [String]?

    public var totalDictionaries: [String]?

    public override init() {
        super.init()
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
        if self.allowDatabases != nil {
            map["AllowDatabases"] = self.allowDatabases!
        }
        if self.allowDictionaries != nil {
            map["AllowDictionaries"] = self.allowDictionaries!
        }
        if self.ddlAuthority != nil {
            map["DdlAuthority"] = self.ddlAuthority!
        }
        if self.dmlAuthority != nil {
            map["DmlAuthority"] = self.dmlAuthority!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalDatabases != nil {
            map["TotalDatabases"] = self.totalDatabases!
        }
        if self.totalDictionaries != nil {
            map["TotalDictionaries"] = self.totalDictionaries!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountName"] as? String {
            self.accountName = value
        }
        if let value = dict["AllowDatabases"] as? [String] {
            self.allowDatabases = value
        }
        if let value = dict["AllowDictionaries"] as? [String] {
            self.allowDictionaries = value
        }
        if let value = dict["DdlAuthority"] as? Bool {
            self.ddlAuthority = value
        }
        if let value = dict["DmlAuthority"] as? String {
            self.dmlAuthority = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalDatabases"] as? [String] {
            self.totalDatabases = value
        }
        if let value = dict["TotalDictionaries"] as? [String] {
            self.totalDictionaries = value
        }
    }
}

public class DescribeAccountAuthorityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAccountAuthorityResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeAccountAuthorityResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAccountsRequest : Tea.TeaModel {
    public var accountName: String?

    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.accountName != nil {
            map["AccountName"] = self.accountName!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
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
        if let value = dict["AccountName"] as? String {
            self.accountName = value
        }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
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
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class DescribeAccountsResponseBody : Tea.TeaModel {
    public class Accounts : Tea.TeaModel {
        public class Account : Tea.TeaModel {
            public var accountDescription: String?

            public var accountName: String?

            public var accountStatus: String?

            public var accountType: String?

            public var configType: String?

            public override init() {
                super.init()
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
                if self.accountStatus != nil {
                    map["AccountStatus"] = self.accountStatus!
                }
                if self.accountType != nil {
                    map["AccountType"] = self.accountType!
                }
                if self.configType != nil {
                    map["ConfigType"] = self.configType!
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
                if let value = dict["AccountStatus"] as? String {
                    self.accountStatus = value
                }
                if let value = dict["AccountType"] as? String {
                    self.accountType = value
                }
                if let value = dict["ConfigType"] as? String {
                    self.configType = value
                }
            }
        }
        public var account: [DescribeAccountsResponseBody.Accounts.Account]?

        public override init() {
            super.init()
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
                var tmp : [Any] = []
                for k in self.account! {
                    tmp.append(k.toMap())
                }
                map["Account"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Account"] as? [Any?] {
                var tmp : [DescribeAccountsResponseBody.Accounts.Account] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAccountsResponseBody.Accounts.Account()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.account = tmp
            }
        }
    }
    public var accounts: DescribeAccountsResponseBody.Accounts?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accounts?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accounts != nil {
            map["Accounts"] = self.accounts?.toMap()
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Accounts"] as? [String: Any?] {
            var model = DescribeAccountsResponseBody.Accounts()
            model.fromMap(value)
            self.accounts = model
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
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeAccountsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAccountsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeAccountsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeActiveOperationMaintainConfRequest : Tea.TeaModel {
    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var securityToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
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
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
        }
    }
    public var config: DescribeActiveOperationMaintainConfResponseBody.Config?

    public var hasConfig: Int32?

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
        if let value = dict["HasConfig"] as? Int32 {
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

public class DescribeActiveOperationTasksRequest : Tea.TeaModel {
    public var allowCancel: Int32?

    public var allowChange: Int32?

    public var changeLevel: String?

    public var dbType: String?

    public var insName: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var productId: String?

    public var region: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var securityToken: String?

    public var status: Int32?

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
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
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
        if let value = dict["AllowCancel"] as? Int32 {
            self.allowCancel = value
        }
        if let value = dict["AllowChange"] as? Int32 {
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
        if let value = dict["ProductId"] as? String {
            self.productId = value
        }
        if let value = dict["Region"] as? String {
            self.region = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
        if let value = dict["Status"] as? Int32 {
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

        public var id: Int32?

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

        public var status: Int32?

        public var subInsNames: [String]?

        public var switchTime: String?

        public var taskParams: String?

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
            if self.taskParams != nil {
                map["TaskParams"] = self.taskParams!
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
            if let value = dict["Id"] as? Int32 {
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
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
            if let value = dict["SubInsNames"] as? [String] {
                self.subInsNames = value
            }
            if let value = dict["SwitchTime"] as? String {
                self.switchTime = value
            }
            if let value = dict["TaskParams"] as? String {
                self.taskParams = value
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

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalRecordCount"] as? Int32 {
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

public class DescribeAllDataSourceRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var schemaName: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.schemaName != nil {
            map["SchemaName"] = self.schemaName!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SchemaName"] as? String {
            self.schemaName = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class DescribeAllDataSourceResponseBody : Tea.TeaModel {
    public class Columns : Tea.TeaModel {
        public class Column : Tea.TeaModel {
            public var autoIncrementColumn: Bool?

            public var columnName: String?

            public var DBClusterId: String?

            public var primaryKey: Bool?

            public var schemaName: String?

            public var tableName: String?

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
                if self.autoIncrementColumn != nil {
                    map["AutoIncrementColumn"] = self.autoIncrementColumn!
                }
                if self.columnName != nil {
                    map["ColumnName"] = self.columnName!
                }
                if self.DBClusterId != nil {
                    map["DBClusterId"] = self.DBClusterId!
                }
                if self.primaryKey != nil {
                    map["PrimaryKey"] = self.primaryKey!
                }
                if self.schemaName != nil {
                    map["SchemaName"] = self.schemaName!
                }
                if self.tableName != nil {
                    map["TableName"] = self.tableName!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AutoIncrementColumn"] as? Bool {
                    self.autoIncrementColumn = value
                }
                if let value = dict["ColumnName"] as? String {
                    self.columnName = value
                }
                if let value = dict["DBClusterId"] as? String {
                    self.DBClusterId = value
                }
                if let value = dict["PrimaryKey"] as? Bool {
                    self.primaryKey = value
                }
                if let value = dict["SchemaName"] as? String {
                    self.schemaName = value
                }
                if let value = dict["TableName"] as? String {
                    self.tableName = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public var column: [DescribeAllDataSourceResponseBody.Columns.Column]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.column != nil {
                var tmp : [Any] = []
                for k in self.column! {
                    tmp.append(k.toMap())
                }
                map["Column"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Column"] as? [Any?] {
                var tmp : [DescribeAllDataSourceResponseBody.Columns.Column] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAllDataSourceResponseBody.Columns.Column()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.column = tmp
            }
        }
    }
    public class Schemas : Tea.TeaModel {
        public class Schema : Tea.TeaModel {
            public var DBClusterId: String?

            public var schemaName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.DBClusterId != nil {
                    map["DBClusterId"] = self.DBClusterId!
                }
                if self.schemaName != nil {
                    map["SchemaName"] = self.schemaName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DBClusterId"] as? String {
                    self.DBClusterId = value
                }
                if let value = dict["SchemaName"] as? String {
                    self.schemaName = value
                }
            }
        }
        public var schema: [DescribeAllDataSourceResponseBody.Schemas.Schema]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.schema != nil {
                var tmp : [Any] = []
                for k in self.schema! {
                    tmp.append(k.toMap())
                }
                map["Schema"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Schema"] as? [Any?] {
                var tmp : [DescribeAllDataSourceResponseBody.Schemas.Schema] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAllDataSourceResponseBody.Schemas.Schema()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.schema = tmp
            }
        }
    }
    public class Tables : Tea.TeaModel {
        public class Table : Tea.TeaModel {
            public var DBClusterId: String?

            public var schemaName: String?

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
                if self.DBClusterId != nil {
                    map["DBClusterId"] = self.DBClusterId!
                }
                if self.schemaName != nil {
                    map["SchemaName"] = self.schemaName!
                }
                if self.tableName != nil {
                    map["TableName"] = self.tableName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DBClusterId"] as? String {
                    self.DBClusterId = value
                }
                if let value = dict["SchemaName"] as? String {
                    self.schemaName = value
                }
                if let value = dict["TableName"] as? String {
                    self.tableName = value
                }
            }
        }
        public var table: [DescribeAllDataSourceResponseBody.Tables.Table]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.table != nil {
                var tmp : [Any] = []
                for k in self.table! {
                    tmp.append(k.toMap())
                }
                map["Table"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Table"] as? [Any?] {
                var tmp : [DescribeAllDataSourceResponseBody.Tables.Table] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAllDataSourceResponseBody.Tables.Table()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.table = tmp
            }
        }
    }
    public var columns: DescribeAllDataSourceResponseBody.Columns?

    public var requestId: String?

    public var schemas: DescribeAllDataSourceResponseBody.Schemas?

    public var tables: DescribeAllDataSourceResponseBody.Tables?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.columns?.validate()
        try self.schemas?.validate()
        try self.tables?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.columns != nil {
            map["Columns"] = self.columns?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.schemas != nil {
            map["Schemas"] = self.schemas?.toMap()
        }
        if self.tables != nil {
            map["Tables"] = self.tables?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Columns"] as? [String: Any?] {
            var model = DescribeAllDataSourceResponseBody.Columns()
            model.fromMap(value)
            self.columns = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Schemas"] as? [String: Any?] {
            var model = DescribeAllDataSourceResponseBody.Schemas()
            model.fromMap(value)
            self.schemas = model
        }
        if let value = dict["Tables"] as? [String: Any?] {
            var model = DescribeAllDataSourceResponseBody.Tables()
            model.fromMap(value)
            self.tables = model
        }
    }
}

public class DescribeAllDataSourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAllDataSourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeAllDataSourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAllDataSourcesRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var schemaName: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.schemaName != nil {
            map["SchemaName"] = self.schemaName!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SchemaName"] as? String {
            self.schemaName = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class DescribeAllDataSourcesResponseBody : Tea.TeaModel {
    public class Columns : Tea.TeaModel {
        public class Column : Tea.TeaModel {
            public var autoIncrementColumn: Bool?

            public var columnName: String?

            public var DBClusterId: String?

            public var primaryKey: Bool?

            public var schemaName: String?

            public var tableName: String?

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
                if self.autoIncrementColumn != nil {
                    map["AutoIncrementColumn"] = self.autoIncrementColumn!
                }
                if self.columnName != nil {
                    map["ColumnName"] = self.columnName!
                }
                if self.DBClusterId != nil {
                    map["DBClusterId"] = self.DBClusterId!
                }
                if self.primaryKey != nil {
                    map["PrimaryKey"] = self.primaryKey!
                }
                if self.schemaName != nil {
                    map["SchemaName"] = self.schemaName!
                }
                if self.tableName != nil {
                    map["TableName"] = self.tableName!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AutoIncrementColumn"] as? Bool {
                    self.autoIncrementColumn = value
                }
                if let value = dict["ColumnName"] as? String {
                    self.columnName = value
                }
                if let value = dict["DBClusterId"] as? String {
                    self.DBClusterId = value
                }
                if let value = dict["PrimaryKey"] as? Bool {
                    self.primaryKey = value
                }
                if let value = dict["SchemaName"] as? String {
                    self.schemaName = value
                }
                if let value = dict["TableName"] as? String {
                    self.tableName = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public var column: [DescribeAllDataSourcesResponseBody.Columns.Column]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.column != nil {
                var tmp : [Any] = []
                for k in self.column! {
                    tmp.append(k.toMap())
                }
                map["Column"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Column"] as? [Any?] {
                var tmp : [DescribeAllDataSourcesResponseBody.Columns.Column] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAllDataSourcesResponseBody.Columns.Column()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.column = tmp
            }
        }
    }
    public class Schemas : Tea.TeaModel {
        public class Schema : Tea.TeaModel {
            public var DBClusterId: String?

            public var schemaName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.DBClusterId != nil {
                    map["DBClusterId"] = self.DBClusterId!
                }
                if self.schemaName != nil {
                    map["SchemaName"] = self.schemaName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DBClusterId"] as? String {
                    self.DBClusterId = value
                }
                if let value = dict["SchemaName"] as? String {
                    self.schemaName = value
                }
            }
        }
        public var schema: [DescribeAllDataSourcesResponseBody.Schemas.Schema]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.schema != nil {
                var tmp : [Any] = []
                for k in self.schema! {
                    tmp.append(k.toMap())
                }
                map["Schema"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Schema"] as? [Any?] {
                var tmp : [DescribeAllDataSourcesResponseBody.Schemas.Schema] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAllDataSourcesResponseBody.Schemas.Schema()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.schema = tmp
            }
        }
    }
    public class Tables : Tea.TeaModel {
        public class Table : Tea.TeaModel {
            public var DBClusterId: String?

            public var schemaName: String?

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
                if self.DBClusterId != nil {
                    map["DBClusterId"] = self.DBClusterId!
                }
                if self.schemaName != nil {
                    map["SchemaName"] = self.schemaName!
                }
                if self.tableName != nil {
                    map["TableName"] = self.tableName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DBClusterId"] as? String {
                    self.DBClusterId = value
                }
                if let value = dict["SchemaName"] as? String {
                    self.schemaName = value
                }
                if let value = dict["TableName"] as? String {
                    self.tableName = value
                }
            }
        }
        public var table: [DescribeAllDataSourcesResponseBody.Tables.Table]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.table != nil {
                var tmp : [Any] = []
                for k in self.table! {
                    tmp.append(k.toMap())
                }
                map["Table"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Table"] as? [Any?] {
                var tmp : [DescribeAllDataSourcesResponseBody.Tables.Table] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAllDataSourcesResponseBody.Tables.Table()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.table = tmp
            }
        }
    }
    public var columns: DescribeAllDataSourcesResponseBody.Columns?

    public var requestId: String?

    public var schemas: DescribeAllDataSourcesResponseBody.Schemas?

    public var tables: DescribeAllDataSourcesResponseBody.Tables?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.columns?.validate()
        try self.schemas?.validate()
        try self.tables?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.columns != nil {
            map["Columns"] = self.columns?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.schemas != nil {
            map["Schemas"] = self.schemas?.toMap()
        }
        if self.tables != nil {
            map["Tables"] = self.tables?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Columns"] as? [String: Any?] {
            var model = DescribeAllDataSourcesResponseBody.Columns()
            model.fromMap(value)
            self.columns = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Schemas"] as? [String: Any?] {
            var model = DescribeAllDataSourcesResponseBody.Schemas()
            model.fromMap(value)
            self.schemas = model
        }
        if let value = dict["Tables"] as? [String: Any?] {
            var model = DescribeAllDataSourcesResponseBody.Tables()
            model.fromMap(value)
            self.tables = model
        }
    }
}

public class DescribeAllDataSourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAllDataSourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeAllDataSourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAutoRenewAttributeRequest : Tea.TeaModel {
    public var DBClusterIds: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.DBClusterIds != nil {
            map["DBClusterIds"] = self.DBClusterIds!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusterIds"] as? String {
            self.DBClusterIds = value
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
    }
}

public class DescribeAutoRenewAttributeResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class AutoRenewAttribute : Tea.TeaModel {
            public var autoRenewEnabled: Bool?

            public var DBClusterId: String?

            public var duration: Int32?

            public var periodUnit: String?

            public var regionId: String?

            public var renewalStatus: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.autoRenewEnabled != nil {
                    map["AutoRenewEnabled"] = self.autoRenewEnabled!
                }
                if self.DBClusterId != nil {
                    map["DBClusterId"] = self.DBClusterId!
                }
                if self.duration != nil {
                    map["Duration"] = self.duration!
                }
                if self.periodUnit != nil {
                    map["PeriodUnit"] = self.periodUnit!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.renewalStatus != nil {
                    map["RenewalStatus"] = self.renewalStatus!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AutoRenewEnabled"] as? Bool {
                    self.autoRenewEnabled = value
                }
                if let value = dict["DBClusterId"] as? String {
                    self.DBClusterId = value
                }
                if let value = dict["Duration"] as? Int32 {
                    self.duration = value
                }
                if let value = dict["PeriodUnit"] as? String {
                    self.periodUnit = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["RenewalStatus"] as? String {
                    self.renewalStatus = value
                }
            }
        }
        public var autoRenewAttribute: [DescribeAutoRenewAttributeResponseBody.Items.AutoRenewAttribute]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoRenewAttribute != nil {
                var tmp : [Any] = []
                for k in self.autoRenewAttribute! {
                    tmp.append(k.toMap())
                }
                map["AutoRenewAttribute"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AutoRenewAttribute"] as? [Any?] {
                var tmp : [DescribeAutoRenewAttributeResponseBody.Items.AutoRenewAttribute] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAutoRenewAttributeResponseBody.Items.AutoRenewAttribute()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.autoRenewAttribute = tmp
            }
        }
    }
    public var items: DescribeAutoRenewAttributeResponseBody.Items?

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
        try self.items?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.items != nil {
            map["Items"] = self.items?.toMap()
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
        if let value = dict["Items"] as? [String: Any?] {
            var model = DescribeAutoRenewAttributeResponseBody.Items()
            model.fromMap(value)
            self.items = model
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

public class DescribeAutoRenewAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAutoRenewAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeAutoRenewAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeBackupPolicyRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class DescribeBackupPolicyResponseBody : Tea.TeaModel {
    public var backupRetentionPeriod: Int32?

    public var backupSize: String?

    public var preferredBackupPeriod: String?

    public var preferredBackupTime: String?

    public var requestId: String?

    public var switch_: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backupRetentionPeriod != nil {
            map["BackupRetentionPeriod"] = self.backupRetentionPeriod!
        }
        if self.backupSize != nil {
            map["BackupSize"] = self.backupSize!
        }
        if self.preferredBackupPeriod != nil {
            map["PreferredBackupPeriod"] = self.preferredBackupPeriod!
        }
        if self.preferredBackupTime != nil {
            map["PreferredBackupTime"] = self.preferredBackupTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.switch_ != nil {
            map["Switch"] = self.switch_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupRetentionPeriod"] as? Int32 {
            self.backupRetentionPeriod = value
        }
        if let value = dict["BackupSize"] as? String {
            self.backupSize = value
        }
        if let value = dict["PreferredBackupPeriod"] as? String {
            self.preferredBackupPeriod = value
        }
        if let value = dict["PreferredBackupTime"] as? String {
            self.preferredBackupTime = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Switch"] as? String {
            self.switch_ = value
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

public class DescribeBackupsRequest : Tea.TeaModel {
    public var backupId: String?

    public var DBClusterId: String?

    public var endTime: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.backupId != nil {
            map["BackupId"] = self.backupId!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
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
        if let value = dict["BackupId"] as? String {
            self.backupId = value
        }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
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

public class DescribeBackupsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var backupEndTime: String?

        public var backupId: String?

        public var backupMethod: String?

        public var backupSetInfo: String?

        public var backupSize: Int64?

        public var backupStartTime: String?

        public var backupStatus: String?

        public var backupType: String?

        public var DBClusterId: String?

        public var expireDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backupEndTime != nil {
                map["BackupEndTime"] = self.backupEndTime!
            }
            if self.backupId != nil {
                map["BackupId"] = self.backupId!
            }
            if self.backupMethod != nil {
                map["BackupMethod"] = self.backupMethod!
            }
            if self.backupSetInfo != nil {
                map["BackupSetInfo"] = self.backupSetInfo!
            }
            if self.backupSize != nil {
                map["BackupSize"] = self.backupSize!
            }
            if self.backupStartTime != nil {
                map["BackupStartTime"] = self.backupStartTime!
            }
            if self.backupStatus != nil {
                map["BackupStatus"] = self.backupStatus!
            }
            if self.backupType != nil {
                map["BackupType"] = self.backupType!
            }
            if self.DBClusterId != nil {
                map["DBClusterId"] = self.DBClusterId!
            }
            if self.expireDate != nil {
                map["ExpireDate"] = self.expireDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackupEndTime"] as? String {
                self.backupEndTime = value
            }
            if let value = dict["BackupId"] as? String {
                self.backupId = value
            }
            if let value = dict["BackupMethod"] as? String {
                self.backupMethod = value
            }
            if let value = dict["BackupSetInfo"] as? String {
                self.backupSetInfo = value
            }
            if let value = dict["BackupSize"] as? Int64 {
                self.backupSize = value
            }
            if let value = dict["BackupStartTime"] as? String {
                self.backupStartTime = value
            }
            if let value = dict["BackupStatus"] as? String {
                self.backupStatus = value
            }
            if let value = dict["BackupType"] as? String {
                self.backupType = value
            }
            if let value = dict["DBClusterId"] as? String {
                self.DBClusterId = value
            }
            if let value = dict["ExpireDate"] as? String {
                self.expireDate = value
            }
        }
    }
    public var items: [DescribeBackupsResponseBody.Items]?

    public var pageNumber: String?

    public var pageSize: String?

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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [DescribeBackupsResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = DescribeBackupsResponseBody.Items()
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
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? String {
            self.totalCount = value
        }
    }
}

public class DescribeBackupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBackupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeBackupsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeColumnsRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var schemaName: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.schemaName != nil {
            map["SchemaName"] = self.schemaName!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SchemaName"] as? String {
            self.schemaName = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class DescribeColumnsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class Column : Tea.TeaModel {
            public var autoIncrementColumn: Bool?

            public var columnName: String?

            public var DBClusterId: String?

            public var primaryKey: Bool?

            public var schemaName: String?

            public var tableName: String?

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
                if self.autoIncrementColumn != nil {
                    map["AutoIncrementColumn"] = self.autoIncrementColumn!
                }
                if self.columnName != nil {
                    map["ColumnName"] = self.columnName!
                }
                if self.DBClusterId != nil {
                    map["DBClusterId"] = self.DBClusterId!
                }
                if self.primaryKey != nil {
                    map["PrimaryKey"] = self.primaryKey!
                }
                if self.schemaName != nil {
                    map["SchemaName"] = self.schemaName!
                }
                if self.tableName != nil {
                    map["TableName"] = self.tableName!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AutoIncrementColumn"] as? Bool {
                    self.autoIncrementColumn = value
                }
                if let value = dict["ColumnName"] as? String {
                    self.columnName = value
                }
                if let value = dict["DBClusterId"] as? String {
                    self.DBClusterId = value
                }
                if let value = dict["PrimaryKey"] as? Bool {
                    self.primaryKey = value
                }
                if let value = dict["SchemaName"] as? String {
                    self.schemaName = value
                }
                if let value = dict["TableName"] as? String {
                    self.tableName = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
            }
        }
        public var column: [DescribeColumnsResponseBody.Items.Column]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.column != nil {
                var tmp : [Any] = []
                for k in self.column! {
                    tmp.append(k.toMap())
                }
                map["Column"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Column"] as? [Any?] {
                var tmp : [DescribeColumnsResponseBody.Items.Column] = []
                for v in value {
                    if v != nil {
                        var model = DescribeColumnsResponseBody.Items.Column()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.column = tmp
            }
        }
    }
    public var items: DescribeColumnsResponseBody.Items?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.items?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.items != nil {
            map["Items"] = self.items?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Items"] as? [String: Any?] {
            var model = DescribeColumnsResponseBody.Items()
            model.fromMap(value)
            self.items = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeColumnsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeColumnsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeColumnsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeConfigHistoryRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var endTime: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class DescribeConfigHistoryResponseBody : Tea.TeaModel {
    public class ConfigHistoryItems : Tea.TeaModel {
        public var changeId: String?

        public var ownerId: String?

        public var reason: String?

        public var success: Bool?

        public var time: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.changeId != nil {
                map["ChangeId"] = self.changeId!
            }
            if self.ownerId != nil {
                map["OwnerId"] = self.ownerId!
            }
            if self.reason != nil {
                map["Reason"] = self.reason!
            }
            if self.success != nil {
                map["Success"] = self.success!
            }
            if self.time != nil {
                map["Time"] = self.time!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ChangeId"] as? String {
                self.changeId = value
            }
            if let value = dict["OwnerId"] as? String {
                self.ownerId = value
            }
            if let value = dict["Reason"] as? String {
                self.reason = value
            }
            if let value = dict["Success"] as? Bool {
                self.success = value
            }
            if let value = dict["Time"] as? String {
                self.time = value
            }
        }
    }
    public var configHistoryItems: [DescribeConfigHistoryResponseBody.ConfigHistoryItems]?

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
        if self.configHistoryItems != nil {
            var tmp : [Any] = []
            for k in self.configHistoryItems! {
                tmp.append(k.toMap())
            }
            map["ConfigHistoryItems"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConfigHistoryItems"] as? [Any?] {
            var tmp : [DescribeConfigHistoryResponseBody.ConfigHistoryItems] = []
            for v in value {
                if v != nil {
                    var model = DescribeConfigHistoryResponseBody.ConfigHistoryItems()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.configHistoryItems = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeConfigHistoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeConfigHistoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeConfigHistoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeConfigVersionDifferenceRequest : Tea.TeaModel {
    public var changeId: String?

    public var DBClusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.changeId != nil {
            map["ChangeId"] = self.changeId!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChangeId"] as? String {
            self.changeId = value
        }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
    }
}

public class DescribeConfigVersionDifferenceResponseBody : Tea.TeaModel {
    public var newConfigXML: String?

    public var oldConfigXML: String?

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
        if self.newConfigXML != nil {
            map["NewConfigXML"] = self.newConfigXML!
        }
        if self.oldConfigXML != nil {
            map["OldConfigXML"] = self.oldConfigXML!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NewConfigXML"] as? String {
            self.newConfigXML = value
        }
        if let value = dict["OldConfigXML"] as? String {
            self.oldConfigXML = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeConfigVersionDifferenceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeConfigVersionDifferenceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeConfigVersionDifferenceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDBClusterAccessWhiteListRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class DescribeDBClusterAccessWhiteListResponseBody : Tea.TeaModel {
    public class DBClusterAccessWhiteList : Tea.TeaModel {
        public class IPArray : Tea.TeaModel {
            public var DBClusterIPArrayAttribute: String?

            public var DBClusterIPArrayName: String?

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
                if self.DBClusterIPArrayAttribute != nil {
                    map["DBClusterIPArrayAttribute"] = self.DBClusterIPArrayAttribute!
                }
                if self.DBClusterIPArrayName != nil {
                    map["DBClusterIPArrayName"] = self.DBClusterIPArrayName!
                }
                if self.securityIPList != nil {
                    map["SecurityIPList"] = self.securityIPList!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DBClusterIPArrayAttribute"] as? String {
                    self.DBClusterIPArrayAttribute = value
                }
                if let value = dict["DBClusterIPArrayName"] as? String {
                    self.DBClusterIPArrayName = value
                }
                if let value = dict["SecurityIPList"] as? String {
                    self.securityIPList = value
                }
            }
        }
        public var IPArray: [DescribeDBClusterAccessWhiteListResponseBody.DBClusterAccessWhiteList.IPArray]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.IPArray != nil {
                var tmp : [Any] = []
                for k in self.IPArray! {
                    tmp.append(k.toMap())
                }
                map["IPArray"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IPArray"] as? [Any?] {
                var tmp : [DescribeDBClusterAccessWhiteListResponseBody.DBClusterAccessWhiteList.IPArray] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDBClusterAccessWhiteListResponseBody.DBClusterAccessWhiteList.IPArray()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.IPArray = tmp
            }
        }
    }
    public var DBClusterAccessWhiteList: DescribeDBClusterAccessWhiteListResponseBody.DBClusterAccessWhiteList?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.DBClusterAccessWhiteList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterAccessWhiteList != nil {
            map["DBClusterAccessWhiteList"] = self.DBClusterAccessWhiteList?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusterAccessWhiteList"] as? [String: Any?] {
            var model = DescribeDBClusterAccessWhiteListResponseBody.DBClusterAccessWhiteList()
            model.fromMap(value)
            self.DBClusterAccessWhiteList = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeDBClusterAccessWhiteListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBClusterAccessWhiteListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDBClusterAccessWhiteListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDBClusterAttributeRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class DescribeDBClusterAttributeResponseBody : Tea.TeaModel {
    public class DBCluster : Tea.TeaModel {
        public class ScaleOutStatus : Tea.TeaModel {
            public var progress: String?

            public var ratio: String?

            public override init() {
                super.init()
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
                if self.ratio != nil {
                    map["Ratio"] = self.ratio!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Progress"] as? String {
                    self.progress = value
                }
                if let value = dict["Ratio"] as? String {
                    self.ratio = value
                }
            }
        }
        public class Tags : Tea.TeaModel {
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
            public var tag: [DescribeDBClusterAttributeResponseBody.DBCluster.Tags.Tag]?

            public override init() {
                super.init()
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
                    var tmp : [DescribeDBClusterAttributeResponseBody.DBCluster.Tags.Tag] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeDBClusterAttributeResponseBody.DBCluster.Tags.Tag()
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
        public var aliUid: String?

        public var appointmentElectZookeeperDisableWrite: Bool?

        public var appointmentElectZookeeperTime: String?

        public var appointmentRestartNodeList: String?

        public var appointmentRestartNodeTime: String?

        public var appointmentRestartTime: String?

        public var availableUpgradeMajorVersion: [String: Any]?

        public var bid: String?

        public var category: String?

        public var commodityCode: String?

        public var connectionString: String?

        public var controlVersion: String?

        public var createTime: String?

        public var DBClusterDescription: String?

        public var DBClusterId: String?

        public var DBClusterNetworkType: String?

        public var DBClusterStatus: String?

        public var DBClusterType: String?

        public var DBNodeClass: String?

        public var DBNodeCount: Int64?

        public var DBNodeStorage: Int64?

        public var encryptionKey: String?

        public var encryptionType: String?

        public var engine: String?

        public var engineLatestMinorVersion: String?

        public var engineMinorVersion: String?

        public var engineVersion: String?

        public var expireTime: String?

        public var extStorageSize: Int32?

        public var extStorageType: String?

        public var isExpired: String?

        public var lockMode: String?

        public var lockReason: String?

        public var maintainAutoType: Bool?

        public var maintainTime: String?

        public var payType: String?

        public var port: Int32?

        public var publicConnectionString: String?

        public var publicIpAddr: String?

        public var publicPort: String?

        public var regionId: String?

        public var resourceGroupId: String?

        public var scaleOutStatus: DescribeDBClusterAttributeResponseBody.DBCluster.ScaleOutStatus?

        public var storageType: String?

        public var supportBackup: Int32?

        public var supportHttpsPort: Bool?

        public var supportMysqlPort: Bool?

        public var supportOss: Int32?

        public var tags: DescribeDBClusterAttributeResponseBody.DBCluster.Tags?

        public var vSwitchId: String?

        public var vpcCloudInstanceId: String?

        public var vpcId: String?

        public var vpcIpAddr: String?

        public var zoneId: String?

        public var zoneIdVswitchMap: [String: Any]?

        public var zookeeperClass: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.scaleOutStatus?.validate()
            try self.tags?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliUid != nil {
                map["AliUid"] = self.aliUid!
            }
            if self.appointmentElectZookeeperDisableWrite != nil {
                map["AppointmentElectZookeeperDisableWrite"] = self.appointmentElectZookeeperDisableWrite!
            }
            if self.appointmentElectZookeeperTime != nil {
                map["AppointmentElectZookeeperTime"] = self.appointmentElectZookeeperTime!
            }
            if self.appointmentRestartNodeList != nil {
                map["AppointmentRestartNodeList"] = self.appointmentRestartNodeList!
            }
            if self.appointmentRestartNodeTime != nil {
                map["AppointmentRestartNodeTime"] = self.appointmentRestartNodeTime!
            }
            if self.appointmentRestartTime != nil {
                map["AppointmentRestartTime"] = self.appointmentRestartTime!
            }
            if self.availableUpgradeMajorVersion != nil {
                map["AvailableUpgradeMajorVersion"] = self.availableUpgradeMajorVersion!
            }
            if self.bid != nil {
                map["Bid"] = self.bid!
            }
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.commodityCode != nil {
                map["CommodityCode"] = self.commodityCode!
            }
            if self.connectionString != nil {
                map["ConnectionString"] = self.connectionString!
            }
            if self.controlVersion != nil {
                map["ControlVersion"] = self.controlVersion!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.DBClusterDescription != nil {
                map["DBClusterDescription"] = self.DBClusterDescription!
            }
            if self.DBClusterId != nil {
                map["DBClusterId"] = self.DBClusterId!
            }
            if self.DBClusterNetworkType != nil {
                map["DBClusterNetworkType"] = self.DBClusterNetworkType!
            }
            if self.DBClusterStatus != nil {
                map["DBClusterStatus"] = self.DBClusterStatus!
            }
            if self.DBClusterType != nil {
                map["DBClusterType"] = self.DBClusterType!
            }
            if self.DBNodeClass != nil {
                map["DBNodeClass"] = self.DBNodeClass!
            }
            if self.DBNodeCount != nil {
                map["DBNodeCount"] = self.DBNodeCount!
            }
            if self.DBNodeStorage != nil {
                map["DBNodeStorage"] = self.DBNodeStorage!
            }
            if self.encryptionKey != nil {
                map["EncryptionKey"] = self.encryptionKey!
            }
            if self.encryptionType != nil {
                map["EncryptionType"] = self.encryptionType!
            }
            if self.engine != nil {
                map["Engine"] = self.engine!
            }
            if self.engineLatestMinorVersion != nil {
                map["EngineLatestMinorVersion"] = self.engineLatestMinorVersion!
            }
            if self.engineMinorVersion != nil {
                map["EngineMinorVersion"] = self.engineMinorVersion!
            }
            if self.engineVersion != nil {
                map["EngineVersion"] = self.engineVersion!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.extStorageSize != nil {
                map["ExtStorageSize"] = self.extStorageSize!
            }
            if self.extStorageType != nil {
                map["ExtStorageType"] = self.extStorageType!
            }
            if self.isExpired != nil {
                map["IsExpired"] = self.isExpired!
            }
            if self.lockMode != nil {
                map["LockMode"] = self.lockMode!
            }
            if self.lockReason != nil {
                map["LockReason"] = self.lockReason!
            }
            if self.maintainAutoType != nil {
                map["MaintainAutoType"] = self.maintainAutoType!
            }
            if self.maintainTime != nil {
                map["MaintainTime"] = self.maintainTime!
            }
            if self.payType != nil {
                map["PayType"] = self.payType!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.publicConnectionString != nil {
                map["PublicConnectionString"] = self.publicConnectionString!
            }
            if self.publicIpAddr != nil {
                map["PublicIpAddr"] = self.publicIpAddr!
            }
            if self.publicPort != nil {
                map["PublicPort"] = self.publicPort!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.scaleOutStatus != nil {
                map["ScaleOutStatus"] = self.scaleOutStatus?.toMap()
            }
            if self.storageType != nil {
                map["StorageType"] = self.storageType!
            }
            if self.supportBackup != nil {
                map["SupportBackup"] = self.supportBackup!
            }
            if self.supportHttpsPort != nil {
                map["SupportHttpsPort"] = self.supportHttpsPort!
            }
            if self.supportMysqlPort != nil {
                map["SupportMysqlPort"] = self.supportMysqlPort!
            }
            if self.supportOss != nil {
                map["SupportOss"] = self.supportOss!
            }
            if self.tags != nil {
                map["Tags"] = self.tags?.toMap()
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            if self.vpcCloudInstanceId != nil {
                map["VpcCloudInstanceId"] = self.vpcCloudInstanceId!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.vpcIpAddr != nil {
                map["VpcIpAddr"] = self.vpcIpAddr!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            if self.zoneIdVswitchMap != nil {
                map["ZoneIdVswitchMap"] = self.zoneIdVswitchMap!
            }
            if self.zookeeperClass != nil {
                map["ZookeeperClass"] = self.zookeeperClass!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AliUid"] as? String {
                self.aliUid = value
            }
            if let value = dict["AppointmentElectZookeeperDisableWrite"] as? Bool {
                self.appointmentElectZookeeperDisableWrite = value
            }
            if let value = dict["AppointmentElectZookeeperTime"] as? String {
                self.appointmentElectZookeeperTime = value
            }
            if let value = dict["AppointmentRestartNodeList"] as? String {
                self.appointmentRestartNodeList = value
            }
            if let value = dict["AppointmentRestartNodeTime"] as? String {
                self.appointmentRestartNodeTime = value
            }
            if let value = dict["AppointmentRestartTime"] as? String {
                self.appointmentRestartTime = value
            }
            if let value = dict["AvailableUpgradeMajorVersion"] as? [String: Any] {
                self.availableUpgradeMajorVersion = value
            }
            if let value = dict["Bid"] as? String {
                self.bid = value
            }
            if let value = dict["Category"] as? String {
                self.category = value
            }
            if let value = dict["CommodityCode"] as? String {
                self.commodityCode = value
            }
            if let value = dict["ConnectionString"] as? String {
                self.connectionString = value
            }
            if let value = dict["ControlVersion"] as? String {
                self.controlVersion = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DBClusterDescription"] as? String {
                self.DBClusterDescription = value
            }
            if let value = dict["DBClusterId"] as? String {
                self.DBClusterId = value
            }
            if let value = dict["DBClusterNetworkType"] as? String {
                self.DBClusterNetworkType = value
            }
            if let value = dict["DBClusterStatus"] as? String {
                self.DBClusterStatus = value
            }
            if let value = dict["DBClusterType"] as? String {
                self.DBClusterType = value
            }
            if let value = dict["DBNodeClass"] as? String {
                self.DBNodeClass = value
            }
            if let value = dict["DBNodeCount"] as? Int64 {
                self.DBNodeCount = value
            }
            if let value = dict["DBNodeStorage"] as? Int64 {
                self.DBNodeStorage = value
            }
            if let value = dict["EncryptionKey"] as? String {
                self.encryptionKey = value
            }
            if let value = dict["EncryptionType"] as? String {
                self.encryptionType = value
            }
            if let value = dict["Engine"] as? String {
                self.engine = value
            }
            if let value = dict["EngineLatestMinorVersion"] as? String {
                self.engineLatestMinorVersion = value
            }
            if let value = dict["EngineMinorVersion"] as? String {
                self.engineMinorVersion = value
            }
            if let value = dict["EngineVersion"] as? String {
                self.engineVersion = value
            }
            if let value = dict["ExpireTime"] as? String {
                self.expireTime = value
            }
            if let value = dict["ExtStorageSize"] as? Int32 {
                self.extStorageSize = value
            }
            if let value = dict["ExtStorageType"] as? String {
                self.extStorageType = value
            }
            if let value = dict["IsExpired"] as? String {
                self.isExpired = value
            }
            if let value = dict["LockMode"] as? String {
                self.lockMode = value
            }
            if let value = dict["LockReason"] as? String {
                self.lockReason = value
            }
            if let value = dict["MaintainAutoType"] as? Bool {
                self.maintainAutoType = value
            }
            if let value = dict["MaintainTime"] as? String {
                self.maintainTime = value
            }
            if let value = dict["PayType"] as? String {
                self.payType = value
            }
            if let value = dict["Port"] as? Int32 {
                self.port = value
            }
            if let value = dict["PublicConnectionString"] as? String {
                self.publicConnectionString = value
            }
            if let value = dict["PublicIpAddr"] as? String {
                self.publicIpAddr = value
            }
            if let value = dict["PublicPort"] as? String {
                self.publicPort = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["ScaleOutStatus"] as? [String: Any?] {
                var model = DescribeDBClusterAttributeResponseBody.DBCluster.ScaleOutStatus()
                model.fromMap(value)
                self.scaleOutStatus = model
            }
            if let value = dict["StorageType"] as? String {
                self.storageType = value
            }
            if let value = dict["SupportBackup"] as? Int32 {
                self.supportBackup = value
            }
            if let value = dict["SupportHttpsPort"] as? Bool {
                self.supportHttpsPort = value
            }
            if let value = dict["SupportMysqlPort"] as? Bool {
                self.supportMysqlPort = value
            }
            if let value = dict["SupportOss"] as? Int32 {
                self.supportOss = value
            }
            if let value = dict["Tags"] as? [String: Any?] {
                var model = DescribeDBClusterAttributeResponseBody.DBCluster.Tags()
                model.fromMap(value)
                self.tags = model
            }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["VpcCloudInstanceId"] as? String {
                self.vpcCloudInstanceId = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
            if let value = dict["VpcIpAddr"] as? String {
                self.vpcIpAddr = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
            if let value = dict["ZoneIdVswitchMap"] as? [String: Any] {
                self.zoneIdVswitchMap = value
            }
            if let value = dict["ZookeeperClass"] as? String {
                self.zookeeperClass = value
            }
        }
    }
    public var DBCluster: DescribeDBClusterAttributeResponseBody.DBCluster?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.DBCluster?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBCluster != nil {
            map["DBCluster"] = self.DBCluster?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBCluster"] as? [String: Any?] {
            var model = DescribeDBClusterAttributeResponseBody.DBCluster()
            model.fromMap(value)
            self.DBCluster = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeDBClusterAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBClusterAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDBClusterAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDBClusterConfigRequest : Tea.TeaModel {
    public var DBClusterId: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
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
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
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

public class DescribeDBClusterConfigResponseBody : Tea.TeaModel {
    public var config: String?

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
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeDBClusterConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBClusterConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDBClusterConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDBClusterConfigInXMLRequest : Tea.TeaModel {
    public var DBClusterId: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeDBClusterConfigInXMLResponseBody : Tea.TeaModel {
    public var config: String?

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
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeDBClusterConfigInXMLResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBClusterConfigInXMLResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDBClusterConfigInXMLResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDBClusterNetInfoItemsRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class DescribeDBClusterNetInfoItemsResponseBody : Tea.TeaModel {
    public class NetInfoItems : Tea.TeaModel {
        public class NetInfoItem : Tea.TeaModel {
            public var connectionString: String?

            public var httpPort: String?

            public var httpsPort: String?

            public var IPAddress: String?

            public var jdbcPort: String?

            public var mySQLPort: String?

            public var netType: String?

            public var vSwitchId: String?

            public var vpcId: String?

            public override init() {
                super.init()
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
                if self.httpPort != nil {
                    map["HttpPort"] = self.httpPort!
                }
                if self.httpsPort != nil {
                    map["HttpsPort"] = self.httpsPort!
                }
                if self.IPAddress != nil {
                    map["IPAddress"] = self.IPAddress!
                }
                if self.jdbcPort != nil {
                    map["JdbcPort"] = self.jdbcPort!
                }
                if self.mySQLPort != nil {
                    map["MySQLPort"] = self.mySQLPort!
                }
                if self.netType != nil {
                    map["NetType"] = self.netType!
                }
                if self.vSwitchId != nil {
                    map["VSwitchId"] = self.vSwitchId!
                }
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ConnectionString"] as? String {
                    self.connectionString = value
                }
                if let value = dict["HttpPort"] as? String {
                    self.httpPort = value
                }
                if let value = dict["HttpsPort"] as? String {
                    self.httpsPort = value
                }
                if let value = dict["IPAddress"] as? String {
                    self.IPAddress = value
                }
                if let value = dict["JdbcPort"] as? String {
                    self.jdbcPort = value
                }
                if let value = dict["MySQLPort"] as? String {
                    self.mySQLPort = value
                }
                if let value = dict["NetType"] as? String {
                    self.netType = value
                }
                if let value = dict["VSwitchId"] as? String {
                    self.vSwitchId = value
                }
                if let value = dict["VpcId"] as? String {
                    self.vpcId = value
                }
            }
        }
        public var netInfoItem: [DescribeDBClusterNetInfoItemsResponseBody.NetInfoItems.NetInfoItem]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.netInfoItem != nil {
                var tmp : [Any] = []
                for k in self.netInfoItem! {
                    tmp.append(k.toMap())
                }
                map["NetInfoItem"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["NetInfoItem"] as? [Any?] {
                var tmp : [DescribeDBClusterNetInfoItemsResponseBody.NetInfoItems.NetInfoItem] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDBClusterNetInfoItemsResponseBody.NetInfoItems.NetInfoItem()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.netInfoItem = tmp
            }
        }
    }
    public var clusterNetworkType: String?

    public var enableSLB: Bool?

    public var netInfoItems: DescribeDBClusterNetInfoItemsResponseBody.NetInfoItems?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.netInfoItems?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterNetworkType != nil {
            map["ClusterNetworkType"] = self.clusterNetworkType!
        }
        if self.enableSLB != nil {
            map["EnableSLB"] = self.enableSLB!
        }
        if self.netInfoItems != nil {
            map["NetInfoItems"] = self.netInfoItems?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterNetworkType"] as? String {
            self.clusterNetworkType = value
        }
        if let value = dict["EnableSLB"] as? Bool {
            self.enableSLB = value
        }
        if let value = dict["NetInfoItems"] as? [String: Any?] {
            var model = DescribeDBClusterNetInfoItemsResponseBody.NetInfoItems()
            model.fromMap(value)
            self.netInfoItems = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeDBClusterNetInfoItemsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBClusterNetInfoItemsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDBClusterNetInfoItemsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDBClusterNodeInfosRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
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
    }
}

public class DescribeDBClusterNodeInfosResponseBody : Tea.TeaModel {
    public class NodeInfos : Tea.TeaModel {
        public var failoverTesting: Bool?

        public var nodeIp: String?

        public var nodeName: String?

        public var replicaId: String?

        public var shardId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.failoverTesting != nil {
                map["FailoverTesting"] = self.failoverTesting!
            }
            if self.nodeIp != nil {
                map["NodeIp"] = self.nodeIp!
            }
            if self.nodeName != nil {
                map["NodeName"] = self.nodeName!
            }
            if self.replicaId != nil {
                map["ReplicaId"] = self.replicaId!
            }
            if self.shardId != nil {
                map["ShardId"] = self.shardId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FailoverTesting"] as? Bool {
                self.failoverTesting = value
            }
            if let value = dict["NodeIp"] as? String {
                self.nodeIp = value
            }
            if let value = dict["NodeName"] as? String {
                self.nodeName = value
            }
            if let value = dict["ReplicaId"] as? String {
                self.replicaId = value
            }
            if let value = dict["ShardId"] as? String {
                self.shardId = value
            }
        }
    }
    public class ZkNodeInfos : Tea.TeaModel {
        public var failoverTesting: Bool?

        public var nodeName: String?

        public var replicaId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.failoverTesting != nil {
                map["FailoverTesting"] = self.failoverTesting!
            }
            if self.nodeName != nil {
                map["NodeName"] = self.nodeName!
            }
            if self.replicaId != nil {
                map["ReplicaId"] = self.replicaId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FailoverTesting"] as? Bool {
                self.failoverTesting = value
            }
            if let value = dict["NodeName"] as? String {
                self.nodeName = value
            }
            if let value = dict["ReplicaId"] as? String {
                self.replicaId = value
            }
        }
    }
    public var nodeInfos: [DescribeDBClusterNodeInfosResponseBody.NodeInfos]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalNodeCount: Int32?

    public var zkNodeInfos: [DescribeDBClusterNodeInfosResponseBody.ZkNodeInfos]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nodeInfos != nil {
            var tmp : [Any] = []
            for k in self.nodeInfos! {
                tmp.append(k.toMap())
            }
            map["NodeInfos"] = tmp
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
        if self.totalNodeCount != nil {
            map["TotalNodeCount"] = self.totalNodeCount!
        }
        if self.zkNodeInfos != nil {
            var tmp : [Any] = []
            for k in self.zkNodeInfos! {
                tmp.append(k.toMap())
            }
            map["ZkNodeInfos"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NodeInfos"] as? [Any?] {
            var tmp : [DescribeDBClusterNodeInfosResponseBody.NodeInfos] = []
            for v in value {
                if v != nil {
                    var model = DescribeDBClusterNodeInfosResponseBody.NodeInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.nodeInfos = tmp
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
        if let value = dict["TotalNodeCount"] as? Int32 {
            self.totalNodeCount = value
        }
        if let value = dict["ZkNodeInfos"] as? [Any?] {
            var tmp : [DescribeDBClusterNodeInfosResponseBody.ZkNodeInfos] = []
            for v in value {
                if v != nil {
                    var model = DescribeDBClusterNodeInfosResponseBody.ZkNodeInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.zkNodeInfos = tmp
        }
    }
}

public class DescribeDBClusterNodeInfosResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBClusterNodeInfosResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDBClusterNodeInfosResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDBClusterPerformanceRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var endTime: String?

    public var key: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["Key"] as? String {
            self.key = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
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

public class DescribeDBClusterPerformanceResponseBody : Tea.TeaModel {
    public class Performances : Tea.TeaModel {
        public class Series : Tea.TeaModel {
            public class Values : Tea.TeaModel {
                public var point: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.point != nil {
                        map["Point"] = self.point!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Point"] as? [String] {
                        self.point = value
                    }
                }
            }
            public var name: String?

            public var values: [DescribeDBClusterPerformanceResponseBody.Performances.Series.Values]?

            public override init() {
                super.init()
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
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Values"] as? [Any?] {
                    var tmp : [DescribeDBClusterPerformanceResponseBody.Performances.Series.Values] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeDBClusterPerformanceResponseBody.Performances.Series.Values()
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
        public var key: String?

        public var name: String?

        public var series: [DescribeDBClusterPerformanceResponseBody.Performances.Series]?

        public var unit: String?

        public override init() {
            super.init()
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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.series != nil {
                var tmp : [Any] = []
                for k in self.series! {
                    tmp.append(k.toMap())
                }
                map["Series"] = tmp
            }
            if self.unit != nil {
                map["Unit"] = self.unit!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Series"] as? [Any?] {
                var tmp : [DescribeDBClusterPerformanceResponseBody.Performances.Series] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDBClusterPerformanceResponseBody.Performances.Series()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.series = tmp
            }
            if let value = dict["Unit"] as? String {
                self.unit = value
            }
        }
    }
    public var DBClusterId: String?

    public var endTime: String?

    public var performances: [DescribeDBClusterPerformanceResponseBody.Performances]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.performances != nil {
            var tmp : [Any] = []
            for k in self.performances! {
                tmp.append(k.toMap())
            }
            map["Performances"] = tmp
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
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["Performances"] as? [Any?] {
            var tmp : [DescribeDBClusterPerformanceResponseBody.Performances] = []
            for v in value {
                if v != nil {
                    var model = DescribeDBClusterPerformanceResponseBody.Performances()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.performances = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class DescribeDBClusterPerformanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBClusterPerformanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDBClusterPerformanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDBClusterStatusSetRequest : Tea.TeaModel {
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

public class DescribeDBClusterStatusSetResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var statusSet: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.statusSet != nil {
            map["StatusSet"] = self.statusSet!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StatusSet"] as? [String] {
            self.statusSet = value
        }
    }
}

public class DescribeDBClusterStatusSetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBClusterStatusSetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDBClusterStatusSetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDBClustersRequest : Tea.TeaModel {
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
    public var DBClusterDescription: String?

    public var DBClusterIds: String?

    public var DBClusterStatus: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tag: [DescribeDBClustersRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterDescription != nil {
            map["DBClusterDescription"] = self.DBClusterDescription!
        }
        if self.DBClusterIds != nil {
            map["DBClusterIds"] = self.DBClusterIds!
        }
        if self.DBClusterStatus != nil {
            map["DBClusterStatus"] = self.DBClusterStatus!
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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
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
        if let value = dict["DBClusterDescription"] as? String {
            self.DBClusterDescription = value
        }
        if let value = dict["DBClusterIds"] as? String {
            self.DBClusterIds = value
        }
        if let value = dict["DBClusterStatus"] as? String {
            self.DBClusterStatus = value
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
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [DescribeDBClustersRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = DescribeDBClustersRequest.Tag()
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

public class DescribeDBClustersResponseBody : Tea.TeaModel {
    public class DBClusters : Tea.TeaModel {
        public class DBCluster : Tea.TeaModel {
            public class ScaleOutStatus : Tea.TeaModel {
                public var progress: String?

                public var ratio: String?

                public override init() {
                    super.init()
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
                    if self.ratio != nil {
                        map["Ratio"] = self.ratio!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Progress"] as? String {
                        self.progress = value
                    }
                    if let value = dict["Ratio"] as? String {
                        self.ratio = value
                    }
                }
            }
            public class Tags : Tea.TeaModel {
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
                public var tag: [DescribeDBClustersResponseBody.DBClusters.DBCluster.Tags.Tag]?

                public override init() {
                    super.init()
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
                        var tmp : [DescribeDBClustersResponseBody.DBClusters.DBCluster.Tags.Tag] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeDBClustersResponseBody.DBClusters.DBCluster.Tags.Tag()
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
            public var aliUid: String?

            public var bid: String?

            public var category: String?

            public var commodityCode: String?

            public var connectionString: String?

            public var controlVersion: String?

            public var createTime: String?

            public var DBClusterDescription: String?

            public var DBClusterId: String?

            public var DBClusterNetworkType: String?

            public var DBClusterStatus: String?

            public var DBNodeClass: String?

            public var DBNodeCount: Int64?

            public var DBNodeStorage: Int64?

            public var dbVersion: String?

            public var expireTime: String?

            public var extStorageSize: Int32?

            public var extStorageType: String?

            public var isExpired: String?

            public var lockMode: String?

            public var lockReason: String?

            public var payType: String?

            public var port: Int32?

            public var regionId: String?

            public var resourceGroupId: String?

            public var scaleOutDisableWriteWindows: String?

            public var scaleOutStatus: DescribeDBClustersResponseBody.DBClusters.DBCluster.ScaleOutStatus?

            public var storageType: String?

            public var tags: DescribeDBClustersResponseBody.DBClusters.DBCluster.Tags?

            public var vSwitchId: String?

            public var vpcCloudInstanceId: String?

            public var vpcId: String?

            public var zoneId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.scaleOutStatus?.validate()
                try self.tags?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.aliUid != nil {
                    map["AliUid"] = self.aliUid!
                }
                if self.bid != nil {
                    map["Bid"] = self.bid!
                }
                if self.category != nil {
                    map["Category"] = self.category!
                }
                if self.commodityCode != nil {
                    map["CommodityCode"] = self.commodityCode!
                }
                if self.connectionString != nil {
                    map["ConnectionString"] = self.connectionString!
                }
                if self.controlVersion != nil {
                    map["ControlVersion"] = self.controlVersion!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.DBClusterDescription != nil {
                    map["DBClusterDescription"] = self.DBClusterDescription!
                }
                if self.DBClusterId != nil {
                    map["DBClusterId"] = self.DBClusterId!
                }
                if self.DBClusterNetworkType != nil {
                    map["DBClusterNetworkType"] = self.DBClusterNetworkType!
                }
                if self.DBClusterStatus != nil {
                    map["DBClusterStatus"] = self.DBClusterStatus!
                }
                if self.DBNodeClass != nil {
                    map["DBNodeClass"] = self.DBNodeClass!
                }
                if self.DBNodeCount != nil {
                    map["DBNodeCount"] = self.DBNodeCount!
                }
                if self.DBNodeStorage != nil {
                    map["DBNodeStorage"] = self.DBNodeStorage!
                }
                if self.dbVersion != nil {
                    map["DbVersion"] = self.dbVersion!
                }
                if self.expireTime != nil {
                    map["ExpireTime"] = self.expireTime!
                }
                if self.extStorageSize != nil {
                    map["ExtStorageSize"] = self.extStorageSize!
                }
                if self.extStorageType != nil {
                    map["ExtStorageType"] = self.extStorageType!
                }
                if self.isExpired != nil {
                    map["IsExpired"] = self.isExpired!
                }
                if self.lockMode != nil {
                    map["LockMode"] = self.lockMode!
                }
                if self.lockReason != nil {
                    map["LockReason"] = self.lockReason!
                }
                if self.payType != nil {
                    map["PayType"] = self.payType!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.scaleOutDisableWriteWindows != nil {
                    map["ScaleOutDisableWriteWindows"] = self.scaleOutDisableWriteWindows!
                }
                if self.scaleOutStatus != nil {
                    map["ScaleOutStatus"] = self.scaleOutStatus?.toMap()
                }
                if self.storageType != nil {
                    map["StorageType"] = self.storageType!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags?.toMap()
                }
                if self.vSwitchId != nil {
                    map["VSwitchId"] = self.vSwitchId!
                }
                if self.vpcCloudInstanceId != nil {
                    map["VpcCloudInstanceId"] = self.vpcCloudInstanceId!
                }
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AliUid"] as? String {
                    self.aliUid = value
                }
                if let value = dict["Bid"] as? String {
                    self.bid = value
                }
                if let value = dict["Category"] as? String {
                    self.category = value
                }
                if let value = dict["CommodityCode"] as? String {
                    self.commodityCode = value
                }
                if let value = dict["ConnectionString"] as? String {
                    self.connectionString = value
                }
                if let value = dict["ControlVersion"] as? String {
                    self.controlVersion = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["DBClusterDescription"] as? String {
                    self.DBClusterDescription = value
                }
                if let value = dict["DBClusterId"] as? String {
                    self.DBClusterId = value
                }
                if let value = dict["DBClusterNetworkType"] as? String {
                    self.DBClusterNetworkType = value
                }
                if let value = dict["DBClusterStatus"] as? String {
                    self.DBClusterStatus = value
                }
                if let value = dict["DBNodeClass"] as? String {
                    self.DBNodeClass = value
                }
                if let value = dict["DBNodeCount"] as? Int64 {
                    self.DBNodeCount = value
                }
                if let value = dict["DBNodeStorage"] as? Int64 {
                    self.DBNodeStorage = value
                }
                if let value = dict["DbVersion"] as? String {
                    self.dbVersion = value
                }
                if let value = dict["ExpireTime"] as? String {
                    self.expireTime = value
                }
                if let value = dict["ExtStorageSize"] as? Int32 {
                    self.extStorageSize = value
                }
                if let value = dict["ExtStorageType"] as? String {
                    self.extStorageType = value
                }
                if let value = dict["IsExpired"] as? String {
                    self.isExpired = value
                }
                if let value = dict["LockMode"] as? String {
                    self.lockMode = value
                }
                if let value = dict["LockReason"] as? String {
                    self.lockReason = value
                }
                if let value = dict["PayType"] as? String {
                    self.payType = value
                }
                if let value = dict["Port"] as? Int32 {
                    self.port = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["ResourceGroupId"] as? String {
                    self.resourceGroupId = value
                }
                if let value = dict["ScaleOutDisableWriteWindows"] as? String {
                    self.scaleOutDisableWriteWindows = value
                }
                if let value = dict["ScaleOutStatus"] as? [String: Any?] {
                    var model = DescribeDBClustersResponseBody.DBClusters.DBCluster.ScaleOutStatus()
                    model.fromMap(value)
                    self.scaleOutStatus = model
                }
                if let value = dict["StorageType"] as? String {
                    self.storageType = value
                }
                if let value = dict["Tags"] as? [String: Any?] {
                    var model = DescribeDBClustersResponseBody.DBClusters.DBCluster.Tags()
                    model.fromMap(value)
                    self.tags = model
                }
                if let value = dict["VSwitchId"] as? String {
                    self.vSwitchId = value
                }
                if let value = dict["VpcCloudInstanceId"] as? String {
                    self.vpcCloudInstanceId = value
                }
                if let value = dict["VpcId"] as? String {
                    self.vpcId = value
                }
                if let value = dict["ZoneId"] as? String {
                    self.zoneId = value
                }
            }
        }
        public var DBCluster: [DescribeDBClustersResponseBody.DBClusters.DBCluster]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.DBCluster != nil {
                var tmp : [Any] = []
                for k in self.DBCluster! {
                    tmp.append(k.toMap())
                }
                map["DBCluster"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DBCluster"] as? [Any?] {
                var tmp : [DescribeDBClustersResponseBody.DBClusters.DBCluster] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDBClustersResponseBody.DBClusters.DBCluster()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.DBCluster = tmp
            }
        }
    }
    public var DBClusters: DescribeDBClustersResponseBody.DBClusters?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.DBClusters?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusters != nil {
            map["DBClusters"] = self.DBClusters?.toMap()
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusters"] as? [String: Any?] {
            var model = DescribeDBClustersResponseBody.DBClusters()
            model.fromMap(value)
            self.DBClusters = model
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
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeDBClustersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBClustersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDBClustersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDBConfigRequest : Tea.TeaModel {
    public var DBClusterId: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
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
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
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

public class DescribeDBConfigResponseBody : Tea.TeaModel {
    public var config: String?

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
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeDBConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDBConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeEventMetaInfoRequest : Tea.TeaModel {
    public var regionId: String?

    public var securityToken: String?

    public var sourceCode: String?

    public override init() {
        super.init()
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
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.sourceCode != nil {
            map["SourceCode"] = self.sourceCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
        if let value = dict["SourceCode"] as? String {
            self.sourceCode = value
        }
    }
}

public class DescribeEventMetaInfoResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var code: String?

        public var sourceCode: String?

        public override init() {
            super.init()
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
            if self.sourceCode != nil {
                map["SourceCode"] = self.sourceCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["SourceCode"] as? String {
                self.sourceCode = value
            }
        }
    }
    public var items: [DescribeEventMetaInfoResponseBody.Items]?

    public var requestId: String?

    public var totalCount: Int32?

    public override init() {
        super.init()
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
        if let value = dict["Items"] as? [Any?] {
            var tmp : [DescribeEventMetaInfoResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = DescribeEventMetaInfoResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeEventMetaInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeEventMetaInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeEventMetaInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeOSSStorageRequest : Tea.TeaModel {
    public var DBClusterId: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
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
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
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

public class DescribeOSSStorageResponseBody : Tea.TeaModel {
    public var coldStorage: Bool?

    public var policy: String?

    public var requestId: String?

    public var state: String?

    public var storageUsage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.coldStorage != nil {
            map["ColdStorage"] = self.coldStorage!
        }
        if self.policy != nil {
            map["Policy"] = self.policy!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        if self.storageUsage != nil {
            map["StorageUsage"] = self.storageUsage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ColdStorage"] as? Bool {
            self.coldStorage = value
        }
        if let value = dict["Policy"] as? String {
            self.policy = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["State"] as? String {
            self.state = value
        }
        if let value = dict["StorageUsage"] as? String {
            self.storageUsage = value
        }
    }
}

public class DescribeOSSStorageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOSSStorageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeOSSStorageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeProcessListRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var initialQueryId: String?

    public var initialUser: String?

    public var keyword: String?

    public var order: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var queryDurationMs: Int32?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.initialQueryId != nil {
            map["InitialQueryId"] = self.initialQueryId!
        }
        if self.initialUser != nil {
            map["InitialUser"] = self.initialUser!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.order != nil {
            map["Order"] = self.order!
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
        if self.queryDurationMs != nil {
            map["QueryDurationMs"] = self.queryDurationMs!
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
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["InitialQueryId"] as? String {
            self.initialQueryId = value
        }
        if let value = dict["InitialUser"] as? String {
            self.initialUser = value
        }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
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
        if let value = dict["QueryDurationMs"] as? Int32 {
            self.queryDurationMs = value
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

public class DescribeProcessListResponseBody : Tea.TeaModel {
    public class ProcessList : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public class ResultSet : Tea.TeaModel {
                public var initialAddress: String?

                public var initialQueryId: String?

                public var initialUser: String?

                public var query: String?

                public var queryDurationMs: String?

                public var queryStartTime: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.initialAddress != nil {
                        map["InitialAddress"] = self.initialAddress!
                    }
                    if self.initialQueryId != nil {
                        map["InitialQueryId"] = self.initialQueryId!
                    }
                    if self.initialUser != nil {
                        map["InitialUser"] = self.initialUser!
                    }
                    if self.query != nil {
                        map["Query"] = self.query!
                    }
                    if self.queryDurationMs != nil {
                        map["QueryDurationMs"] = self.queryDurationMs!
                    }
                    if self.queryStartTime != nil {
                        map["QueryStartTime"] = self.queryStartTime!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["InitialAddress"] as? String {
                        self.initialAddress = value
                    }
                    if let value = dict["InitialQueryId"] as? String {
                        self.initialQueryId = value
                    }
                    if let value = dict["InitialUser"] as? String {
                        self.initialUser = value
                    }
                    if let value = dict["Query"] as? String {
                        self.query = value
                    }
                    if let value = dict["QueryDurationMs"] as? String {
                        self.queryDurationMs = value
                    }
                    if let value = dict["QueryStartTime"] as? String {
                        self.queryStartTime = value
                    }
                }
            }
            public var resultSet: [DescribeProcessListResponseBody.ProcessList.Data.ResultSet]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.resultSet != nil {
                    var tmp : [Any] = []
                    for k in self.resultSet! {
                        tmp.append(k.toMap())
                    }
                    map["ResultSet"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ResultSet"] as? [Any?] {
                    var tmp : [DescribeProcessListResponseBody.ProcessList.Data.ResultSet] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeProcessListResponseBody.ProcessList.Data.ResultSet()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.resultSet = tmp
                }
            }
        }
        public class Statistics : Tea.TeaModel {
            public var bytesRead: Int32?

            public var elapsedTime: Double?

            public var rowsRead: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bytesRead != nil {
                    map["BytesRead"] = self.bytesRead!
                }
                if self.elapsedTime != nil {
                    map["ElapsedTime"] = self.elapsedTime!
                }
                if self.rowsRead != nil {
                    map["RowsRead"] = self.rowsRead!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BytesRead"] as? Int32 {
                    self.bytesRead = value
                }
                if let value = dict["ElapsedTime"] as? Double {
                    self.elapsedTime = value
                }
                if let value = dict["RowsRead"] as? Int32 {
                    self.rowsRead = value
                }
            }
        }
        public class TableSchema : Tea.TeaModel {
            public class ResultSet : Tea.TeaModel {
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
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["Type"] as? String {
                        self.type = value
                    }
                }
            }
            public var resultSet: [DescribeProcessListResponseBody.ProcessList.TableSchema.ResultSet]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.resultSet != nil {
                    var tmp : [Any] = []
                    for k in self.resultSet! {
                        tmp.append(k.toMap())
                    }
                    map["ResultSet"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ResultSet"] as? [Any?] {
                    var tmp : [DescribeProcessListResponseBody.ProcessList.TableSchema.ResultSet] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeProcessListResponseBody.ProcessList.TableSchema.ResultSet()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.resultSet = tmp
                }
            }
        }
        public var data: DescribeProcessListResponseBody.ProcessList.Data?

        public var rows: String?

        public var rowsBeforeLimitAtLeast: String?

        public var statistics: DescribeProcessListResponseBody.ProcessList.Statistics?

        public var tableSchema: DescribeProcessListResponseBody.ProcessList.TableSchema?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.data?.validate()
            try self.statistics?.validate()
            try self.tableSchema?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.data != nil {
                map["Data"] = self.data?.toMap()
            }
            if self.rows != nil {
                map["Rows"] = self.rows!
            }
            if self.rowsBeforeLimitAtLeast != nil {
                map["RowsBeforeLimitAtLeast"] = self.rowsBeforeLimitAtLeast!
            }
            if self.statistics != nil {
                map["Statistics"] = self.statistics?.toMap()
            }
            if self.tableSchema != nil {
                map["TableSchema"] = self.tableSchema?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? [String: Any?] {
                var model = DescribeProcessListResponseBody.ProcessList.Data()
                model.fromMap(value)
                self.data = model
            }
            if let value = dict["Rows"] as? String {
                self.rows = value
            }
            if let value = dict["RowsBeforeLimitAtLeast"] as? String {
                self.rowsBeforeLimitAtLeast = value
            }
            if let value = dict["Statistics"] as? [String: Any?] {
                var model = DescribeProcessListResponseBody.ProcessList.Statistics()
                model.fromMap(value)
                self.statistics = model
            }
            if let value = dict["TableSchema"] as? [String: Any?] {
                var model = DescribeProcessListResponseBody.ProcessList.TableSchema()
                model.fromMap(value)
                self.tableSchema = model
            }
        }
    }
    public var processList: DescribeProcessListResponseBody.ProcessList?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.processList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.processList != nil {
            map["ProcessList"] = self.processList?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProcessList"] as? [String: Any?] {
            var model = DescribeProcessListResponseBody.ProcessList()
            model.fromMap(value)
            self.processList = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeProcessListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeProcessListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeProcessListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {
    public var ownerAccount: String?

    public var ownerId: Int64?

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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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
    public var regions: DescribeRegionsResponseBody.Regions?

    public var requestId: String?

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
        if self.regions != nil {
            map["Regions"] = self.regions?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Regions"] as? [String: Any?] {
            var model = DescribeRegionsResponseBody.Regions()
            model.fromMap(value)
            self.regions = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

public class DescribeSchemasRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class DescribeSchemasResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class Schema : Tea.TeaModel {
            public var DBClusterId: String?

            public var schemaName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.DBClusterId != nil {
                    map["DBClusterId"] = self.DBClusterId!
                }
                if self.schemaName != nil {
                    map["SchemaName"] = self.schemaName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DBClusterId"] as? String {
                    self.DBClusterId = value
                }
                if let value = dict["SchemaName"] as? String {
                    self.schemaName = value
                }
            }
        }
        public var schema: [DescribeSchemasResponseBody.Items.Schema]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.schema != nil {
                var tmp : [Any] = []
                for k in self.schema! {
                    tmp.append(k.toMap())
                }
                map["Schema"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Schema"] as? [Any?] {
                var tmp : [DescribeSchemasResponseBody.Items.Schema] = []
                for v in value {
                    if v != nil {
                        var model = DescribeSchemasResponseBody.Items.Schema()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.schema = tmp
            }
        }
    }
    public var items: DescribeSchemasResponseBody.Items?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.items?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.items != nil {
            map["Items"] = self.items?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Items"] as? [String: Any?] {
            var model = DescribeSchemasResponseBody.Items()
            model.fromMap(value)
            self.items = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeSchemasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSchemasResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeSchemasResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSlowLogRecordsRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var endTime: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var queryDurationMs: Int32?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
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
        if self.queryDurationMs != nil {
            map["QueryDurationMs"] = self.queryDurationMs!
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
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
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
        if let value = dict["QueryDurationMs"] as? Int32 {
            self.queryDurationMs = value
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

public class DescribeSlowLogRecordsResponseBody : Tea.TeaModel {
    public class SlowLogRecords : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public class ResultSet : Tea.TeaModel {
                public var initialAddress: String?

                public var initialQueryId: String?

                public var initialUser: String?

                public var memoryUsage: String?

                public var query: String?

                public var queryDurationMs: String?

                public var queryStartTime: String?

                public var readBytes: String?

                public var readRows: String?

                public var resultBytes: String?

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
                    if self.initialAddress != nil {
                        map["InitialAddress"] = self.initialAddress!
                    }
                    if self.initialQueryId != nil {
                        map["InitialQueryId"] = self.initialQueryId!
                    }
                    if self.initialUser != nil {
                        map["InitialUser"] = self.initialUser!
                    }
                    if self.memoryUsage != nil {
                        map["MemoryUsage"] = self.memoryUsage!
                    }
                    if self.query != nil {
                        map["Query"] = self.query!
                    }
                    if self.queryDurationMs != nil {
                        map["QueryDurationMs"] = self.queryDurationMs!
                    }
                    if self.queryStartTime != nil {
                        map["QueryStartTime"] = self.queryStartTime!
                    }
                    if self.readBytes != nil {
                        map["ReadBytes"] = self.readBytes!
                    }
                    if self.readRows != nil {
                        map["ReadRows"] = self.readRows!
                    }
                    if self.resultBytes != nil {
                        map["ResultBytes"] = self.resultBytes!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["InitialAddress"] as? String {
                        self.initialAddress = value
                    }
                    if let value = dict["InitialQueryId"] as? String {
                        self.initialQueryId = value
                    }
                    if let value = dict["InitialUser"] as? String {
                        self.initialUser = value
                    }
                    if let value = dict["MemoryUsage"] as? String {
                        self.memoryUsage = value
                    }
                    if let value = dict["Query"] as? String {
                        self.query = value
                    }
                    if let value = dict["QueryDurationMs"] as? String {
                        self.queryDurationMs = value
                    }
                    if let value = dict["QueryStartTime"] as? String {
                        self.queryStartTime = value
                    }
                    if let value = dict["ReadBytes"] as? String {
                        self.readBytes = value
                    }
                    if let value = dict["ReadRows"] as? String {
                        self.readRows = value
                    }
                    if let value = dict["ResultBytes"] as? String {
                        self.resultBytes = value
                    }
                    if let value = dict["Type"] as? String {
                        self.type = value
                    }
                }
            }
            public var resultSet: [DescribeSlowLogRecordsResponseBody.SlowLogRecords.Data.ResultSet]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.resultSet != nil {
                    var tmp : [Any] = []
                    for k in self.resultSet! {
                        tmp.append(k.toMap())
                    }
                    map["ResultSet"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ResultSet"] as? [Any?] {
                    var tmp : [DescribeSlowLogRecordsResponseBody.SlowLogRecords.Data.ResultSet] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeSlowLogRecordsResponseBody.SlowLogRecords.Data.ResultSet()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.resultSet = tmp
                }
            }
        }
        public class Statistics : Tea.TeaModel {
            public var bytesRead: Int32?

            public var elapsedTime: Double?

            public var rowsRead: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bytesRead != nil {
                    map["BytesRead"] = self.bytesRead!
                }
                if self.elapsedTime != nil {
                    map["ElapsedTime"] = self.elapsedTime!
                }
                if self.rowsRead != nil {
                    map["RowsRead"] = self.rowsRead!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BytesRead"] as? Int32 {
                    self.bytesRead = value
                }
                if let value = dict["ElapsedTime"] as? Double {
                    self.elapsedTime = value
                }
                if let value = dict["RowsRead"] as? Int32 {
                    self.rowsRead = value
                }
            }
        }
        public class TableSchema : Tea.TeaModel {
            public class ResultSet : Tea.TeaModel {
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
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["Type"] as? String {
                        self.type = value
                    }
                }
            }
            public var resultSet: [DescribeSlowLogRecordsResponseBody.SlowLogRecords.TableSchema.ResultSet]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.resultSet != nil {
                    var tmp : [Any] = []
                    for k in self.resultSet! {
                        tmp.append(k.toMap())
                    }
                    map["ResultSet"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ResultSet"] as? [Any?] {
                    var tmp : [DescribeSlowLogRecordsResponseBody.SlowLogRecords.TableSchema.ResultSet] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeSlowLogRecordsResponseBody.SlowLogRecords.TableSchema.ResultSet()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.resultSet = tmp
                }
            }
        }
        public var data: DescribeSlowLogRecordsResponseBody.SlowLogRecords.Data?

        public var rows: String?

        public var rowsBeforeLimitAtLeast: String?

        public var statistics: DescribeSlowLogRecordsResponseBody.SlowLogRecords.Statistics?

        public var tableSchema: DescribeSlowLogRecordsResponseBody.SlowLogRecords.TableSchema?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.data?.validate()
            try self.statistics?.validate()
            try self.tableSchema?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.data != nil {
                map["Data"] = self.data?.toMap()
            }
            if self.rows != nil {
                map["Rows"] = self.rows!
            }
            if self.rowsBeforeLimitAtLeast != nil {
                map["RowsBeforeLimitAtLeast"] = self.rowsBeforeLimitAtLeast!
            }
            if self.statistics != nil {
                map["Statistics"] = self.statistics?.toMap()
            }
            if self.tableSchema != nil {
                map["TableSchema"] = self.tableSchema?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? [String: Any?] {
                var model = DescribeSlowLogRecordsResponseBody.SlowLogRecords.Data()
                model.fromMap(value)
                self.data = model
            }
            if let value = dict["Rows"] as? String {
                self.rows = value
            }
            if let value = dict["RowsBeforeLimitAtLeast"] as? String {
                self.rowsBeforeLimitAtLeast = value
            }
            if let value = dict["Statistics"] as? [String: Any?] {
                var model = DescribeSlowLogRecordsResponseBody.SlowLogRecords.Statistics()
                model.fromMap(value)
                self.statistics = model
            }
            if let value = dict["TableSchema"] as? [String: Any?] {
                var model = DescribeSlowLogRecordsResponseBody.SlowLogRecords.TableSchema()
                model.fromMap(value)
                self.tableSchema = model
            }
        }
    }
    public var requestId: String?

    public var slowLogRecords: DescribeSlowLogRecordsResponseBody.SlowLogRecords?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.slowLogRecords?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.slowLogRecords != nil {
            map["SlowLogRecords"] = self.slowLogRecords?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SlowLogRecords"] as? [String: Any?] {
            var model = DescribeSlowLogRecordsResponseBody.SlowLogRecords()
            model.fromMap(value)
            self.slowLogRecords = model
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

public class DescribeSlowLogTrendRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var endTime: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var queryDurationMs: Int32?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
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
        if self.queryDurationMs != nil {
            map["QueryDurationMs"] = self.queryDurationMs!
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
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
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
        if let value = dict["QueryDurationMs"] as? Int32 {
            self.queryDurationMs = value
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

public class DescribeSlowLogTrendResponseBody : Tea.TeaModel {
    public class SlowLogTrend : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public class ResultSet : Tea.TeaModel {
                public var avgQueryDurationMs: String?

                public var count: String?

                public var maxQueryDurationMs: String?

                public var minQueryDurationMs: String?

                public var queryStartTime: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.avgQueryDurationMs != nil {
                        map["AvgQueryDurationMs"] = self.avgQueryDurationMs!
                    }
                    if self.count != nil {
                        map["Count"] = self.count!
                    }
                    if self.maxQueryDurationMs != nil {
                        map["MaxQueryDurationMs"] = self.maxQueryDurationMs!
                    }
                    if self.minQueryDurationMs != nil {
                        map["MinQueryDurationMs"] = self.minQueryDurationMs!
                    }
                    if self.queryStartTime != nil {
                        map["QueryStartTime"] = self.queryStartTime!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AvgQueryDurationMs"] as? String {
                        self.avgQueryDurationMs = value
                    }
                    if let value = dict["Count"] as? String {
                        self.count = value
                    }
                    if let value = dict["MaxQueryDurationMs"] as? String {
                        self.maxQueryDurationMs = value
                    }
                    if let value = dict["MinQueryDurationMs"] as? String {
                        self.minQueryDurationMs = value
                    }
                    if let value = dict["QueryStartTime"] as? String {
                        self.queryStartTime = value
                    }
                }
            }
            public var resultSet: [DescribeSlowLogTrendResponseBody.SlowLogTrend.Data.ResultSet]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.resultSet != nil {
                    var tmp : [Any] = []
                    for k in self.resultSet! {
                        tmp.append(k.toMap())
                    }
                    map["ResultSet"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ResultSet"] as? [Any?] {
                    var tmp : [DescribeSlowLogTrendResponseBody.SlowLogTrend.Data.ResultSet] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeSlowLogTrendResponseBody.SlowLogTrend.Data.ResultSet()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.resultSet = tmp
                }
            }
        }
        public class Statistics : Tea.TeaModel {
            public var bytesRead: Int32?

            public var elapsedTime: Double?

            public var rowsRead: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bytesRead != nil {
                    map["BytesRead"] = self.bytesRead!
                }
                if self.elapsedTime != nil {
                    map["ElapsedTime"] = self.elapsedTime!
                }
                if self.rowsRead != nil {
                    map["RowsRead"] = self.rowsRead!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BytesRead"] as? Int32 {
                    self.bytesRead = value
                }
                if let value = dict["ElapsedTime"] as? Double {
                    self.elapsedTime = value
                }
                if let value = dict["RowsRead"] as? Int32 {
                    self.rowsRead = value
                }
            }
        }
        public class TableSchema : Tea.TeaModel {
            public class ResultSet : Tea.TeaModel {
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
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["Type"] as? String {
                        self.type = value
                    }
                }
            }
            public var resultSet: [DescribeSlowLogTrendResponseBody.SlowLogTrend.TableSchema.ResultSet]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.resultSet != nil {
                    var tmp : [Any] = []
                    for k in self.resultSet! {
                        tmp.append(k.toMap())
                    }
                    map["ResultSet"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ResultSet"] as? [Any?] {
                    var tmp : [DescribeSlowLogTrendResponseBody.SlowLogTrend.TableSchema.ResultSet] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeSlowLogTrendResponseBody.SlowLogTrend.TableSchema.ResultSet()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.resultSet = tmp
                }
            }
        }
        public var data: DescribeSlowLogTrendResponseBody.SlowLogTrend.Data?

        public var rows: String?

        public var rowsBeforeLimitAtLeast: String?

        public var statistics: DescribeSlowLogTrendResponseBody.SlowLogTrend.Statistics?

        public var tableSchema: DescribeSlowLogTrendResponseBody.SlowLogTrend.TableSchema?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.data?.validate()
            try self.statistics?.validate()
            try self.tableSchema?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.data != nil {
                map["Data"] = self.data?.toMap()
            }
            if self.rows != nil {
                map["Rows"] = self.rows!
            }
            if self.rowsBeforeLimitAtLeast != nil {
                map["RowsBeforeLimitAtLeast"] = self.rowsBeforeLimitAtLeast!
            }
            if self.statistics != nil {
                map["Statistics"] = self.statistics?.toMap()
            }
            if self.tableSchema != nil {
                map["TableSchema"] = self.tableSchema?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? [String: Any?] {
                var model = DescribeSlowLogTrendResponseBody.SlowLogTrend.Data()
                model.fromMap(value)
                self.data = model
            }
            if let value = dict["Rows"] as? String {
                self.rows = value
            }
            if let value = dict["RowsBeforeLimitAtLeast"] as? String {
                self.rowsBeforeLimitAtLeast = value
            }
            if let value = dict["Statistics"] as? [String: Any?] {
                var model = DescribeSlowLogTrendResponseBody.SlowLogTrend.Statistics()
                model.fromMap(value)
                self.statistics = model
            }
            if let value = dict["TableSchema"] as? [String: Any?] {
                var model = DescribeSlowLogTrendResponseBody.SlowLogTrend.TableSchema()
                model.fromMap(value)
                self.tableSchema = model
            }
        }
    }
    public var requestId: String?

    public var slowLogTrend: DescribeSlowLogTrendResponseBody.SlowLogTrend?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.slowLogTrend?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.slowLogTrend != nil {
            map["SlowLogTrend"] = self.slowLogTrend?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SlowLogTrend"] as? [String: Any?] {
            var model = DescribeSlowLogTrendResponseBody.SlowLogTrend()
            model.fromMap(value)
            self.slowLogTrend = model
        }
    }
}

public class DescribeSlowLogTrendResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSlowLogTrendResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeSlowLogTrendResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSynDbTablesRequest : Tea.TeaModel {
    public var dbClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var synDb: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbClusterId != nil {
            map["DbClusterId"] = self.dbClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.synDb != nil {
            map["SynDb"] = self.synDb!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbClusterId"] as? String {
            self.dbClusterId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SynDb"] as? String {
            self.synDb = value
        }
    }
}

public class DescribeSynDbTablesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var tables: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tables != nil {
            map["Tables"] = self.tables!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Tables"] as? [String] {
            self.tables = value
        }
    }
}

public class DescribeSynDbTablesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSynDbTablesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeSynDbTablesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSynDbsRequest : Tea.TeaModel {
    public var dbClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.dbClusterId != nil {
            map["DbClusterId"] = self.dbClusterId!
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
        if let value = dict["DbClusterId"] as? String {
            self.dbClusterId = value
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
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class DescribeSynDbsResponseBody : Tea.TeaModel {
    public class SynDbs : Tea.TeaModel {
        public var errorMsg: String?

        public var rdsId: String?

        public var rdsUserName: String?

        public var rdsVpcUrl: String?

        public var synDb: String?

        public var synStatus: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.errorMsg != nil {
                map["ErrorMsg"] = self.errorMsg!
            }
            if self.rdsId != nil {
                map["RdsId"] = self.rdsId!
            }
            if self.rdsUserName != nil {
                map["RdsUserName"] = self.rdsUserName!
            }
            if self.rdsVpcUrl != nil {
                map["RdsVpcUrl"] = self.rdsVpcUrl!
            }
            if self.synDb != nil {
                map["SynDb"] = self.synDb!
            }
            if self.synStatus != nil {
                map["SynStatus"] = self.synStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErrorMsg"] as? String {
                self.errorMsg = value
            }
            if let value = dict["RdsId"] as? String {
                self.rdsId = value
            }
            if let value = dict["RdsUserName"] as? String {
                self.rdsUserName = value
            }
            if let value = dict["RdsVpcUrl"] as? String {
                self.rdsVpcUrl = value
            }
            if let value = dict["SynDb"] as? String {
                self.synDb = value
            }
            if let value = dict["SynStatus"] as? Bool {
                self.synStatus = value
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var synDbs: [DescribeSynDbsResponseBody.SynDbs]?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.synDbs != nil {
            var tmp : [Any] = []
            for k in self.synDbs! {
                tmp.append(k.toMap())
            }
            map["SynDbs"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SynDbs"] as? [Any?] {
            var tmp : [DescribeSynDbsResponseBody.SynDbs] = []
            for v in value {
                if v != nil {
                    var model = DescribeSynDbsResponseBody.SynDbs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.synDbs = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class DescribeSynDbsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSynDbsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeSynDbsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeTablesRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var schemaName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.schemaName != nil {
            map["SchemaName"] = self.schemaName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SchemaName"] as? String {
            self.schemaName = value
        }
    }
}

public class DescribeTablesResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class Table : Tea.TeaModel {
            public var DBClusterId: String?

            public var schemaName: String?

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
                if self.DBClusterId != nil {
                    map["DBClusterId"] = self.DBClusterId!
                }
                if self.schemaName != nil {
                    map["SchemaName"] = self.schemaName!
                }
                if self.tableName != nil {
                    map["TableName"] = self.tableName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DBClusterId"] as? String {
                    self.DBClusterId = value
                }
                if let value = dict["SchemaName"] as? String {
                    self.schemaName = value
                }
                if let value = dict["TableName"] as? String {
                    self.tableName = value
                }
            }
        }
        public var table: [DescribeTablesResponseBody.Items.Table]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.table != nil {
                var tmp : [Any] = []
                for k in self.table! {
                    tmp.append(k.toMap())
                }
                map["Table"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Table"] as? [Any?] {
                var tmp : [DescribeTablesResponseBody.Items.Table] = []
                for v in value {
                    if v != nil {
                        var model = DescribeTablesResponseBody.Items.Table()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.table = tmp
            }
        }
    }
    public var items: DescribeTablesResponseBody.Items?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.items?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.items != nil {
            map["Items"] = self.items?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Items"] as? [String: Any?] {
            var model = DescribeTablesResponseBody.Items()
            model.fromMap(value)
            self.items = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeTablesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTablesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeTablesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeTransferHistoryRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class DescribeTransferHistoryResponseBody : Tea.TeaModel {
    public class HistoryDetails : Tea.TeaModel {
        public class HistoryDetail : Tea.TeaModel {
            public var bytesPerMinute: Int64?

            public var disableWriteWindows: String?

            public var partsPerMinute: Double?

            public var progress: String?

            public var sourceControlVersion: String?

            public var sourceDBCluster: String?

            public var status: String?

            public var subJob: String?

            public var subJobMessage: String?

            public var subJobStatus: String?

            public var targetControlVersion: String?

            public var targetDBCluster: String?

            public var unsyncedBytes: Int64?

            public var unsyncedParts: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bytesPerMinute != nil {
                    map["BytesPerMinute"] = self.bytesPerMinute!
                }
                if self.disableWriteWindows != nil {
                    map["DisableWriteWindows"] = self.disableWriteWindows!
                }
                if self.partsPerMinute != nil {
                    map["PartsPerMinute"] = self.partsPerMinute!
                }
                if self.progress != nil {
                    map["Progress"] = self.progress!
                }
                if self.sourceControlVersion != nil {
                    map["SourceControlVersion"] = self.sourceControlVersion!
                }
                if self.sourceDBCluster != nil {
                    map["SourceDBCluster"] = self.sourceDBCluster!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.subJob != nil {
                    map["SubJob"] = self.subJob!
                }
                if self.subJobMessage != nil {
                    map["SubJobMessage"] = self.subJobMessage!
                }
                if self.subJobStatus != nil {
                    map["SubJobStatus"] = self.subJobStatus!
                }
                if self.targetControlVersion != nil {
                    map["TargetControlVersion"] = self.targetControlVersion!
                }
                if self.targetDBCluster != nil {
                    map["TargetDBCluster"] = self.targetDBCluster!
                }
                if self.unsyncedBytes != nil {
                    map["UnsyncedBytes"] = self.unsyncedBytes!
                }
                if self.unsyncedParts != nil {
                    map["UnsyncedParts"] = self.unsyncedParts!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BytesPerMinute"] as? Int64 {
                    self.bytesPerMinute = value
                }
                if let value = dict["DisableWriteWindows"] as? String {
                    self.disableWriteWindows = value
                }
                if let value = dict["PartsPerMinute"] as? Double {
                    self.partsPerMinute = value
                }
                if let value = dict["Progress"] as? String {
                    self.progress = value
                }
                if let value = dict["SourceControlVersion"] as? String {
                    self.sourceControlVersion = value
                }
                if let value = dict["SourceDBCluster"] as? String {
                    self.sourceDBCluster = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["SubJob"] as? String {
                    self.subJob = value
                }
                if let value = dict["SubJobMessage"] as? String {
                    self.subJobMessage = value
                }
                if let value = dict["SubJobStatus"] as? String {
                    self.subJobStatus = value
                }
                if let value = dict["TargetControlVersion"] as? String {
                    self.targetControlVersion = value
                }
                if let value = dict["TargetDBCluster"] as? String {
                    self.targetDBCluster = value
                }
                if let value = dict["UnsyncedBytes"] as? Int64 {
                    self.unsyncedBytes = value
                }
                if let value = dict["UnsyncedParts"] as? Int64 {
                    self.unsyncedParts = value
                }
            }
        }
        public var historyDetail: [DescribeTransferHistoryResponseBody.HistoryDetails.HistoryDetail]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.historyDetail != nil {
                var tmp : [Any] = []
                for k in self.historyDetail! {
                    tmp.append(k.toMap())
                }
                map["HistoryDetail"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["HistoryDetail"] as? [Any?] {
                var tmp : [DescribeTransferHistoryResponseBody.HistoryDetails.HistoryDetail] = []
                for v in value {
                    if v != nil {
                        var model = DescribeTransferHistoryResponseBody.HistoryDetails.HistoryDetail()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.historyDetail = tmp
            }
        }
    }
    public var historyDetails: DescribeTransferHistoryResponseBody.HistoryDetails?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.historyDetails?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.historyDetails != nil {
            map["HistoryDetails"] = self.historyDetails?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HistoryDetails"] as? [String: Any?] {
            var model = DescribeTransferHistoryResponseBody.HistoryDetails()
            model.fromMap(value)
            self.historyDetails = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeTransferHistoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTransferHistoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeTransferHistoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeUserEncryptionKeyListRequest : Tea.TeaModel {
    public var pageNumber: String?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
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
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeUserEncryptionKeyListResponseBody : Tea.TeaModel {
    public class KmsKeys : Tea.TeaModel {
        public var keyId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.keyId != nil {
                map["KeyId"] = self.keyId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["KeyId"] as? String {
                self.keyId = value
            }
        }
    }
    public var kmsKeys: [DescribeUserEncryptionKeyListResponseBody.KmsKeys]?

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
        if self.kmsKeys != nil {
            var tmp : [Any] = []
            for k in self.kmsKeys! {
                tmp.append(k.toMap())
            }
            map["KmsKeys"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KmsKeys"] as? [Any?] {
            var tmp : [DescribeUserEncryptionKeyListResponseBody.KmsKeys] = []
            for v in value {
                if v != nil {
                    var model = DescribeUserEncryptionKeyListResponseBody.KmsKeys()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.kmsKeys = tmp
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

public class ElectZookeeperLeaderRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var disableWrite: Bool?

    public var electTime: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.disableWrite != nil {
            map["DisableWrite"] = self.disableWrite!
        }
        if self.electTime != nil {
            map["ElectTime"] = self.electTime!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["DisableWrite"] as? Bool {
            self.disableWrite = value
        }
        if let value = dict["ElectTime"] as? String {
            self.electTime = value
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
    }
}

public class ElectZookeeperLeaderResponseBody : Tea.TeaModel {
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

public class ElectZookeeperLeaderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ElectZookeeperLeaderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ElectZookeeperLeaderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class KillProcessRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var initialQueryId: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.initialQueryId != nil {
            map["InitialQueryId"] = self.initialQueryId!
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
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["InitialQueryId"] as? String {
            self.initialQueryId = value
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

public class KillProcessResponseBody : Tea.TeaModel {
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

public class KillProcessResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: KillProcessResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = KillProcessResponseBody()
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

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceId: [String]?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
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
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

public class ModifyAccountAuthorityRequest : Tea.TeaModel {
    public var accountName: String?

    public var allowDatabases: String?

    public var allowDictionaries: String?

    public var DBClusterId: String?

    public var ddlAuthority: Bool?

    public var dmlAuthority: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var totalDatabases: String?

    public var totalDictionaries: String?

    public override init() {
        super.init()
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
        if self.allowDatabases != nil {
            map["AllowDatabases"] = self.allowDatabases!
        }
        if self.allowDictionaries != nil {
            map["AllowDictionaries"] = self.allowDictionaries!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ddlAuthority != nil {
            map["DdlAuthority"] = self.ddlAuthority!
        }
        if self.dmlAuthority != nil {
            map["DmlAuthority"] = self.dmlAuthority!
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
        if self.totalDatabases != nil {
            map["TotalDatabases"] = self.totalDatabases!
        }
        if self.totalDictionaries != nil {
            map["TotalDictionaries"] = self.totalDictionaries!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountName"] as? String {
            self.accountName = value
        }
        if let value = dict["AllowDatabases"] as? String {
            self.allowDatabases = value
        }
        if let value = dict["AllowDictionaries"] as? String {
            self.allowDictionaries = value
        }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["DdlAuthority"] as? Bool {
            self.ddlAuthority = value
        }
        if let value = dict["DmlAuthority"] as? String {
            self.dmlAuthority = value
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
        if let value = dict["TotalDatabases"] as? String {
            self.totalDatabases = value
        }
        if let value = dict["TotalDictionaries"] as? String {
            self.totalDictionaries = value
        }
    }
}

public class ModifyAccountAuthorityResponseBody : Tea.TeaModel {
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

public class ModifyAccountAuthorityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAccountAuthorityResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyAccountAuthorityResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyAccountDescriptionRequest : Tea.TeaModel {
    public var accountDescription: String?

    public var accountName: String?

    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

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
        if self.accountDescription != nil {
            map["AccountDescription"] = self.accountDescription!
        }
        if self.accountName != nil {
            map["AccountName"] = self.accountName!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        if let value = dict["AccountDescription"] as? String {
            self.accountDescription = value
        }
        if let value = dict["AccountName"] as? String {
            self.accountName = value
        }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class ModifyAccountDescriptionResponseBody : Tea.TeaModel {
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

public class ModifyActiveOperationMaintainConfRequest : Tea.TeaModel {
    public var cycleTime: String?

    public var cycleType: String?

    public var maintainEndTime: String?

    public var maintainStartTime: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var securityToken: String?

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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
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
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
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

    public var immediateStart: Int32?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var securityToken: String?

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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
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
        if let value = dict["ImmediateStart"] as? Int32 {
            self.immediateStart = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
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

public class ModifyAutoRenewAttributeRequest : Tea.TeaModel {
    public var DBClusterIds: String?

    public var duration: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var periodUnit: String?

    public var regionId: String?

    public var renewalStatus: String?

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
        if self.DBClusterIds != nil {
            map["DBClusterIds"] = self.DBClusterIds!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.renewalStatus != nil {
            map["RenewalStatus"] = self.renewalStatus!
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
        if let value = dict["DBClusterIds"] as? String {
            self.DBClusterIds = value
        }
        if let value = dict["Duration"] as? String {
            self.duration = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PeriodUnit"] as? String {
            self.periodUnit = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RenewalStatus"] as? String {
            self.renewalStatus = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class ModifyAutoRenewAttributeResponseBody : Tea.TeaModel {
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

public class ModifyAutoRenewAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAutoRenewAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyAutoRenewAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyBackupPolicyRequest : Tea.TeaModel {
    public var backupRetentionPeriod: String?

    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var preferredBackupPeriod: String?

    public var preferredBackupTime: String?

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
        if self.backupRetentionPeriod != nil {
            map["BackupRetentionPeriod"] = self.backupRetentionPeriod!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.preferredBackupPeriod != nil {
            map["PreferredBackupPeriod"] = self.preferredBackupPeriod!
        }
        if self.preferredBackupTime != nil {
            map["PreferredBackupTime"] = self.preferredBackupTime!
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
        if let value = dict["BackupRetentionPeriod"] as? String {
            self.backupRetentionPeriod = value
        }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PreferredBackupPeriod"] as? String {
            self.preferredBackupPeriod = value
        }
        if let value = dict["PreferredBackupTime"] as? String {
            self.preferredBackupTime = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class ModifyBackupPolicyResponseBody : Tea.TeaModel {
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

public class ModifyBackupPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyBackupPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyBackupPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyDBClusterRequest : Tea.TeaModel {
    public var DBClusterClass: String?

    public var DBClusterId: String?

    public var DBNodeGroupCount: String?

    public var DBNodeStorage: String?

    public var dbNodeStorageType: String?

    public var disableWriteWindows: String?

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
        if self.DBClusterClass != nil {
            map["DBClusterClass"] = self.DBClusterClass!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.DBNodeGroupCount != nil {
            map["DBNodeGroupCount"] = self.DBNodeGroupCount!
        }
        if self.DBNodeStorage != nil {
            map["DBNodeStorage"] = self.DBNodeStorage!
        }
        if self.dbNodeStorageType != nil {
            map["DbNodeStorageType"] = self.dbNodeStorageType!
        }
        if self.disableWriteWindows != nil {
            map["DisableWriteWindows"] = self.disableWriteWindows!
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
        if let value = dict["DBClusterClass"] as? String {
            self.DBClusterClass = value
        }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["DBNodeGroupCount"] as? String {
            self.DBNodeGroupCount = value
        }
        if let value = dict["DBNodeStorage"] as? String {
            self.DBNodeStorage = value
        }
        if let value = dict["DbNodeStorageType"] as? String {
            self.dbNodeStorageType = value
        }
        if let value = dict["DisableWriteWindows"] as? String {
            self.disableWriteWindows = value
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

public class ModifyDBClusterResponseBody : Tea.TeaModel {
    public class DBCluster : Tea.TeaModel {
        public var dbClusterId: String?

        public var orderId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dbClusterId != nil {
                map["dbClusterId"] = self.dbClusterId!
            }
            if self.orderId != nil {
                map["orderId"] = self.orderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["dbClusterId"] as? String {
                self.dbClusterId = value
            }
            if let value = dict["orderId"] as? String {
                self.orderId = value
            }
        }
    }
    public var DBCluster: ModifyDBClusterResponseBody.DBCluster?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.DBCluster?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBCluster != nil {
            map["DBCluster"] = self.DBCluster?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBCluster"] as? [String: Any?] {
            var model = ModifyDBClusterResponseBody.DBCluster()
            model.fromMap(value)
            self.DBCluster = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ModifyDBClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDBClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyDBClusterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyDBClusterAccessWhiteListRequest : Tea.TeaModel {
    public var DBClusterIPArrayAttribute: String?

    public var DBClusterIPArrayName: String?

    public var DBClusterId: String?

    public var modifyMode: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var securityIps: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterIPArrayAttribute != nil {
            map["DBClusterIPArrayAttribute"] = self.DBClusterIPArrayAttribute!
        }
        if self.DBClusterIPArrayName != nil {
            map["DBClusterIPArrayName"] = self.DBClusterIPArrayName!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.modifyMode != nil {
            map["ModifyMode"] = self.modifyMode!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.securityIps != nil {
            map["SecurityIps"] = self.securityIps!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusterIPArrayAttribute"] as? String {
            self.DBClusterIPArrayAttribute = value
        }
        if let value = dict["DBClusterIPArrayName"] as? String {
            self.DBClusterIPArrayName = value
        }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["ModifyMode"] as? String {
            self.modifyMode = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityIps"] as? String {
            self.securityIps = value
        }
    }
}

public class ModifyDBClusterAccessWhiteListResponseBody : Tea.TeaModel {
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

public class ModifyDBClusterAccessWhiteListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDBClusterAccessWhiteListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyDBClusterAccessWhiteListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyDBClusterConfigRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var reason: String?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var userConfig: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.reason != nil {
            map["Reason"] = self.reason!
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
        if self.userConfig != nil {
            map["UserConfig"] = self.userConfig!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["Reason"] as? String {
            self.reason = value
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
        if let value = dict["UserConfig"] as? String {
            self.userConfig = value
        }
    }
}

public class ModifyDBClusterConfigResponseBody : Tea.TeaModel {
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

public class ModifyDBClusterConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDBClusterConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyDBClusterConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyDBClusterConfigInXMLRequest : Tea.TeaModel {
    public var config: String?

    public var DBClusterId: String?

    public var reason: String?

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
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.reason != nil {
            map["Reason"] = self.reason!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["Reason"] as? String {
            self.reason = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ModifyDBClusterConfigInXMLResponseBody : Tea.TeaModel {
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

public class ModifyDBClusterConfigInXMLResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDBClusterConfigInXMLResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyDBClusterConfigInXMLResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyDBClusterDescriptionRequest : Tea.TeaModel {
    public var DBClusterDescription: String?

    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

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
        if self.DBClusterDescription != nil {
            map["DBClusterDescription"] = self.DBClusterDescription!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        if let value = dict["DBClusterDescription"] as? String {
            self.DBClusterDescription = value
        }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class ModifyDBClusterDescriptionResponseBody : Tea.TeaModel {
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

public class ModifyDBClusterDescriptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDBClusterDescriptionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyDBClusterDescriptionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyDBClusterMaintainTimeRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var maintainTime: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.maintainTime != nil {
            map["MaintainTime"] = self.maintainTime!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["MaintainTime"] as? String {
            self.maintainTime = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class ModifyDBClusterMaintainTimeResponseBody : Tea.TeaModel {
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

public class ModifyDBClusterMaintainTimeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDBClusterMaintainTimeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyDBClusterMaintainTimeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyDBConfigRequest : Tea.TeaModel {
    public var config: String?

    public var DBClusterId: String?

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
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
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
        if let value = dict["Config"] as? String {
            self.config = value
        }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
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

public class ModifyDBConfigResponseBody : Tea.TeaModel {
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

public class ModifyDBConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDBConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyDBConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyMinorVersionGreadeTypeRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var maintainAutoType: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.maintainAutoType != nil {
            map["MaintainAutoType"] = self.maintainAutoType!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["MaintainAutoType"] as? Bool {
            self.maintainAutoType = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class ModifyMinorVersionGreadeTypeResponseBody : Tea.TeaModel {
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

public class ModifyMinorVersionGreadeTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyMinorVersionGreadeTypeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyMinorVersionGreadeTypeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyRDSToClickhouseDbRequest : Tea.TeaModel {
    public var ckPassword: String?

    public var ckUserName: String?

    public var clickhousePort: Int64?

    public var dbClusterId: String?

    public var limitUpper: Int64?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var rdsId: String?

    public var rdsPassword: String?

    public var rdsPort: Int64?

    public var rdsSynDb: String?

    public var rdsSynTables: String?

    public var rdsUserName: String?

    public var rdsVpcId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var skipUnsupported: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ckPassword != nil {
            map["CkPassword"] = self.ckPassword!
        }
        if self.ckUserName != nil {
            map["CkUserName"] = self.ckUserName!
        }
        if self.clickhousePort != nil {
            map["ClickhousePort"] = self.clickhousePort!
        }
        if self.dbClusterId != nil {
            map["DbClusterId"] = self.dbClusterId!
        }
        if self.limitUpper != nil {
            map["LimitUpper"] = self.limitUpper!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.rdsId != nil {
            map["RdsId"] = self.rdsId!
        }
        if self.rdsPassword != nil {
            map["RdsPassword"] = self.rdsPassword!
        }
        if self.rdsPort != nil {
            map["RdsPort"] = self.rdsPort!
        }
        if self.rdsSynDb != nil {
            map["RdsSynDb"] = self.rdsSynDb!
        }
        if self.rdsSynTables != nil {
            map["RdsSynTables"] = self.rdsSynTables!
        }
        if self.rdsUserName != nil {
            map["RdsUserName"] = self.rdsUserName!
        }
        if self.rdsVpcId != nil {
            map["RdsVpcId"] = self.rdsVpcId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.skipUnsupported != nil {
            map["SkipUnsupported"] = self.skipUnsupported!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CkPassword"] as? String {
            self.ckPassword = value
        }
        if let value = dict["CkUserName"] as? String {
            self.ckUserName = value
        }
        if let value = dict["ClickhousePort"] as? Int64 {
            self.clickhousePort = value
        }
        if let value = dict["DbClusterId"] as? String {
            self.dbClusterId = value
        }
        if let value = dict["LimitUpper"] as? Int64 {
            self.limitUpper = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RdsId"] as? String {
            self.rdsId = value
        }
        if let value = dict["RdsPassword"] as? String {
            self.rdsPassword = value
        }
        if let value = dict["RdsPort"] as? Int64 {
            self.rdsPort = value
        }
        if let value = dict["RdsSynDb"] as? String {
            self.rdsSynDb = value
        }
        if let value = dict["RdsSynTables"] as? String {
            self.rdsSynTables = value
        }
        if let value = dict["RdsUserName"] as? String {
            self.rdsUserName = value
        }
        if let value = dict["RdsVpcId"] as? String {
            self.rdsVpcId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SkipUnsupported"] as? Bool {
            self.skipUnsupported = value
        }
    }
}

public class ModifyRDSToClickhouseDbResponseBody : Tea.TeaModel {
    public var errorCode: Int64?

    public var errorMsg: String?

    public var requestId: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrorCode"] as? Int64 {
            self.errorCode = value
        }
        if let value = dict["ErrorMsg"] as? String {
            self.errorMsg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? Int64 {
            self.status = value
        }
    }
}

public class ModifyRDSToClickhouseDbResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyRDSToClickhouseDbResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyRDSToClickhouseDbResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReleaseClusterPublicConnectionRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class ReleaseClusterPublicConnectionResponseBody : Tea.TeaModel {
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

public class ReleaseClusterPublicConnectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReleaseClusterPublicConnectionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ReleaseClusterPublicConnectionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ResetAccountPasswordRequest : Tea.TeaModel {
    public var accountName: String?

    public var accountPassword: String?

    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

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
        if self.accountName != nil {
            map["AccountName"] = self.accountName!
        }
        if self.accountPassword != nil {
            map["AccountPassword"] = self.accountPassword!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        if let value = dict["AccountName"] as? String {
            self.accountName = value
        }
        if let value = dict["AccountPassword"] as? String {
            self.accountPassword = value
        }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
    }
}

public class ResetAccountPasswordResponseBody : Tea.TeaModel {
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

public class RestartInstanceRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var restartTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
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
        if self.restartTime != nil {
            map["RestartTime"] = self.restartTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
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
        if let value = dict["RestartTime"] as? String {
            self.restartTime = value
        }
    }
}

public class RestartInstanceResponseBody : Tea.TeaModel {
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

public class RestartInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RestartInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RestartInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RestartInstanceNodeListRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var nodeList: [String]?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var restartTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.nodeList != nil {
            map["NodeList"] = self.nodeList!
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
        if self.restartTime != nil {
            map["RestartTime"] = self.restartTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["NodeList"] as? [String] {
            self.nodeList = value
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
        if let value = dict["RestartTime"] as? String {
            self.restartTime = value
        }
    }
}

public class RestartInstanceNodeListShrinkRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var nodeListShrink: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var restartTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.nodeListShrink != nil {
            map["NodeList"] = self.nodeListShrink!
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
        if self.restartTime != nil {
            map["RestartTime"] = self.restartTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["NodeList"] as? String {
            self.nodeListShrink = value
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
        if let value = dict["RestartTime"] as? String {
            self.restartTime = value
        }
    }
}

public class RestartInstanceNodeListResponseBody : Tea.TeaModel {
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

public class RestartInstanceNodeListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RestartInstanceNodeListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RestartInstanceNodeListResponseBody()
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
    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceId: [String]?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
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
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

public class TransferVersionRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var disableWriteWindows: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var sourceAccount: String?

    public var sourceClusterName: String?

    public var sourcePassword: String?

    public var sourceShards: String?

    public var targetAccount: String?

    public var targetDbClusterId: String?

    public var targetPassword: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.disableWriteWindows != nil {
            map["DisableWriteWindows"] = self.disableWriteWindows!
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
        if self.sourceAccount != nil {
            map["SourceAccount"] = self.sourceAccount!
        }
        if self.sourceClusterName != nil {
            map["SourceClusterName"] = self.sourceClusterName!
        }
        if self.sourcePassword != nil {
            map["SourcePassword"] = self.sourcePassword!
        }
        if self.sourceShards != nil {
            map["SourceShards"] = self.sourceShards!
        }
        if self.targetAccount != nil {
            map["TargetAccount"] = self.targetAccount!
        }
        if self.targetDbClusterId != nil {
            map["TargetDbClusterId"] = self.targetDbClusterId!
        }
        if self.targetPassword != nil {
            map["TargetPassword"] = self.targetPassword!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["DisableWriteWindows"] as? String {
            self.disableWriteWindows = value
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
        if let value = dict["SourceAccount"] as? String {
            self.sourceAccount = value
        }
        if let value = dict["SourceClusterName"] as? String {
            self.sourceClusterName = value
        }
        if let value = dict["SourcePassword"] as? String {
            self.sourcePassword = value
        }
        if let value = dict["SourceShards"] as? String {
            self.sourceShards = value
        }
        if let value = dict["TargetAccount"] as? String {
            self.targetAccount = value
        }
        if let value = dict["TargetDbClusterId"] as? String {
            self.targetDbClusterId = value
        }
        if let value = dict["TargetPassword"] as? String {
            self.targetPassword = value
        }
    }
}

public class TransferVersionResponseBody : Tea.TeaModel {
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

public class TransferVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TransferVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = TransferVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UntagResourcesRequest : Tea.TeaModel {
    public var all: Bool?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceId: [String]?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
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
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

public class UpgradeMinorVersionRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var upgradeImmediately: Bool?

    public var upgradeTime: String?

    public var upgradeVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.upgradeImmediately != nil {
            map["UpgradeImmediately"] = self.upgradeImmediately!
        }
        if self.upgradeTime != nil {
            map["UpgradeTime"] = self.upgradeTime!
        }
        if self.upgradeVersion != nil {
            map["UpgradeVersion"] = self.upgradeVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["UpgradeImmediately"] as? Bool {
            self.upgradeImmediately = value
        }
        if let value = dict["UpgradeTime"] as? String {
            self.upgradeTime = value
        }
        if let value = dict["UpgradeVersion"] as? String {
            self.upgradeVersion = value
        }
    }
}

public class UpgradeMinorVersionResponseBody : Tea.TeaModel {
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

public class UpgradeMinorVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpgradeMinorVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpgradeMinorVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
