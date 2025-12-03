import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddUserHdfsInfoRequest : Tea.TeaModel {
    public var clientToken: String?

    public var clusterId: String?

    public var extInfo: String?

    public override init() {
        super.init()
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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.extInfo != nil {
            map["ExtInfo"] = self.extInfo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["ExtInfo"] as? String {
            self.extInfo = value
        }
    }
}

public class AddUserHdfsInfoResponseBody : Tea.TeaModel {
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

public class AddUserHdfsInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddUserHdfsInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddUserHdfsInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AllocatePublicNetworkAddressRequest : Tea.TeaModel {
    public var clientToken: String?

    public var clusterId: String?

    public override init() {
        super.init()
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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
    }
}

public class AllocatePublicNetworkAddressResponseBody : Tea.TeaModel {
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

public class AllocatePublicNetworkAddressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AllocatePublicNetworkAddressResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AllocatePublicNetworkAddressResponseBody()
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

public class CheckComponentsVersionRequest : Tea.TeaModel {
    public var clusterId: String?

    public var components: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.components != nil {
            map["Components"] = self.components!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["Components"] as? String {
            self.components = value
        }
    }
}

public class CheckComponentsVersionResponseBody : Tea.TeaModel {
    public class Components : Tea.TeaModel {
        public class Component : Tea.TeaModel {
            public var component: String?

            public var isLatestVersion: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.component != nil {
                    map["Component"] = self.component!
                }
                if self.isLatestVersion != nil {
                    map["IsLatestVersion"] = self.isLatestVersion!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Component"] as? String {
                    self.component = value
                }
                if let value = dict["IsLatestVersion"] as? String {
                    self.isLatestVersion = value
                }
            }
        }
        public var component: [CheckComponentsVersionResponseBody.Components.Component]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.component != nil {
                var tmp : [Any] = []
                for k in self.component! {
                    tmp.append(k.toMap())
                }
                map["Component"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Component"] as? [Any?] {
                var tmp : [CheckComponentsVersionResponseBody.Components.Component] = []
                for v in value {
                    if v != nil {
                        var model = CheckComponentsVersionResponseBody.Components.Component()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.component = tmp
            }
        }
    }
    public var components: CheckComponentsVersionResponseBody.Components?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.components?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.components != nil {
            map["Components"] = self.components?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Components"] as? [String: Any?] {
            var model = CheckComponentsVersionResponseBody.Components()
            model.fromMap(value)
            self.components = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CheckComponentsVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckComponentsVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CheckComponentsVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CloseBackupRequest : Tea.TeaModel {
    public var clusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
    }
}

public class CloseBackupResponseBody : Tea.TeaModel {
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

public class CloseBackupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloseBackupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CloseBackupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ConvertInstanceRequest : Tea.TeaModel {
    public var clusterId: String?

    public var duration: Int32?

    public var payType: String?

    public var pricingCycle: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.pricingCycle != nil {
            map["PricingCycle"] = self.pricingCycle!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["Duration"] as? Int32 {
            self.duration = value
        }
        if let value = dict["PayType"] as? String {
            self.payType = value
        }
        if let value = dict["PricingCycle"] as? String {
            self.pricingCycle = value
        }
    }
}

public class ConvertInstanceResponseBody : Tea.TeaModel {
    public var orderId: Int64?

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
        if let value = dict["OrderId"] as? Int64 {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ConvertInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConvertInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ConvertInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAccountRequest : Tea.TeaModel {
    public var accountName: String?

    public var accountPassword: String?

    public var clusterId: String?

    public override init() {
        super.init()
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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
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
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
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

public class CreateBackupPlanRequest : Tea.TeaModel {
    public var clusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
    }
}

public class CreateBackupPlanResponseBody : Tea.TeaModel {
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

public class CreateBackupPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateBackupPlanResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateBackupPlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateClusterRequest : Tea.TeaModel {
    public var autoRenewPeriod: Int32?

    public var clientToken: String?

    public var clusterName: String?

    public var coldStorageSize: Int32?

    public var coreInstanceType: String?

    public var diskSize: Int32?

    public var diskType: String?

    public var encryptionKey: String?

    public var engine: String?

    public var engineVersion: String?

    public var masterInstanceType: String?

    public var nodeCount: Int32?

    public var payType: String?

    public var period: Int32?

    public var periodUnit: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var securityIPList: String?

    public var vSwitchId: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoRenewPeriod != nil {
            map["AutoRenewPeriod"] = self.autoRenewPeriod!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
        }
        if self.coldStorageSize != nil {
            map["ColdStorageSize"] = self.coldStorageSize!
        }
        if self.coreInstanceType != nil {
            map["CoreInstanceType"] = self.coreInstanceType!
        }
        if self.diskSize != nil {
            map["DiskSize"] = self.diskSize!
        }
        if self.diskType != nil {
            map["DiskType"] = self.diskType!
        }
        if self.encryptionKey != nil {
            map["EncryptionKey"] = self.encryptionKey!
        }
        if self.engine != nil {
            map["Engine"] = self.engine!
        }
        if self.engineVersion != nil {
            map["EngineVersion"] = self.engineVersion!
        }
        if self.masterInstanceType != nil {
            map["MasterInstanceType"] = self.masterInstanceType!
        }
        if self.nodeCount != nil {
            map["NodeCount"] = self.nodeCount!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.securityIPList != nil {
            map["SecurityIPList"] = self.securityIPList!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
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
        if let value = dict["AutoRenewPeriod"] as? Int32 {
            self.autoRenewPeriod = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ClusterName"] as? String {
            self.clusterName = value
        }
        if let value = dict["ColdStorageSize"] as? Int32 {
            self.coldStorageSize = value
        }
        if let value = dict["CoreInstanceType"] as? String {
            self.coreInstanceType = value
        }
        if let value = dict["DiskSize"] as? Int32 {
            self.diskSize = value
        }
        if let value = dict["DiskType"] as? String {
            self.diskType = value
        }
        if let value = dict["EncryptionKey"] as? String {
            self.encryptionKey = value
        }
        if let value = dict["Engine"] as? String {
            self.engine = value
        }
        if let value = dict["EngineVersion"] as? String {
            self.engineVersion = value
        }
        if let value = dict["MasterInstanceType"] as? String {
            self.masterInstanceType = value
        }
        if let value = dict["NodeCount"] as? Int32 {
            self.nodeCount = value
        }
        if let value = dict["PayType"] as? String {
            self.payType = value
        }
        if let value = dict["Period"] as? Int32 {
            self.period = value
        }
        if let value = dict["PeriodUnit"] as? String {
            self.periodUnit = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["SecurityIPList"] as? String {
            self.securityIPList = value
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class CreateClusterResponseBody : Tea.TeaModel {
    public var clusterId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
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
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateClusterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateGlobalResourceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var clusterId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
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
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
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

public class CreateGlobalResourceResponseBody : Tea.TeaModel {
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

public class CreateGlobalResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateGlobalResourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateGlobalResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateHBaseSlbServerRequest : Tea.TeaModel {
    public var clientToken: String?

    public var clusterId: String?

    public var slbServer: String?

    public override init() {
        super.init()
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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.slbServer != nil {
            map["SlbServer"] = self.slbServer!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["SlbServer"] as? String {
            self.slbServer = value
        }
    }
}

public class CreateHBaseSlbServerResponseBody : Tea.TeaModel {
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

public class CreateHBaseSlbServerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateHBaseSlbServerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateHBaseSlbServerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateHbaseHaSlbRequest : Tea.TeaModel {
    public var bdsId: String?

    public var clientToken: String?

    public var haId: String?

    public var haTypes: String?

    public var hbaseType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bdsId != nil {
            map["BdsId"] = self.bdsId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.haId != nil {
            map["HaId"] = self.haId!
        }
        if self.haTypes != nil {
            map["HaTypes"] = self.haTypes!
        }
        if self.hbaseType != nil {
            map["HbaseType"] = self.hbaseType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BdsId"] as? String {
            self.bdsId = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["HaId"] as? String {
            self.haId = value
        }
        if let value = dict["HaTypes"] as? String {
            self.haTypes = value
        }
        if let value = dict["HbaseType"] as? String {
            self.hbaseType = value
        }
    }
}

public class CreateHbaseHaSlbResponseBody : Tea.TeaModel {
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

public class CreateHbaseHaSlbResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateHbaseHaSlbResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateHbaseHaSlbResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateMultiZoneClusterRequest : Tea.TeaModel {
    public var arbiterVSwitchId: String?

    public var arbiterZoneId: String?

    public var archVersion: String?

    public var autoRenewPeriod: Int32?

    public var clientToken: String?

    public var clusterName: String?

    public var coreDiskSize: Int32?

    public var coreDiskType: String?

    public var coreInstanceType: String?

    public var coreNodeCount: Int32?

    public var engine: String?

    public var engineVersion: String?

    public var logDiskSize: Int32?

    public var logDiskType: String?

    public var logInstanceType: String?

    public var logNodeCount: Int32?

    public var masterInstanceType: String?

    public var multiZoneCombination: String?

    public var payType: String?

    public var period: Int32?

    public var periodUnit: String?

    public var primaryVSwitchId: String?

    public var primaryZoneId: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var securityIPList: String?

    public var standbyVSwitchId: String?

    public var standbyZoneId: String?

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
        if self.arbiterVSwitchId != nil {
            map["ArbiterVSwitchId"] = self.arbiterVSwitchId!
        }
        if self.arbiterZoneId != nil {
            map["ArbiterZoneId"] = self.arbiterZoneId!
        }
        if self.archVersion != nil {
            map["ArchVersion"] = self.archVersion!
        }
        if self.autoRenewPeriod != nil {
            map["AutoRenewPeriod"] = self.autoRenewPeriod!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
        }
        if self.coreDiskSize != nil {
            map["CoreDiskSize"] = self.coreDiskSize!
        }
        if self.coreDiskType != nil {
            map["CoreDiskType"] = self.coreDiskType!
        }
        if self.coreInstanceType != nil {
            map["CoreInstanceType"] = self.coreInstanceType!
        }
        if self.coreNodeCount != nil {
            map["CoreNodeCount"] = self.coreNodeCount!
        }
        if self.engine != nil {
            map["Engine"] = self.engine!
        }
        if self.engineVersion != nil {
            map["EngineVersion"] = self.engineVersion!
        }
        if self.logDiskSize != nil {
            map["LogDiskSize"] = self.logDiskSize!
        }
        if self.logDiskType != nil {
            map["LogDiskType"] = self.logDiskType!
        }
        if self.logInstanceType != nil {
            map["LogInstanceType"] = self.logInstanceType!
        }
        if self.logNodeCount != nil {
            map["LogNodeCount"] = self.logNodeCount!
        }
        if self.masterInstanceType != nil {
            map["MasterInstanceType"] = self.masterInstanceType!
        }
        if self.multiZoneCombination != nil {
            map["MultiZoneCombination"] = self.multiZoneCombination!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
        }
        if self.primaryVSwitchId != nil {
            map["PrimaryVSwitchId"] = self.primaryVSwitchId!
        }
        if self.primaryZoneId != nil {
            map["PrimaryZoneId"] = self.primaryZoneId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.securityIPList != nil {
            map["SecurityIPList"] = self.securityIPList!
        }
        if self.standbyVSwitchId != nil {
            map["StandbyVSwitchId"] = self.standbyVSwitchId!
        }
        if self.standbyZoneId != nil {
            map["StandbyZoneId"] = self.standbyZoneId!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ArbiterVSwitchId"] as? String {
            self.arbiterVSwitchId = value
        }
        if let value = dict["ArbiterZoneId"] as? String {
            self.arbiterZoneId = value
        }
        if let value = dict["ArchVersion"] as? String {
            self.archVersion = value
        }
        if let value = dict["AutoRenewPeriod"] as? Int32 {
            self.autoRenewPeriod = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ClusterName"] as? String {
            self.clusterName = value
        }
        if let value = dict["CoreDiskSize"] as? Int32 {
            self.coreDiskSize = value
        }
        if let value = dict["CoreDiskType"] as? String {
            self.coreDiskType = value
        }
        if let value = dict["CoreInstanceType"] as? String {
            self.coreInstanceType = value
        }
        if let value = dict["CoreNodeCount"] as? Int32 {
            self.coreNodeCount = value
        }
        if let value = dict["Engine"] as? String {
            self.engine = value
        }
        if let value = dict["EngineVersion"] as? String {
            self.engineVersion = value
        }
        if let value = dict["LogDiskSize"] as? Int32 {
            self.logDiskSize = value
        }
        if let value = dict["LogDiskType"] as? String {
            self.logDiskType = value
        }
        if let value = dict["LogInstanceType"] as? String {
            self.logInstanceType = value
        }
        if let value = dict["LogNodeCount"] as? Int32 {
            self.logNodeCount = value
        }
        if let value = dict["MasterInstanceType"] as? String {
            self.masterInstanceType = value
        }
        if let value = dict["MultiZoneCombination"] as? String {
            self.multiZoneCombination = value
        }
        if let value = dict["PayType"] as? String {
            self.payType = value
        }
        if let value = dict["Period"] as? Int32 {
            self.period = value
        }
        if let value = dict["PeriodUnit"] as? String {
            self.periodUnit = value
        }
        if let value = dict["PrimaryVSwitchId"] as? String {
            self.primaryVSwitchId = value
        }
        if let value = dict["PrimaryZoneId"] as? String {
            self.primaryZoneId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["SecurityIPList"] as? String {
            self.securityIPList = value
        }
        if let value = dict["StandbyVSwitchId"] as? String {
            self.standbyVSwitchId = value
        }
        if let value = dict["StandbyZoneId"] as? String {
            self.standbyZoneId = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
    }
}

public class CreateMultiZoneClusterResponseBody : Tea.TeaModel {
    public var clusterId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
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
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateMultiZoneClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMultiZoneClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateMultiZoneClusterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateRestorePlanRequest : Tea.TeaModel {
    public var clusterId: String?

    public var restoreAllTable: Bool?

    public var restoreByCopy: Bool?

    public var restoreToDate: String?

    public var tables: String?

    public var targetClusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.restoreAllTable != nil {
            map["RestoreAllTable"] = self.restoreAllTable!
        }
        if self.restoreByCopy != nil {
            map["RestoreByCopy"] = self.restoreByCopy!
        }
        if self.restoreToDate != nil {
            map["RestoreToDate"] = self.restoreToDate!
        }
        if self.tables != nil {
            map["Tables"] = self.tables!
        }
        if self.targetClusterId != nil {
            map["TargetClusterId"] = self.targetClusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["RestoreAllTable"] as? Bool {
            self.restoreAllTable = value
        }
        if let value = dict["RestoreByCopy"] as? Bool {
            self.restoreByCopy = value
        }
        if let value = dict["RestoreToDate"] as? String {
            self.restoreToDate = value
        }
        if let value = dict["Tables"] as? String {
            self.tables = value
        }
        if let value = dict["TargetClusterId"] as? String {
            self.targetClusterId = value
        }
    }
}

public class CreateRestorePlanResponseBody : Tea.TeaModel {
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

public class CreateRestorePlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRestorePlanResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateRestorePlanResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateServerlessClusterRequest : Tea.TeaModel {
    public var autoRenewPeriod: Int32?

    public var clientToken: String?

    public var clientType: String?

    public var clusterName: String?

    public var diskType: String?

    public var engine: String?

    public var engineVersion: String?

    public var payType: String?

    public var period: Int32?

    public var periodUnit: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var serverlessCapability: Int32?

    public var serverlessSpec: String?

    public var serverlessStorage: Int32?

    public var vSwitchId: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoRenewPeriod != nil {
            map["AutoRenewPeriod"] = self.autoRenewPeriod!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.clientType != nil {
            map["ClientType"] = self.clientType!
        }
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
        }
        if self.diskType != nil {
            map["DiskType"] = self.diskType!
        }
        if self.engine != nil {
            map["Engine"] = self.engine!
        }
        if self.engineVersion != nil {
            map["EngineVersion"] = self.engineVersion!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.serverlessCapability != nil {
            map["ServerlessCapability"] = self.serverlessCapability!
        }
        if self.serverlessSpec != nil {
            map["ServerlessSpec"] = self.serverlessSpec!
        }
        if self.serverlessStorage != nil {
            map["ServerlessStorage"] = self.serverlessStorage!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
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
        if let value = dict["AutoRenewPeriod"] as? Int32 {
            self.autoRenewPeriod = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ClientType"] as? String {
            self.clientType = value
        }
        if let value = dict["ClusterName"] as? String {
            self.clusterName = value
        }
        if let value = dict["DiskType"] as? String {
            self.diskType = value
        }
        if let value = dict["Engine"] as? String {
            self.engine = value
        }
        if let value = dict["EngineVersion"] as? String {
            self.engineVersion = value
        }
        if let value = dict["PayType"] as? String {
            self.payType = value
        }
        if let value = dict["Period"] as? Int32 {
            self.period = value
        }
        if let value = dict["PeriodUnit"] as? String {
            self.periodUnit = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ServerlessCapability"] as? Int32 {
            self.serverlessCapability = value
        }
        if let value = dict["ServerlessSpec"] as? String {
            self.serverlessSpec = value
        }
        if let value = dict["ServerlessStorage"] as? Int32 {
            self.serverlessStorage = value
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class CreateServerlessClusterResponseBody : Tea.TeaModel {
    public var clusterId: String?

    public var orderId: String?

    public var passWord: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.passWord != nil {
            map["PassWord"] = self.passWord!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["PassWord"] as? String {
            self.passWord = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateServerlessClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateServerlessClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateServerlessClusterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAccountRequest : Tea.TeaModel {
    public var accountName: String?

    public var clusterId: String?

    public override init() {
        super.init()
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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountName"] as? String {
            self.accountName = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
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

public class DeleteGlobalResourceRequest : Tea.TeaModel {
    public var clusterId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
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
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
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

public class DeleteGlobalResourceResponseBody : Tea.TeaModel {
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

public class DeleteGlobalResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteGlobalResourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteGlobalResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteHBaseHaDBRequest : Tea.TeaModel {
    public var bdsId: String?

    public var haId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bdsId != nil {
            map["BdsId"] = self.bdsId!
        }
        if self.haId != nil {
            map["HaId"] = self.haId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BdsId"] as? String {
            self.bdsId = value
        }
        if let value = dict["HaId"] as? String {
            self.haId = value
        }
    }
}

public class DeleteHBaseHaDBResponseBody : Tea.TeaModel {
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

public class DeleteHBaseHaDBResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteHBaseHaDBResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteHBaseHaDBResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteHBaseSlbServerRequest : Tea.TeaModel {
    public var clusterId: String?

    public var slbServer: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.slbServer != nil {
            map["SlbServer"] = self.slbServer!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["SlbServer"] as? String {
            self.slbServer = value
        }
    }
}

public class DeleteHBaseSlbServerResponseBody : Tea.TeaModel {
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

public class DeleteHBaseSlbServerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteHBaseSlbServerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteHBaseSlbServerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteHbaseHaSlbRequest : Tea.TeaModel {
    public var bdsId: String?

    public var haId: String?

    public var haTypes: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bdsId != nil {
            map["BdsId"] = self.bdsId!
        }
        if self.haId != nil {
            map["HaId"] = self.haId!
        }
        if self.haTypes != nil {
            map["HaTypes"] = self.haTypes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BdsId"] as? String {
            self.bdsId = value
        }
        if let value = dict["HaId"] as? String {
            self.haId = value
        }
        if let value = dict["HaTypes"] as? String {
            self.haTypes = value
        }
    }
}

public class DeleteHbaseHaSlbResponseBody : Tea.TeaModel {
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

public class DeleteHbaseHaSlbResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteHbaseHaSlbResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteHbaseHaSlbResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteInstanceRequest : Tea.TeaModel {
    public var clusterId: String?

    public var immediateDeleteFlag: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.immediateDeleteFlag != nil {
            map["ImmediateDeleteFlag"] = self.immediateDeleteFlag!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["ImmediateDeleteFlag"] as? Bool {
            self.immediateDeleteFlag = value
        }
    }
}

public class DeleteInstanceResponseBody : Tea.TeaModel {
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

public class DeleteInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteMultiZoneClusterRequest : Tea.TeaModel {
    public var clusterId: String?

    public var immediateDeleteFlag: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.immediateDeleteFlag != nil {
            map["ImmediateDeleteFlag"] = self.immediateDeleteFlag!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["ImmediateDeleteFlag"] as? Bool {
            self.immediateDeleteFlag = value
        }
    }
}

public class DeleteMultiZoneClusterResponseBody : Tea.TeaModel {
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

public class DeleteMultiZoneClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteMultiZoneClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteMultiZoneClusterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteServerlessClusterRequest : Tea.TeaModel {
    public var clusterId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
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
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class DeleteServerlessClusterResponseBody : Tea.TeaModel {
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

public class DeleteServerlessClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteServerlessClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteServerlessClusterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteUserHdfsInfoRequest : Tea.TeaModel {
    public var clusterId: String?

    public var nameService: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.nameService != nil {
            map["NameService"] = self.nameService!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["NameService"] as? String {
            self.nameService = value
        }
    }
}

public class DeleteUserHdfsInfoResponseBody : Tea.TeaModel {
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

public class DeleteUserHdfsInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUserHdfsInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteUserHdfsInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAccountsRequest : Tea.TeaModel {
    public var clusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
    }
}

public class DescribeAccountsResponseBody : Tea.TeaModel {
    public class Accounts : Tea.TeaModel {
        public var account: [String]?

        public override init() {
            super.init()
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
                map["account"] = self.account!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["account"] as? [String] {
                self.account = value
            }
        }
    }
    public var accounts: DescribeAccountsResponseBody.Accounts?

    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

public class DescribeActiveOperationTaskTypeRequest : Tea.TeaModel {
    public var isHistory: Int32?

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
        if self.isHistory != nil {
            map["IsHistory"] = self.isHistory!
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
        if let value = dict["IsHistory"] as? Int32 {
            self.isHistory = value
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

public class DescribeActiveOperationTaskTypeResponseBody : Tea.TeaModel {
    public class TypeList : Tea.TeaModel {
        public var count: Int32?

        public var taskType: String?

        public var taskTypeInfoEn: String?

        public var taskTypeInfoZh: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.count != nil {
                map["Count"] = self.count!
            }
            if self.taskType != nil {
                map["TaskType"] = self.taskType!
            }
            if self.taskTypeInfoEn != nil {
                map["TaskTypeInfoEn"] = self.taskTypeInfoEn!
            }
            if self.taskTypeInfoZh != nil {
                map["TaskTypeInfoZh"] = self.taskTypeInfoZh!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Count"] as? Int32 {
                self.count = value
            }
            if let value = dict["TaskType"] as? String {
                self.taskType = value
            }
            if let value = dict["TaskTypeInfoEn"] as? String {
                self.taskTypeInfoEn = value
            }
            if let value = dict["TaskTypeInfoZh"] as? String {
                self.taskTypeInfoZh = value
            }
        }
    }
    public var requestId: String?

    public var typeList: [DescribeActiveOperationTaskTypeResponseBody.TypeList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.typeList != nil {
            var tmp : [Any] = []
            for k in self.typeList! {
                tmp.append(k.toMap())
            }
            map["TypeList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TypeList"] as? [Any?] {
            var tmp : [DescribeActiveOperationTaskTypeResponseBody.TypeList] = []
            for v in value {
                if v != nil {
                    var model = DescribeActiveOperationTaskTypeResponseBody.TypeList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.typeList = tmp
        }
    }
}

public class DescribeActiveOperationTaskTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeActiveOperationTaskTypeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeActiveOperationTaskTypeResponseBody()
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
            if let value = dict["Id"] as? Int32 {
                self.id = value
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

public class DescribeAvailableResourceRequest : Tea.TeaModel {
    public var chargeType: String?

    public var coreInstanceType: String?

    public var diskType: String?

    public var engine: String?

    public var engineVersion: String?

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
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.coreInstanceType != nil {
            map["CoreInstanceType"] = self.coreInstanceType!
        }
        if self.diskType != nil {
            map["DiskType"] = self.diskType!
        }
        if self.engine != nil {
            map["Engine"] = self.engine!
        }
        if self.engineVersion != nil {
            map["EngineVersion"] = self.engineVersion!
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
        if let value = dict["ChargeType"] as? String {
            self.chargeType = value
        }
        if let value = dict["CoreInstanceType"] as? String {
            self.coreInstanceType = value
        }
        if let value = dict["DiskType"] as? String {
            self.diskType = value
        }
        if let value = dict["Engine"] as? String {
            self.engine = value
        }
        if let value = dict["EngineVersion"] as? String {
            self.engineVersion = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class DescribeAvailableResourceResponseBody : Tea.TeaModel {
    public class AvailableZones : Tea.TeaModel {
        public class AvailableZone : Tea.TeaModel {
            public class MasterResources : Tea.TeaModel {
                public class MasterResource : Tea.TeaModel {
                    public class InstanceTypeDetail : Tea.TeaModel {
                        public var cpu: Int32?

                        public var mem: Int32?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.cpu != nil {
                                map["Cpu"] = self.cpu!
                            }
                            if self.mem != nil {
                                map["Mem"] = self.mem!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Cpu"] as? Int32 {
                                self.cpu = value
                            }
                            if let value = dict["Mem"] as? Int32 {
                                self.mem = value
                            }
                        }
                    }
                    public var instanceType: String?

                    public var instanceTypeDetail: DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.MasterResources.MasterResource.InstanceTypeDetail?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.instanceTypeDetail?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.instanceType != nil {
                            map["InstanceType"] = self.instanceType!
                        }
                        if self.instanceTypeDetail != nil {
                            map["InstanceTypeDetail"] = self.instanceTypeDetail?.toMap()
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["InstanceType"] as? String {
                            self.instanceType = value
                        }
                        if let value = dict["InstanceTypeDetail"] as? [String: Any?] {
                            var model = DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.MasterResources.MasterResource.InstanceTypeDetail()
                            model.fromMap(value)
                            self.instanceTypeDetail = model
                        }
                    }
                }
                public var masterResource: [DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.MasterResources.MasterResource]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.masterResource != nil {
                        var tmp : [Any] = []
                        for k in self.masterResource! {
                            tmp.append(k.toMap())
                        }
                        map["MasterResource"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["MasterResource"] as? [Any?] {
                        var tmp : [DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.MasterResources.MasterResource] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.MasterResources.MasterResource()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.masterResource = tmp
                    }
                }
            }
            public class SupportedEngines : Tea.TeaModel {
                public class SupportedEngine : Tea.TeaModel {
                    public class SupportedEngineVersions : Tea.TeaModel {
                        public class SupportedEngineVersion : Tea.TeaModel {
                            public class SupportedCategories : Tea.TeaModel {
                                public class SupportedCategories : Tea.TeaModel {
                                    public class SupportedStorageTypes : Tea.TeaModel {
                                        public class SupportedStorageType : Tea.TeaModel {
                                            public class CoreResources : Tea.TeaModel {
                                                public class CoreResource : Tea.TeaModel {
                                                    public class DBInstanceStorageRange : Tea.TeaModel {
                                                        public var maxSize: Int32?

                                                        public var minSize: Int32?

                                                        public var stepSize: Int32?

                                                        public override init() {
                                                            super.init()
                                                        }

                                                        public init(_ dict: [String: Any]) {
                                                            super.init()
                                                            self.fromMap(dict)
                                                        }

                                                        public override func validate() throws -> Void {
                                                        }

                                                        public override func toMap() -> [String : Any] {
                                                            var map = super.toMap()
                                                            if self.maxSize != nil {
                                                                map["MaxSize"] = self.maxSize!
                                                            }
                                                            if self.minSize != nil {
                                                                map["MinSize"] = self.minSize!
                                                            }
                                                            if self.stepSize != nil {
                                                                map["StepSize"] = self.stepSize!
                                                            }
                                                            return map
                                                        }

                                                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                                            guard let dict else { return }
                                                            if let value = dict["MaxSize"] as? Int32 {
                                                                self.maxSize = value
                                                            }
                                                            if let value = dict["MinSize"] as? Int32 {
                                                                self.minSize = value
                                                            }
                                                            if let value = dict["StepSize"] as? Int32 {
                                                                self.stepSize = value
                                                            }
                                                        }
                                                    }
                                                    public class InstanceTypeDetail : Tea.TeaModel {
                                                        public var cpu: Int32?

                                                        public var mem: Int32?

                                                        public override init() {
                                                            super.init()
                                                        }

                                                        public init(_ dict: [String: Any]) {
                                                            super.init()
                                                            self.fromMap(dict)
                                                        }

                                                        public override func validate() throws -> Void {
                                                        }

                                                        public override func toMap() -> [String : Any] {
                                                            var map = super.toMap()
                                                            if self.cpu != nil {
                                                                map["Cpu"] = self.cpu!
                                                            }
                                                            if self.mem != nil {
                                                                map["Mem"] = self.mem!
                                                            }
                                                            return map
                                                        }

                                                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                                            guard let dict else { return }
                                                            if let value = dict["Cpu"] as? Int32 {
                                                                self.cpu = value
                                                            }
                                                            if let value = dict["Mem"] as? Int32 {
                                                                self.mem = value
                                                            }
                                                        }
                                                    }
                                                    public var DBInstanceStorageRange: DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories.SupportedStorageTypes.SupportedStorageType.CoreResources.CoreResource.DBInstanceStorageRange?

                                                    public var instanceType: String?

                                                    public var instanceTypeDetail: DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories.SupportedStorageTypes.SupportedStorageType.CoreResources.CoreResource.InstanceTypeDetail?

                                                    public var maxCoreCount: Int32?

                                                    public override init() {
                                                        super.init()
                                                    }

                                                    public init(_ dict: [String: Any]) {
                                                        super.init()
                                                        self.fromMap(dict)
                                                    }

                                                    public override func validate() throws -> Void {
                                                        try self.DBInstanceStorageRange?.validate()
                                                        try self.instanceTypeDetail?.validate()
                                                    }

                                                    public override func toMap() -> [String : Any] {
                                                        var map = super.toMap()
                                                        if self.DBInstanceStorageRange != nil {
                                                            map["DBInstanceStorageRange"] = self.DBInstanceStorageRange?.toMap()
                                                        }
                                                        if self.instanceType != nil {
                                                            map["InstanceType"] = self.instanceType!
                                                        }
                                                        if self.instanceTypeDetail != nil {
                                                            map["InstanceTypeDetail"] = self.instanceTypeDetail?.toMap()
                                                        }
                                                        if self.maxCoreCount != nil {
                                                            map["MaxCoreCount"] = self.maxCoreCount!
                                                        }
                                                        return map
                                                    }

                                                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                                        guard let dict else { return }
                                                        if let value = dict["DBInstanceStorageRange"] as? [String: Any?] {
                                                            var model = DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories.SupportedStorageTypes.SupportedStorageType.CoreResources.CoreResource.DBInstanceStorageRange()
                                                            model.fromMap(value)
                                                            self.DBInstanceStorageRange = model
                                                        }
                                                        if let value = dict["InstanceType"] as? String {
                                                            self.instanceType = value
                                                        }
                                                        if let value = dict["InstanceTypeDetail"] as? [String: Any?] {
                                                            var model = DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories.SupportedStorageTypes.SupportedStorageType.CoreResources.CoreResource.InstanceTypeDetail()
                                                            model.fromMap(value)
                                                            self.instanceTypeDetail = model
                                                        }
                                                        if let value = dict["MaxCoreCount"] as? Int32 {
                                                            self.maxCoreCount = value
                                                        }
                                                    }
                                                }
                                                public var coreResource: [DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories.SupportedStorageTypes.SupportedStorageType.CoreResources.CoreResource]?

                                                public override init() {
                                                    super.init()
                                                }

                                                public init(_ dict: [String: Any]) {
                                                    super.init()
                                                    self.fromMap(dict)
                                                }

                                                public override func validate() throws -> Void {
                                                }

                                                public override func toMap() -> [String : Any] {
                                                    var map = super.toMap()
                                                    if self.coreResource != nil {
                                                        var tmp : [Any] = []
                                                        for k in self.coreResource! {
                                                            tmp.append(k.toMap())
                                                        }
                                                        map["CoreResource"] = tmp
                                                    }
                                                    return map
                                                }

                                                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                                    guard let dict else { return }
                                                    if let value = dict["CoreResource"] as? [Any?] {
                                                        var tmp : [DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories.SupportedStorageTypes.SupportedStorageType.CoreResources.CoreResource] = []
                                                        for v in value {
                                                            if v != nil {
                                                                var model = DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories.SupportedStorageTypes.SupportedStorageType.CoreResources.CoreResource()
                                                                if v != nil {
                                                                    model.fromMap(v as? [String: Any?])
                                                                }
                                                                tmp.append(model)
                                                            }
                                                        }
                                                        self.coreResource = tmp
                                                    }
                                                }
                                            }
                                            public var coreResources: DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories.SupportedStorageTypes.SupportedStorageType.CoreResources?

                                            public var storageType: String?

                                            public override init() {
                                                super.init()
                                            }

                                            public init(_ dict: [String: Any]) {
                                                super.init()
                                                self.fromMap(dict)
                                            }

                                            public override func validate() throws -> Void {
                                                try self.coreResources?.validate()
                                            }

                                            public override func toMap() -> [String : Any] {
                                                var map = super.toMap()
                                                if self.coreResources != nil {
                                                    map["CoreResources"] = self.coreResources?.toMap()
                                                }
                                                if self.storageType != nil {
                                                    map["StorageType"] = self.storageType!
                                                }
                                                return map
                                            }

                                            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                                guard let dict else { return }
                                                if let value = dict["CoreResources"] as? [String: Any?] {
                                                    var model = DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories.SupportedStorageTypes.SupportedStorageType.CoreResources()
                                                    model.fromMap(value)
                                                    self.coreResources = model
                                                }
                                                if let value = dict["StorageType"] as? String {
                                                    self.storageType = value
                                                }
                                            }
                                        }
                                        public var supportedStorageType: [DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories.SupportedStorageTypes.SupportedStorageType]?

                                        public override init() {
                                            super.init()
                                        }

                                        public init(_ dict: [String: Any]) {
                                            super.init()
                                            self.fromMap(dict)
                                        }

                                        public override func validate() throws -> Void {
                                        }

                                        public override func toMap() -> [String : Any] {
                                            var map = super.toMap()
                                            if self.supportedStorageType != nil {
                                                var tmp : [Any] = []
                                                for k in self.supportedStorageType! {
                                                    tmp.append(k.toMap())
                                                }
                                                map["SupportedStorageType"] = tmp
                                            }
                                            return map
                                        }

                                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                            guard let dict else { return }
                                            if let value = dict["SupportedStorageType"] as? [Any?] {
                                                var tmp : [DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories.SupportedStorageTypes.SupportedStorageType] = []
                                                for v in value {
                                                    if v != nil {
                                                        var model = DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories.SupportedStorageTypes.SupportedStorageType()
                                                        if v != nil {
                                                            model.fromMap(v as? [String: Any?])
                                                        }
                                                        tmp.append(model)
                                                    }
                                                }
                                                self.supportedStorageType = tmp
                                            }
                                        }
                                    }
                                    public var category: String?

                                    public var supportedStorageTypes: DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories.SupportedStorageTypes?

                                    public override init() {
                                        super.init()
                                    }

                                    public init(_ dict: [String: Any]) {
                                        super.init()
                                        self.fromMap(dict)
                                    }

                                    public override func validate() throws -> Void {
                                        try self.supportedStorageTypes?.validate()
                                    }

                                    public override func toMap() -> [String : Any] {
                                        var map = super.toMap()
                                        if self.category != nil {
                                            map["Category"] = self.category!
                                        }
                                        if self.supportedStorageTypes != nil {
                                            map["SupportedStorageTypes"] = self.supportedStorageTypes?.toMap()
                                        }
                                        return map
                                    }

                                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                        guard let dict else { return }
                                        if let value = dict["Category"] as? String {
                                            self.category = value
                                        }
                                        if let value = dict["SupportedStorageTypes"] as? [String: Any?] {
                                            var model = DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories.SupportedStorageTypes()
                                            model.fromMap(value)
                                            self.supportedStorageTypes = model
                                        }
                                    }
                                }
                                public var supportedCategories: [DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories]?

                                public override init() {
                                    super.init()
                                }

                                public init(_ dict: [String: Any]) {
                                    super.init()
                                    self.fromMap(dict)
                                }

                                public override func validate() throws -> Void {
                                }

                                public override func toMap() -> [String : Any] {
                                    var map = super.toMap()
                                    if self.supportedCategories != nil {
                                        var tmp : [Any] = []
                                        for k in self.supportedCategories! {
                                            tmp.append(k.toMap())
                                        }
                                        map["SupportedCategories"] = tmp
                                    }
                                    return map
                                }

                                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                    guard let dict else { return }
                                    if let value = dict["SupportedCategories"] as? [Any?] {
                                        var tmp : [DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories] = []
                                        for v in value {
                                            if v != nil {
                                                var model = DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories()
                                                if v != nil {
                                                    model.fromMap(v as? [String: Any?])
                                                }
                                                tmp.append(model)
                                            }
                                        }
                                        self.supportedCategories = tmp
                                    }
                                }
                            }
                            public var supportedCategories: DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories?

                            public var version: String?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                                try self.supportedCategories?.validate()
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.supportedCategories != nil {
                                    map["SupportedCategories"] = self.supportedCategories?.toMap()
                                }
                                if self.version != nil {
                                    map["Version"] = self.version!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                guard let dict else { return }
                                if let value = dict["SupportedCategories"] as? [String: Any?] {
                                    var model = DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories()
                                    model.fromMap(value)
                                    self.supportedCategories = model
                                }
                                if let value = dict["Version"] as? String {
                                    self.version = value
                                }
                            }
                        }
                        public var supportedEngineVersion: [DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion]?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.supportedEngineVersion != nil {
                                var tmp : [Any] = []
                                for k in self.supportedEngineVersion! {
                                    tmp.append(k.toMap())
                                }
                                map["SupportedEngineVersion"] = tmp
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["SupportedEngineVersion"] as? [Any?] {
                                var tmp : [DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion] = []
                                for v in value {
                                    if v != nil {
                                        var model = DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion()
                                        if v != nil {
                                            model.fromMap(v as? [String: Any?])
                                        }
                                        tmp.append(model)
                                    }
                                }
                                self.supportedEngineVersion = tmp
                            }
                        }
                    }
                    public var engine: String?

                    public var supportedEngineVersions: DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.supportedEngineVersions?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.engine != nil {
                            map["Engine"] = self.engine!
                        }
                        if self.supportedEngineVersions != nil {
                            map["SupportedEngineVersions"] = self.supportedEngineVersions?.toMap()
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Engine"] as? String {
                            self.engine = value
                        }
                        if let value = dict["SupportedEngineVersions"] as? [String: Any?] {
                            var model = DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions()
                            model.fromMap(value)
                            self.supportedEngineVersions = model
                        }
                    }
                }
                public var supportedEngine: [DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.supportedEngine != nil {
                        var tmp : [Any] = []
                        for k in self.supportedEngine! {
                            tmp.append(k.toMap())
                        }
                        map["SupportedEngine"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["SupportedEngine"] as? [Any?] {
                        var tmp : [DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.supportedEngine = tmp
                    }
                }
            }
            public var masterResources: DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.MasterResources?

            public var regionId: String?

            public var supportedEngines: DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines?

            public var zoneId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.masterResources?.validate()
                try self.supportedEngines?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.masterResources != nil {
                    map["MasterResources"] = self.masterResources?.toMap()
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.supportedEngines != nil {
                    map["SupportedEngines"] = self.supportedEngines?.toMap()
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["MasterResources"] as? [String: Any?] {
                    var model = DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.MasterResources()
                    model.fromMap(value)
                    self.masterResources = model
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["SupportedEngines"] as? [String: Any?] {
                    var model = DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines()
                    model.fromMap(value)
                    self.supportedEngines = model
                }
                if let value = dict["ZoneId"] as? String {
                    self.zoneId = value
                }
            }
        }
        public var availableZone: [DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.availableZone != nil {
                var tmp : [Any] = []
                for k in self.availableZone! {
                    tmp.append(k.toMap())
                }
                map["AvailableZone"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AvailableZone"] as? [Any?] {
                var tmp : [DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.availableZone = tmp
            }
        }
    }
    public var availableZones: DescribeAvailableResourceResponseBody.AvailableZones?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.availableZones?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.availableZones != nil {
            map["AvailableZones"] = self.availableZones?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AvailableZones"] as? [String: Any?] {
            var model = DescribeAvailableResourceResponseBody.AvailableZones()
            model.fromMap(value)
            self.availableZones = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeAvailableResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAvailableResourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeAvailableResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeBackupPlanConfigRequest : Tea.TeaModel {
    public var clusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
    }
}

public class DescribeBackupPlanConfigResponseBody : Tea.TeaModel {
    public class Tables : Tea.TeaModel {
        public var table: [String]?

        public override init() {
            super.init()
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
                map["Table"] = self.table!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Table"] as? [String] {
                self.table = value
            }
        }
    }
    public var fullBackupCycle: Int32?

    public var minHFileBackupCount: Int32?

    public var nextFullBackupDate: String?

    public var requestId: String?

    public var tables: DescribeBackupPlanConfigResponseBody.Tables?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tables?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fullBackupCycle != nil {
            map["FullBackupCycle"] = self.fullBackupCycle!
        }
        if self.minHFileBackupCount != nil {
            map["MinHFileBackupCount"] = self.minHFileBackupCount!
        }
        if self.nextFullBackupDate != nil {
            map["NextFullBackupDate"] = self.nextFullBackupDate!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tables != nil {
            map["Tables"] = self.tables?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FullBackupCycle"] as? Int32 {
            self.fullBackupCycle = value
        }
        if let value = dict["MinHFileBackupCount"] as? Int32 {
            self.minHFileBackupCount = value
        }
        if let value = dict["NextFullBackupDate"] as? String {
            self.nextFullBackupDate = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Tables"] as? [String: Any?] {
            var model = DescribeBackupPlanConfigResponseBody.Tables()
            model.fromMap(value)
            self.tables = model
        }
    }
}

public class DescribeBackupPlanConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBackupPlanConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeBackupPlanConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeBackupPolicyRequest : Tea.TeaModel {
    public var clusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
    }
}

public class DescribeBackupPolicyResponseBody : Tea.TeaModel {
    public var backupRetentionPeriod: String?

    public var preferredBackupEndTimeUTC: String?

    public var preferredBackupPeriod: String?

    public var preferredBackupStartTimeUTC: String?

    public var preferredBackupTime: String?

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
        if self.backupRetentionPeriod != nil {
            map["BackupRetentionPeriod"] = self.backupRetentionPeriod!
        }
        if self.preferredBackupEndTimeUTC != nil {
            map["PreferredBackupEndTimeUTC"] = self.preferredBackupEndTimeUTC!
        }
        if self.preferredBackupPeriod != nil {
            map["PreferredBackupPeriod"] = self.preferredBackupPeriod!
        }
        if self.preferredBackupStartTimeUTC != nil {
            map["PreferredBackupStartTimeUTC"] = self.preferredBackupStartTimeUTC!
        }
        if self.preferredBackupTime != nil {
            map["PreferredBackupTime"] = self.preferredBackupTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupRetentionPeriod"] as? String {
            self.backupRetentionPeriod = value
        }
        if let value = dict["PreferredBackupEndTimeUTC"] as? String {
            self.preferredBackupEndTimeUTC = value
        }
        if let value = dict["PreferredBackupPeriod"] as? String {
            self.preferredBackupPeriod = value
        }
        if let value = dict["PreferredBackupStartTimeUTC"] as? String {
            self.preferredBackupStartTimeUTC = value
        }
        if let value = dict["PreferredBackupTime"] as? String {
            self.preferredBackupTime = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

public class DescribeBackupStatusRequest : Tea.TeaModel {
    public var clusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
    }
}

public class DescribeBackupStatusResponseBody : Tea.TeaModel {
    public var backupStatus: String?

    public var bdsClusterId: String?

    public var clusterId: String?

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
        if self.backupStatus != nil {
            map["BackupStatus"] = self.backupStatus!
        }
        if self.bdsClusterId != nil {
            map["BdsClusterId"] = self.bdsClusterId!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupStatus"] as? String {
            self.backupStatus = value
        }
        if let value = dict["BdsClusterId"] as? String {
            self.bdsClusterId = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeBackupStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBackupStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeBackupStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeBackupSummaryRequest : Tea.TeaModel {
    public var clusterId: String?

    public var pageNumber: Int32?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class DescribeBackupSummaryResponseBody : Tea.TeaModel {
    public class Full : Tea.TeaModel {
        public class Records : Tea.TeaModel {
            public class Record : Tea.TeaModel {
                public var createTime: String?

                public var dataSize: String?

                public var finishTime: String?

                public var process: String?

                public var recordId: String?

                public var speed: String?

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
                    if self.dataSize != nil {
                        map["DataSize"] = self.dataSize!
                    }
                    if self.finishTime != nil {
                        map["FinishTime"] = self.finishTime!
                    }
                    if self.process != nil {
                        map["Process"] = self.process!
                    }
                    if self.recordId != nil {
                        map["RecordId"] = self.recordId!
                    }
                    if self.speed != nil {
                        map["Speed"] = self.speed!
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
                    if let value = dict["DataSize"] as? String {
                        self.dataSize = value
                    }
                    if let value = dict["FinishTime"] as? String {
                        self.finishTime = value
                    }
                    if let value = dict["Process"] as? String {
                        self.process = value
                    }
                    if let value = dict["RecordId"] as? String {
                        self.recordId = value
                    }
                    if let value = dict["Speed"] as? String {
                        self.speed = value
                    }
                    if let value = dict["Status"] as? String {
                        self.status = value
                    }
                }
            }
            public var record: [DescribeBackupSummaryResponseBody.Full.Records.Record]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.record != nil {
                    var tmp : [Any] = []
                    for k in self.record! {
                        tmp.append(k.toMap())
                    }
                    map["Record"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Record"] as? [Any?] {
                    var tmp : [DescribeBackupSummaryResponseBody.Full.Records.Record] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeBackupSummaryResponseBody.Full.Records.Record()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.record = tmp
                }
            }
        }
        public var hasMore: String?

        public var nextFullBackupDate: String?

        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var records: DescribeBackupSummaryResponseBody.Full.Records?

        public var total: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.records?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hasMore != nil {
                map["HasMore"] = self.hasMore!
            }
            if self.nextFullBackupDate != nil {
                map["NextFullBackupDate"] = self.nextFullBackupDate!
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.records != nil {
                map["Records"] = self.records?.toMap()
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["HasMore"] as? String {
                self.hasMore = value
            }
            if let value = dict["NextFullBackupDate"] as? String {
                self.nextFullBackupDate = value
            }
            if let value = dict["PageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["Records"] as? [String: Any?] {
                var model = DescribeBackupSummaryResponseBody.Full.Records()
                model.fromMap(value)
                self.records = model
            }
            if let value = dict["Total"] as? Int32 {
                self.total = value
            }
        }
    }
    public class Incr : Tea.TeaModel {
        public var backupLogSize: String?

        public var pos: String?

        public var queueLogNum: String?

        public var runningLogNum: String?

        public var speed: String?

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
            if self.backupLogSize != nil {
                map["BackupLogSize"] = self.backupLogSize!
            }
            if self.pos != nil {
                map["Pos"] = self.pos!
            }
            if self.queueLogNum != nil {
                map["QueueLogNum"] = self.queueLogNum!
            }
            if self.runningLogNum != nil {
                map["RunningLogNum"] = self.runningLogNum!
            }
            if self.speed != nil {
                map["Speed"] = self.speed!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackupLogSize"] as? String {
                self.backupLogSize = value
            }
            if let value = dict["Pos"] as? String {
                self.pos = value
            }
            if let value = dict["QueueLogNum"] as? String {
                self.queueLogNum = value
            }
            if let value = dict["RunningLogNum"] as? String {
                self.runningLogNum = value
            }
            if let value = dict["Speed"] as? String {
                self.speed = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var full: DescribeBackupSummaryResponseBody.Full?

    public var incr: DescribeBackupSummaryResponseBody.Incr?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.full?.validate()
        try self.incr?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.full != nil {
            map["Full"] = self.full?.toMap()
        }
        if self.incr != nil {
            map["Incr"] = self.incr?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Full"] as? [String: Any?] {
            var model = DescribeBackupSummaryResponseBody.Full()
            model.fromMap(value)
            self.full = model
        }
        if let value = dict["Incr"] as? [String: Any?] {
            var model = DescribeBackupSummaryResponseBody.Incr()
            model.fromMap(value)
            self.incr = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeBackupSummaryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBackupSummaryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeBackupSummaryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeBackupTablesRequest : Tea.TeaModel {
    public var backupRecordId: String?

    public var clusterId: String?

    public var pageNumber: Int32?

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
        if self.backupRecordId != nil {
            map["BackupRecordId"] = self.backupRecordId!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupRecordId"] as? String {
            self.backupRecordId = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class DescribeBackupTablesResponseBody : Tea.TeaModel {
    public class BackupRecords : Tea.TeaModel {
        public class BackupRecord : Tea.TeaModel {
            public var dataSize: String?

            public var endTime: String?

            public var message: String?

            public var process: String?

            public var speed: String?

            public var startTime: String?

            public var state: String?

            public var table: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dataSize != nil {
                    map["DataSize"] = self.dataSize!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.process != nil {
                    map["Process"] = self.process!
                }
                if self.speed != nil {
                    map["Speed"] = self.speed!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.state != nil {
                    map["State"] = self.state!
                }
                if self.table != nil {
                    map["Table"] = self.table!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DataSize"] as? String {
                    self.dataSize = value
                }
                if let value = dict["EndTime"] as? String {
                    self.endTime = value
                }
                if let value = dict["Message"] as? String {
                    self.message = value
                }
                if let value = dict["Process"] as? String {
                    self.process = value
                }
                if let value = dict["Speed"] as? String {
                    self.speed = value
                }
                if let value = dict["StartTime"] as? String {
                    self.startTime = value
                }
                if let value = dict["State"] as? String {
                    self.state = value
                }
                if let value = dict["Table"] as? String {
                    self.table = value
                }
            }
        }
        public var backupRecord: [DescribeBackupTablesResponseBody.BackupRecords.BackupRecord]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backupRecord != nil {
                var tmp : [Any] = []
                for k in self.backupRecord! {
                    tmp.append(k.toMap())
                }
                map["BackupRecord"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackupRecord"] as? [Any?] {
                var tmp : [DescribeBackupTablesResponseBody.BackupRecords.BackupRecord] = []
                for v in value {
                    if v != nil {
                        var model = DescribeBackupTablesResponseBody.BackupRecords.BackupRecord()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.backupRecord = tmp
            }
        }
    }
    public class Tables : Tea.TeaModel {
        public var table: [String]?

        public override init() {
            super.init()
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
                map["Table"] = self.table!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Table"] as? [String] {
                self.table = value
            }
        }
    }
    public var backupRecords: DescribeBackupTablesResponseBody.BackupRecords?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var tables: DescribeBackupTablesResponseBody.Tables?

    public var total: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.backupRecords?.validate()
        try self.tables?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backupRecords != nil {
            map["BackupRecords"] = self.backupRecords?.toMap()
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
        if self.tables != nil {
            map["Tables"] = self.tables?.toMap()
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupRecords"] as? [String: Any?] {
            var model = DescribeBackupTablesResponseBody.BackupRecords()
            model.fromMap(value)
            self.backupRecords = model
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
        if let value = dict["Tables"] as? [String: Any?] {
            var model = DescribeBackupTablesResponseBody.Tables()
            model.fromMap(value)
            self.tables = model
        }
        if let value = dict["Total"] as? Int64 {
            self.total = value
        }
    }
}

public class DescribeBackupTablesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBackupTablesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeBackupTablesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeBackupsRequest : Tea.TeaModel {
    public var backupId: String?

    public var clusterId: String?

    public var endTime: String?

    public var endTimeUTC: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var startTime: String?

    public var startTimeUTC: String?

    public override init() {
        super.init()
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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.endTimeUTC != nil {
            map["EndTimeUTC"] = self.endTimeUTC!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.startTimeUTC != nil {
            map["StartTimeUTC"] = self.startTimeUTC!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupId"] as? String {
            self.backupId = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["EndTimeUTC"] as? String {
            self.endTimeUTC = value
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["StartTimeUTC"] as? String {
            self.startTimeUTC = value
        }
    }
}

public class DescribeBackupsResponseBody : Tea.TeaModel {
    public class Backups : Tea.TeaModel {
        public class Backup : Tea.TeaModel {
            public var backupDBNames: String?

            public var backupDownloadURL: String?

            public var backupEndTime: String?

            public var backupEndTimeUTC: String?

            public var backupId: Int32?

            public var backupMethod: String?

            public var backupMode: String?

            public var backupSize: String?

            public var backupStartTime: String?

            public var backupStartTimeUTC: String?

            public var backupStatus: String?

            public var backupType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.backupDBNames != nil {
                    map["BackupDBNames"] = self.backupDBNames!
                }
                if self.backupDownloadURL != nil {
                    map["BackupDownloadURL"] = self.backupDownloadURL!
                }
                if self.backupEndTime != nil {
                    map["BackupEndTime"] = self.backupEndTime!
                }
                if self.backupEndTimeUTC != nil {
                    map["BackupEndTimeUTC"] = self.backupEndTimeUTC!
                }
                if self.backupId != nil {
                    map["BackupId"] = self.backupId!
                }
                if self.backupMethod != nil {
                    map["BackupMethod"] = self.backupMethod!
                }
                if self.backupMode != nil {
                    map["BackupMode"] = self.backupMode!
                }
                if self.backupSize != nil {
                    map["BackupSize"] = self.backupSize!
                }
                if self.backupStartTime != nil {
                    map["BackupStartTime"] = self.backupStartTime!
                }
                if self.backupStartTimeUTC != nil {
                    map["BackupStartTimeUTC"] = self.backupStartTimeUTC!
                }
                if self.backupStatus != nil {
                    map["BackupStatus"] = self.backupStatus!
                }
                if self.backupType != nil {
                    map["BackupType"] = self.backupType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BackupDBNames"] as? String {
                    self.backupDBNames = value
                }
                if let value = dict["BackupDownloadURL"] as? String {
                    self.backupDownloadURL = value
                }
                if let value = dict["BackupEndTime"] as? String {
                    self.backupEndTime = value
                }
                if let value = dict["BackupEndTimeUTC"] as? String {
                    self.backupEndTimeUTC = value
                }
                if let value = dict["BackupId"] as? Int32 {
                    self.backupId = value
                }
                if let value = dict["BackupMethod"] as? String {
                    self.backupMethod = value
                }
                if let value = dict["BackupMode"] as? String {
                    self.backupMode = value
                }
                if let value = dict["BackupSize"] as? String {
                    self.backupSize = value
                }
                if let value = dict["BackupStartTime"] as? String {
                    self.backupStartTime = value
                }
                if let value = dict["BackupStartTimeUTC"] as? String {
                    self.backupStartTimeUTC = value
                }
                if let value = dict["BackupStatus"] as? String {
                    self.backupStatus = value
                }
                if let value = dict["BackupType"] as? String {
                    self.backupType = value
                }
            }
        }
        public var backup: [DescribeBackupsResponseBody.Backups.Backup]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backup != nil {
                var tmp : [Any] = []
                for k in self.backup! {
                    tmp.append(k.toMap())
                }
                map["Backup"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Backup"] as? [Any?] {
                var tmp : [DescribeBackupsResponseBody.Backups.Backup] = []
                for v in value {
                    if v != nil {
                        var model = DescribeBackupsResponseBody.Backups.Backup()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.backup = tmp
            }
        }
    }
    public var backups: DescribeBackupsResponseBody.Backups?

    public var enableStatus: String?

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
        try self.backups?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backups != nil {
            map["Backups"] = self.backups?.toMap()
        }
        if self.enableStatus != nil {
            map["EnableStatus"] = self.enableStatus!
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
        if let value = dict["Backups"] as? [String: Any?] {
            var model = DescribeBackupsResponseBody.Backups()
            model.fromMap(value)
            self.backups = model
        }
        if let value = dict["EnableStatus"] as? String {
            self.enableStatus = value
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

public class DescribeClusterConnectionRequest : Tea.TeaModel {
    public var clusterId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeClusterConnectionResponseBody : Tea.TeaModel {
    public class ServiceConnAddrs : Tea.TeaModel {
        public class ServiceConnAddr : Tea.TeaModel {
            public class ConnAddrInfo : Tea.TeaModel {
                public var connAddr: String?

                public var connAddrPort: String?

                public var netType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.connAddr != nil {
                        map["ConnAddr"] = self.connAddr!
                    }
                    if self.connAddrPort != nil {
                        map["ConnAddrPort"] = self.connAddrPort!
                    }
                    if self.netType != nil {
                        map["NetType"] = self.netType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ConnAddr"] as? String {
                        self.connAddr = value
                    }
                    if let value = dict["ConnAddrPort"] as? String {
                        self.connAddrPort = value
                    }
                    if let value = dict["NetType"] as? String {
                        self.netType = value
                    }
                }
            }
            public var connAddrInfo: DescribeClusterConnectionResponseBody.ServiceConnAddrs.ServiceConnAddr.ConnAddrInfo?

            public var connType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.connAddrInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.connAddrInfo != nil {
                    map["ConnAddrInfo"] = self.connAddrInfo?.toMap()
                }
                if self.connType != nil {
                    map["ConnType"] = self.connType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ConnAddrInfo"] as? [String: Any?] {
                    var model = DescribeClusterConnectionResponseBody.ServiceConnAddrs.ServiceConnAddr.ConnAddrInfo()
                    model.fromMap(value)
                    self.connAddrInfo = model
                }
                if let value = dict["ConnType"] as? String {
                    self.connType = value
                }
            }
        }
        public var serviceConnAddr: [DescribeClusterConnectionResponseBody.ServiceConnAddrs.ServiceConnAddr]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.serviceConnAddr != nil {
                var tmp : [Any] = []
                for k in self.serviceConnAddr! {
                    tmp.append(k.toMap())
                }
                map["ServiceConnAddr"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ServiceConnAddr"] as? [Any?] {
                var tmp : [DescribeClusterConnectionResponseBody.ServiceConnAddrs.ServiceConnAddr] = []
                for v in value {
                    if v != nil {
                        var model = DescribeClusterConnectionResponseBody.ServiceConnAddrs.ServiceConnAddr()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.serviceConnAddr = tmp
            }
        }
    }
    public class SlbConnAddrs : Tea.TeaModel {
        public class SlbConnAddr : Tea.TeaModel {
            public class ConnAddrInfo : Tea.TeaModel {
                public var connAddr: String?

                public var connAddrPort: String?

                public var netType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.connAddr != nil {
                        map["ConnAddr"] = self.connAddr!
                    }
                    if self.connAddrPort != nil {
                        map["ConnAddrPort"] = self.connAddrPort!
                    }
                    if self.netType != nil {
                        map["NetType"] = self.netType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ConnAddr"] as? String {
                        self.connAddr = value
                    }
                    if let value = dict["ConnAddrPort"] as? String {
                        self.connAddrPort = value
                    }
                    if let value = dict["NetType"] as? String {
                        self.netType = value
                    }
                }
            }
            public var connAddrInfo: DescribeClusterConnectionResponseBody.SlbConnAddrs.SlbConnAddr.ConnAddrInfo?

            public var slbType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.connAddrInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.connAddrInfo != nil {
                    map["ConnAddrInfo"] = self.connAddrInfo?.toMap()
                }
                if self.slbType != nil {
                    map["SlbType"] = self.slbType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ConnAddrInfo"] as? [String: Any?] {
                    var model = DescribeClusterConnectionResponseBody.SlbConnAddrs.SlbConnAddr.ConnAddrInfo()
                    model.fromMap(value)
                    self.connAddrInfo = model
                }
                if let value = dict["SlbType"] as? String {
                    self.slbType = value
                }
            }
        }
        public var slbConnAddr: [DescribeClusterConnectionResponseBody.SlbConnAddrs.SlbConnAddr]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.slbConnAddr != nil {
                var tmp : [Any] = []
                for k in self.slbConnAddr! {
                    tmp.append(k.toMap())
                }
                map["SlbConnAddr"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SlbConnAddr"] as? [Any?] {
                var tmp : [DescribeClusterConnectionResponseBody.SlbConnAddrs.SlbConnAddr] = []
                for v in value {
                    if v != nil {
                        var model = DescribeClusterConnectionResponseBody.SlbConnAddrs.SlbConnAddr()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.slbConnAddr = tmp
            }
        }
    }
    public class ThriftConn : Tea.TeaModel {
        public var connAddr: String?

        public var connAddrPort: String?

        public var netType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.connAddr != nil {
                map["ConnAddr"] = self.connAddr!
            }
            if self.connAddrPort != nil {
                map["ConnAddrPort"] = self.connAddrPort!
            }
            if self.netType != nil {
                map["NetType"] = self.netType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConnAddr"] as? String {
                self.connAddr = value
            }
            if let value = dict["ConnAddrPort"] as? String {
                self.connAddrPort = value
            }
            if let value = dict["NetType"] as? String {
                self.netType = value
            }
        }
    }
    public class UiProxyConnAddrInfo : Tea.TeaModel {
        public var connAddr: String?

        public var connAddrPort: String?

        public var netType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.connAddr != nil {
                map["ConnAddr"] = self.connAddr!
            }
            if self.connAddrPort != nil {
                map["ConnAddrPort"] = self.connAddrPort!
            }
            if self.netType != nil {
                map["NetType"] = self.netType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConnAddr"] as? String {
                self.connAddr = value
            }
            if let value = dict["ConnAddrPort"] as? String {
                self.connAddrPort = value
            }
            if let value = dict["NetType"] as? String {
                self.netType = value
            }
        }
    }
    public class ZkConnAddrs : Tea.TeaModel {
        public class ZkConnAddr : Tea.TeaModel {
            public var connAddr: String?

            public var connAddrPort: String?

            public var netType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.connAddr != nil {
                    map["ConnAddr"] = self.connAddr!
                }
                if self.connAddrPort != nil {
                    map["ConnAddrPort"] = self.connAddrPort!
                }
                if self.netType != nil {
                    map["NetType"] = self.netType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ConnAddr"] as? String {
                    self.connAddr = value
                }
                if let value = dict["ConnAddrPort"] as? String {
                    self.connAddrPort = value
                }
                if let value = dict["NetType"] as? String {
                    self.netType = value
                }
            }
        }
        public var zkConnAddr: [DescribeClusterConnectionResponseBody.ZkConnAddrs.ZkConnAddr]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.zkConnAddr != nil {
                var tmp : [Any] = []
                for k in self.zkConnAddr! {
                    tmp.append(k.toMap())
                }
                map["ZkConnAddr"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ZkConnAddr"] as? [Any?] {
                var tmp : [DescribeClusterConnectionResponseBody.ZkConnAddrs.ZkConnAddr] = []
                for v in value {
                    if v != nil {
                        var model = DescribeClusterConnectionResponseBody.ZkConnAddrs.ZkConnAddr()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.zkConnAddr = tmp
            }
        }
    }
    public var dbType: String?

    public var isMultimod: String?

    public var netType: String?

    public var requestId: String?

    public var serviceConnAddrs: DescribeClusterConnectionResponseBody.ServiceConnAddrs?

    public var slbConnAddrs: DescribeClusterConnectionResponseBody.SlbConnAddrs?

    public var thriftConn: DescribeClusterConnectionResponseBody.ThriftConn?

    public var uiProxyConnAddrInfo: DescribeClusterConnectionResponseBody.UiProxyConnAddrInfo?

    public var vSwitchId: String?

    public var vpcId: String?

    public var zkConnAddrs: DescribeClusterConnectionResponseBody.ZkConnAddrs?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.serviceConnAddrs?.validate()
        try self.slbConnAddrs?.validate()
        try self.thriftConn?.validate()
        try self.uiProxyConnAddrInfo?.validate()
        try self.zkConnAddrs?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbType != nil {
            map["DbType"] = self.dbType!
        }
        if self.isMultimod != nil {
            map["IsMultimod"] = self.isMultimod!
        }
        if self.netType != nil {
            map["NetType"] = self.netType!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceConnAddrs != nil {
            map["ServiceConnAddrs"] = self.serviceConnAddrs?.toMap()
        }
        if self.slbConnAddrs != nil {
            map["SlbConnAddrs"] = self.slbConnAddrs?.toMap()
        }
        if self.thriftConn != nil {
            map["ThriftConn"] = self.thriftConn?.toMap()
        }
        if self.uiProxyConnAddrInfo != nil {
            map["UiProxyConnAddrInfo"] = self.uiProxyConnAddrInfo?.toMap()
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        if self.zkConnAddrs != nil {
            map["ZkConnAddrs"] = self.zkConnAddrs?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbType"] as? String {
            self.dbType = value
        }
        if let value = dict["IsMultimod"] as? String {
            self.isMultimod = value
        }
        if let value = dict["NetType"] as? String {
            self.netType = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServiceConnAddrs"] as? [String: Any?] {
            var model = DescribeClusterConnectionResponseBody.ServiceConnAddrs()
            model.fromMap(value)
            self.serviceConnAddrs = model
        }
        if let value = dict["SlbConnAddrs"] as? [String: Any?] {
            var model = DescribeClusterConnectionResponseBody.SlbConnAddrs()
            model.fromMap(value)
            self.slbConnAddrs = model
        }
        if let value = dict["ThriftConn"] as? [String: Any?] {
            var model = DescribeClusterConnectionResponseBody.ThriftConn()
            model.fromMap(value)
            self.thriftConn = model
        }
        if let value = dict["UiProxyConnAddrInfo"] as? [String: Any?] {
            var model = DescribeClusterConnectionResponseBody.UiProxyConnAddrInfo()
            model.fromMap(value)
            self.uiProxyConnAddrInfo = model
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["ZkConnAddrs"] as? [String: Any?] {
            var model = DescribeClusterConnectionResponseBody.ZkConnAddrs()
            model.fromMap(value)
            self.zkConnAddrs = model
        }
    }
}

public class DescribeClusterConnectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeClusterConnectionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeClusterConnectionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeColdStorageRequest : Tea.TeaModel {
    public var clusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
    }
}

public class DescribeColdStorageResponseBody : Tea.TeaModel {
    public var clusterId: String?

    public var coldStorageSize: String?

    public var coldStorageType: String?

    public var coldStorageUseAmount: String?

    public var coldStorageUsePercent: String?

    public var openStatus: String?

    public var payType: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.coldStorageSize != nil {
            map["ColdStorageSize"] = self.coldStorageSize!
        }
        if self.coldStorageType != nil {
            map["ColdStorageType"] = self.coldStorageType!
        }
        if self.coldStorageUseAmount != nil {
            map["ColdStorageUseAmount"] = self.coldStorageUseAmount!
        }
        if self.coldStorageUsePercent != nil {
            map["ColdStorageUsePercent"] = self.coldStorageUsePercent!
        }
        if self.openStatus != nil {
            map["OpenStatus"] = self.openStatus!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["ColdStorageSize"] as? String {
            self.coldStorageSize = value
        }
        if let value = dict["ColdStorageType"] as? String {
            self.coldStorageType = value
        }
        if let value = dict["ColdStorageUseAmount"] as? String {
            self.coldStorageUseAmount = value
        }
        if let value = dict["ColdStorageUsePercent"] as? String {
            self.coldStorageUsePercent = value
        }
        if let value = dict["OpenStatus"] as? String {
            self.openStatus = value
        }
        if let value = dict["PayType"] as? String {
            self.payType = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeColdStorageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeColdStorageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeColdStorageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDBInstanceUsageRequest : Tea.TeaModel {
    public var clusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
    }
}

public class DescribeDBInstanceUsageResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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
    }
}

public class DescribeDBInstanceUsageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBInstanceUsageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDBInstanceUsageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDeletedInstancesRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeDeletedInstancesResponseBody : Tea.TeaModel {
    public class Instances : Tea.TeaModel {
        public class Instance : Tea.TeaModel {
            public var clusterType: String?

            public var createdTime: String?

            public var deleteTime: String?

            public var engine: String?

            public var instanceId: String?

            public var instanceName: String?

            public var majorVersion: String?

            public var moduleStackVersion: String?

            public var parentId: String?

            public var regionId: String?

            public var status: String?

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
                if self.clusterType != nil {
                    map["ClusterType"] = self.clusterType!
                }
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.deleteTime != nil {
                    map["DeleteTime"] = self.deleteTime!
                }
                if self.engine != nil {
                    map["Engine"] = self.engine!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.instanceName != nil {
                    map["InstanceName"] = self.instanceName!
                }
                if self.majorVersion != nil {
                    map["MajorVersion"] = self.majorVersion!
                }
                if self.moduleStackVersion != nil {
                    map["ModuleStackVersion"] = self.moduleStackVersion!
                }
                if self.parentId != nil {
                    map["ParentId"] = self.parentId!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ClusterType"] as? String {
                    self.clusterType = value
                }
                if let value = dict["CreatedTime"] as? String {
                    self.createdTime = value
                }
                if let value = dict["DeleteTime"] as? String {
                    self.deleteTime = value
                }
                if let value = dict["Engine"] as? String {
                    self.engine = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["InstanceName"] as? String {
                    self.instanceName = value
                }
                if let value = dict["MajorVersion"] as? String {
                    self.majorVersion = value
                }
                if let value = dict["ModuleStackVersion"] as? String {
                    self.moduleStackVersion = value
                }
                if let value = dict["ParentId"] as? String {
                    self.parentId = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["ZoneId"] as? String {
                    self.zoneId = value
                }
            }
        }
        public var instance: [DescribeDeletedInstancesResponseBody.Instances.Instance]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instance != nil {
                var tmp : [Any] = []
                for k in self.instance! {
                    tmp.append(k.toMap())
                }
                map["Instance"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Instance"] as? [Any?] {
                var tmp : [DescribeDeletedInstancesResponseBody.Instances.Instance] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDeletedInstancesResponseBody.Instances.Instance()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.instance = tmp
            }
        }
    }
    public var instances: DescribeDeletedInstancesResponseBody.Instances?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.instances?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instances != nil {
            map["Instances"] = self.instances?.toMap()
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
        if let value = dict["Instances"] as? [String: Any?] {
            var model = DescribeDeletedInstancesResponseBody.Instances()
            model.fromMap(value)
            self.instances = model
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
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class DescribeDeletedInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDeletedInstancesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDeletedInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDiskWarningLineRequest : Tea.TeaModel {
    public var clusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
    }
}

public class DescribeDiskWarningLineResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var warningLine: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.warningLine != nil {
            map["WarningLine"] = self.warningLine!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["WarningLine"] as? String {
            self.warningLine = value
        }
    }
}

public class DescribeDiskWarningLineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDiskWarningLineResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDiskWarningLineResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeEndpointsRequest : Tea.TeaModel {
    public var clusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
    }
}

public class DescribeEndpointsResponseBody : Tea.TeaModel {
    public class ConnAddrs : Tea.TeaModel {
        public class ConnAddrInfo : Tea.TeaModel {
            public var connAddr: String?

            public var connAddrPort: String?

            public var connType: String?

            public var netType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.connAddr != nil {
                    map["ConnAddr"] = self.connAddr!
                }
                if self.connAddrPort != nil {
                    map["ConnAddrPort"] = self.connAddrPort!
                }
                if self.connType != nil {
                    map["ConnType"] = self.connType!
                }
                if self.netType != nil {
                    map["NetType"] = self.netType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ConnAddr"] as? String {
                    self.connAddr = value
                }
                if let value = dict["ConnAddrPort"] as? String {
                    self.connAddrPort = value
                }
                if let value = dict["ConnType"] as? String {
                    self.connType = value
                }
                if let value = dict["NetType"] as? String {
                    self.netType = value
                }
            }
        }
        public var connAddrInfo: [DescribeEndpointsResponseBody.ConnAddrs.ConnAddrInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.connAddrInfo != nil {
                var tmp : [Any] = []
                for k in self.connAddrInfo! {
                    tmp.append(k.toMap())
                }
                map["ConnAddrInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConnAddrInfo"] as? [Any?] {
                var tmp : [DescribeEndpointsResponseBody.ConnAddrs.ConnAddrInfo] = []
                for v in value {
                    if v != nil {
                        var model = DescribeEndpointsResponseBody.ConnAddrs.ConnAddrInfo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.connAddrInfo = tmp
            }
        }
    }
    public var connAddrs: DescribeEndpointsResponseBody.ConnAddrs?

    public var engine: String?

    public var netType: String?

    public var requestId: String?

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
        try self.connAddrs?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.connAddrs != nil {
            map["ConnAddrs"] = self.connAddrs?.toMap()
        }
        if self.engine != nil {
            map["Engine"] = self.engine!
        }
        if self.netType != nil {
            map["NetType"] = self.netType!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
        if let value = dict["ConnAddrs"] as? [String: Any?] {
            var model = DescribeEndpointsResponseBody.ConnAddrs()
            model.fromMap(value)
            self.connAddrs = model
        }
        if let value = dict["Engine"] as? String {
            self.engine = value
        }
        if let value = dict["NetType"] as? String {
            self.netType = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
    }
}

public class DescribeEndpointsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeEndpointsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeEndpointsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeInstanceRequest : Tea.TeaModel {
    public var clusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
    }
}

public class DescribeInstanceResponseBody : Tea.TeaModel {
    public class NeedUpgradeComps : Tea.TeaModel {
        public var comps: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.comps != nil {
                map["Comps"] = self.comps!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Comps"] as? [String] {
                self.comps = value
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
        public var tag: [DescribeInstanceResponseBody.Tags.Tag]?

        public override init() {
            super.init()
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
                var tmp : [DescribeInstanceResponseBody.Tags.Tag] = []
                for v in value {
                    if v != nil {
                        var model = DescribeInstanceResponseBody.Tags.Tag()
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
    public var autoRenewal: Bool?

    public var backupStatus: String?

    public var clusterId: String?

    public var clusterName: String?

    public var clusterType: String?

    public var coldStorageSize: Int32?

    public var coldStorageStatus: String?

    public var confirmMaintainTime: String?

    public var coreDiskCount: String?

    public var coreDiskSize: Int32?

    public var coreDiskType: String?

    public var coreInstanceType: String?

    public var coreNodeCount: Int32?

    public var createdTime: String?

    public var createdTimeUTC: String?

    public var duration: Int32?

    public var enableHbaseProxy: Bool?

    public var encryptionKey: String?

    public var encryptionType: String?

    public var engine: String?

    public var expireTime: String?

    public var expireTimeUTC: String?

    public var instanceId: String?

    public var instanceName: String?

    public var isDeletionProtection: Bool?

    public var isHa: Bool?

    public var isLatestVersion: Bool?

    public var isMultiModel: Bool?

    public var lproxyMinorVersion: String?

    public var maintainEndTime: String?

    public var maintainStartTime: String?

    public var majorVersion: String?

    public var masterDiskSize: Int32?

    public var masterDiskType: String?

    public var masterInstanceType: String?

    public var masterNodeCount: Int32?

    public var minorVersion: String?

    public var moduleId: Int32?

    public var moduleStackVersion: String?

    public var needUpgrade: Bool?

    public var needUpgradeComps: DescribeInstanceResponseBody.NeedUpgradeComps?

    public var networkType: String?

    public var parentId: String?

    public var payType: String?

    public var regionId: String?

    public var requestId: String?

    public var resourceGroupId: String?

    public var status: String?

    public var tags: DescribeInstanceResponseBody.Tags?

    public var taskProgress: String?

    public var taskStatus: String?

    public var vpcId: String?

    public var vswitchId: String?

    public var zoneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.needUpgradeComps?.validate()
        try self.tags?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoRenewal != nil {
            map["AutoRenewal"] = self.autoRenewal!
        }
        if self.backupStatus != nil {
            map["BackupStatus"] = self.backupStatus!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
        }
        if self.clusterType != nil {
            map["ClusterType"] = self.clusterType!
        }
        if self.coldStorageSize != nil {
            map["ColdStorageSize"] = self.coldStorageSize!
        }
        if self.coldStorageStatus != nil {
            map["ColdStorageStatus"] = self.coldStorageStatus!
        }
        if self.confirmMaintainTime != nil {
            map["ConfirmMaintainTime"] = self.confirmMaintainTime!
        }
        if self.coreDiskCount != nil {
            map["CoreDiskCount"] = self.coreDiskCount!
        }
        if self.coreDiskSize != nil {
            map["CoreDiskSize"] = self.coreDiskSize!
        }
        if self.coreDiskType != nil {
            map["CoreDiskType"] = self.coreDiskType!
        }
        if self.coreInstanceType != nil {
            map["CoreInstanceType"] = self.coreInstanceType!
        }
        if self.coreNodeCount != nil {
            map["CoreNodeCount"] = self.coreNodeCount!
        }
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
        }
        if self.createdTimeUTC != nil {
            map["CreatedTimeUTC"] = self.createdTimeUTC!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.enableHbaseProxy != nil {
            map["EnableHbaseProxy"] = self.enableHbaseProxy!
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
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.expireTimeUTC != nil {
            map["ExpireTimeUTC"] = self.expireTimeUTC!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.isDeletionProtection != nil {
            map["IsDeletionProtection"] = self.isDeletionProtection!
        }
        if self.isHa != nil {
            map["IsHa"] = self.isHa!
        }
        if self.isLatestVersion != nil {
            map["IsLatestVersion"] = self.isLatestVersion!
        }
        if self.isMultiModel != nil {
            map["IsMultiModel"] = self.isMultiModel!
        }
        if self.lproxyMinorVersion != nil {
            map["LproxyMinorVersion"] = self.lproxyMinorVersion!
        }
        if self.maintainEndTime != nil {
            map["MaintainEndTime"] = self.maintainEndTime!
        }
        if self.maintainStartTime != nil {
            map["MaintainStartTime"] = self.maintainStartTime!
        }
        if self.majorVersion != nil {
            map["MajorVersion"] = self.majorVersion!
        }
        if self.masterDiskSize != nil {
            map["MasterDiskSize"] = self.masterDiskSize!
        }
        if self.masterDiskType != nil {
            map["MasterDiskType"] = self.masterDiskType!
        }
        if self.masterInstanceType != nil {
            map["MasterInstanceType"] = self.masterInstanceType!
        }
        if self.masterNodeCount != nil {
            map["MasterNodeCount"] = self.masterNodeCount!
        }
        if self.minorVersion != nil {
            map["MinorVersion"] = self.minorVersion!
        }
        if self.moduleId != nil {
            map["ModuleId"] = self.moduleId!
        }
        if self.moduleStackVersion != nil {
            map["ModuleStackVersion"] = self.moduleStackVersion!
        }
        if self.needUpgrade != nil {
            map["NeedUpgrade"] = self.needUpgrade!
        }
        if self.needUpgradeComps != nil {
            map["NeedUpgradeComps"] = self.needUpgradeComps?.toMap()
        }
        if self.networkType != nil {
            map["NetworkType"] = self.networkType!
        }
        if self.parentId != nil {
            map["ParentId"] = self.parentId!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tags != nil {
            map["Tags"] = self.tags?.toMap()
        }
        if self.taskProgress != nil {
            map["TaskProgress"] = self.taskProgress!
        }
        if self.taskStatus != nil {
            map["TaskStatus"] = self.taskStatus!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        if self.vswitchId != nil {
            map["VswitchId"] = self.vswitchId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoRenewal"] as? Bool {
            self.autoRenewal = value
        }
        if let value = dict["BackupStatus"] as? String {
            self.backupStatus = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["ClusterName"] as? String {
            self.clusterName = value
        }
        if let value = dict["ClusterType"] as? String {
            self.clusterType = value
        }
        if let value = dict["ColdStorageSize"] as? Int32 {
            self.coldStorageSize = value
        }
        if let value = dict["ColdStorageStatus"] as? String {
            self.coldStorageStatus = value
        }
        if let value = dict["ConfirmMaintainTime"] as? String {
            self.confirmMaintainTime = value
        }
        if let value = dict["CoreDiskCount"] as? String {
            self.coreDiskCount = value
        }
        if let value = dict["CoreDiskSize"] as? Int32 {
            self.coreDiskSize = value
        }
        if let value = dict["CoreDiskType"] as? String {
            self.coreDiskType = value
        }
        if let value = dict["CoreInstanceType"] as? String {
            self.coreInstanceType = value
        }
        if let value = dict["CoreNodeCount"] as? Int32 {
            self.coreNodeCount = value
        }
        if let value = dict["CreatedTime"] as? String {
            self.createdTime = value
        }
        if let value = dict["CreatedTimeUTC"] as? String {
            self.createdTimeUTC = value
        }
        if let value = dict["Duration"] as? Int32 {
            self.duration = value
        }
        if let value = dict["EnableHbaseProxy"] as? Bool {
            self.enableHbaseProxy = value
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
        if let value = dict["ExpireTime"] as? String {
            self.expireTime = value
        }
        if let value = dict["ExpireTimeUTC"] as? String {
            self.expireTimeUTC = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["IsDeletionProtection"] as? Bool {
            self.isDeletionProtection = value
        }
        if let value = dict["IsHa"] as? Bool {
            self.isHa = value
        }
        if let value = dict["IsLatestVersion"] as? Bool {
            self.isLatestVersion = value
        }
        if let value = dict["IsMultiModel"] as? Bool {
            self.isMultiModel = value
        }
        if let value = dict["LproxyMinorVersion"] as? String {
            self.lproxyMinorVersion = value
        }
        if let value = dict["MaintainEndTime"] as? String {
            self.maintainEndTime = value
        }
        if let value = dict["MaintainStartTime"] as? String {
            self.maintainStartTime = value
        }
        if let value = dict["MajorVersion"] as? String {
            self.majorVersion = value
        }
        if let value = dict["MasterDiskSize"] as? Int32 {
            self.masterDiskSize = value
        }
        if let value = dict["MasterDiskType"] as? String {
            self.masterDiskType = value
        }
        if let value = dict["MasterInstanceType"] as? String {
            self.masterInstanceType = value
        }
        if let value = dict["MasterNodeCount"] as? Int32 {
            self.masterNodeCount = value
        }
        if let value = dict["MinorVersion"] as? String {
            self.minorVersion = value
        }
        if let value = dict["ModuleId"] as? Int32 {
            self.moduleId = value
        }
        if let value = dict["ModuleStackVersion"] as? String {
            self.moduleStackVersion = value
        }
        if let value = dict["NeedUpgrade"] as? Bool {
            self.needUpgrade = value
        }
        if let value = dict["NeedUpgradeComps"] as? [String: Any?] {
            var model = DescribeInstanceResponseBody.NeedUpgradeComps()
            model.fromMap(value)
            self.needUpgradeComps = model
        }
        if let value = dict["NetworkType"] as? String {
            self.networkType = value
        }
        if let value = dict["ParentId"] as? String {
            self.parentId = value
        }
        if let value = dict["PayType"] as? String {
            self.payType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Tags"] as? [String: Any?] {
            var model = DescribeInstanceResponseBody.Tags()
            model.fromMap(value)
            self.tags = model
        }
        if let value = dict["TaskProgress"] as? String {
            self.taskProgress = value
        }
        if let value = dict["TaskStatus"] as? String {
            self.taskStatus = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["VswitchId"] as? String {
            self.vswitchId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class DescribeInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeInstanceTypeRequest : Tea.TeaModel {
    public var instanceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceType"] as? String {
            self.instanceType = value
        }
    }
}

public class DescribeInstanceTypeResponseBody : Tea.TeaModel {
    public class InstanceTypeSpecList : Tea.TeaModel {
        public class InstanceTypeSpec : Tea.TeaModel {
            public var cpuSize: Int64?

            public var instanceType: String?

            public var memSize: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cpuSize != nil {
                    map["CpuSize"] = self.cpuSize!
                }
                if self.instanceType != nil {
                    map["InstanceType"] = self.instanceType!
                }
                if self.memSize != nil {
                    map["MemSize"] = self.memSize!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CpuSize"] as? Int64 {
                    self.cpuSize = value
                }
                if let value = dict["InstanceType"] as? String {
                    self.instanceType = value
                }
                if let value = dict["MemSize"] as? Int64 {
                    self.memSize = value
                }
            }
        }
        public var instanceTypeSpec: [DescribeInstanceTypeResponseBody.InstanceTypeSpecList.InstanceTypeSpec]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instanceTypeSpec != nil {
                var tmp : [Any] = []
                for k in self.instanceTypeSpec! {
                    tmp.append(k.toMap())
                }
                map["InstanceTypeSpec"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceTypeSpec"] as? [Any?] {
                var tmp : [DescribeInstanceTypeResponseBody.InstanceTypeSpecList.InstanceTypeSpec] = []
                for v in value {
                    if v != nil {
                        var model = DescribeInstanceTypeResponseBody.InstanceTypeSpecList.InstanceTypeSpec()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.instanceTypeSpec = tmp
            }
        }
    }
    public var instanceTypeSpecList: DescribeInstanceTypeResponseBody.InstanceTypeSpecList?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.instanceTypeSpecList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceTypeSpecList != nil {
            map["InstanceTypeSpecList"] = self.instanceTypeSpecList?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceTypeSpecList"] as? [String: Any?] {
            var model = DescribeInstanceTypeResponseBody.InstanceTypeSpecList()
            model.fromMap(value)
            self.instanceTypeSpecList = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeInstanceTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceTypeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeInstanceTypeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeInstancesRequest : Tea.TeaModel {
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
    public var clusterId: String?

    public var clusterName: String?

    public var dbType: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tag: [DescribeInstancesRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
        }
        if self.dbType != nil {
            map["DbType"] = self.dbType!
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
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["ClusterName"] as? String {
            self.clusterName = value
        }
        if let value = dict["DbType"] as? String {
            self.dbType = value
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
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [DescribeInstancesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = DescribeInstancesRequest.Tag()
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

public class DescribeInstancesResponseBody : Tea.TeaModel {
    public class Instances : Tea.TeaModel {
        public class Instance : Tea.TeaModel {
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
                public var tag: [DescribeInstancesResponseBody.Instances.Instance.Tags.Tag]?

                public override init() {
                    super.init()
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
                        var tmp : [DescribeInstancesResponseBody.Instances.Instance.Tags.Tag] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeInstancesResponseBody.Instances.Instance.Tags.Tag()
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
            public var autoRenewal: Bool?

            public var backupStatus: String?

            public var clusterId: String?

            public var clusterName: String?

            public var clusterType: String?

            public var coldStorageStatus: String?

            public var coreDiskCount: String?

            public var coreDiskSize: Int32?

            public var coreDiskType: String?

            public var coreInstanceType: String?

            public var coreNodeCount: Int32?

            public var createdTime: String?

            public var createdTimeUTC: String?

            public var duration: Int32?

            public var engine: String?

            public var expireTime: String?

            public var expireTimeUTC: String?

            public var instanceId: String?

            public var instanceName: String?

            public var isDeletionProtection: Bool?

            public var isHa: Bool?

            public var majorVersion: String?

            public var masterDiskSize: Int32?

            public var masterDiskType: String?

            public var masterInstanceType: String?

            public var masterNodeCount: Int32?

            public var moduleId: Int32?

            public var moduleStackVersion: String?

            public var networkType: String?

            public var parentId: String?

            public var payType: String?

            public var regionId: String?

            public var resourceGroupId: String?

            public var status: String?

            public var tags: DescribeInstancesResponseBody.Instances.Instance.Tags?

            public var vpcId: String?

            public var vswitchId: String?

            public var zoneId: String?

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
                if self.autoRenewal != nil {
                    map["AutoRenewal"] = self.autoRenewal!
                }
                if self.backupStatus != nil {
                    map["BackupStatus"] = self.backupStatus!
                }
                if self.clusterId != nil {
                    map["ClusterId"] = self.clusterId!
                }
                if self.clusterName != nil {
                    map["ClusterName"] = self.clusterName!
                }
                if self.clusterType != nil {
                    map["ClusterType"] = self.clusterType!
                }
                if self.coldStorageStatus != nil {
                    map["ColdStorageStatus"] = self.coldStorageStatus!
                }
                if self.coreDiskCount != nil {
                    map["CoreDiskCount"] = self.coreDiskCount!
                }
                if self.coreDiskSize != nil {
                    map["CoreDiskSize"] = self.coreDiskSize!
                }
                if self.coreDiskType != nil {
                    map["CoreDiskType"] = self.coreDiskType!
                }
                if self.coreInstanceType != nil {
                    map["CoreInstanceType"] = self.coreInstanceType!
                }
                if self.coreNodeCount != nil {
                    map["CoreNodeCount"] = self.coreNodeCount!
                }
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.createdTimeUTC != nil {
                    map["CreatedTimeUTC"] = self.createdTimeUTC!
                }
                if self.duration != nil {
                    map["Duration"] = self.duration!
                }
                if self.engine != nil {
                    map["Engine"] = self.engine!
                }
                if self.expireTime != nil {
                    map["ExpireTime"] = self.expireTime!
                }
                if self.expireTimeUTC != nil {
                    map["ExpireTimeUTC"] = self.expireTimeUTC!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.instanceName != nil {
                    map["InstanceName"] = self.instanceName!
                }
                if self.isDeletionProtection != nil {
                    map["IsDeletionProtection"] = self.isDeletionProtection!
                }
                if self.isHa != nil {
                    map["IsHa"] = self.isHa!
                }
                if self.majorVersion != nil {
                    map["MajorVersion"] = self.majorVersion!
                }
                if self.masterDiskSize != nil {
                    map["MasterDiskSize"] = self.masterDiskSize!
                }
                if self.masterDiskType != nil {
                    map["MasterDiskType"] = self.masterDiskType!
                }
                if self.masterInstanceType != nil {
                    map["MasterInstanceType"] = self.masterInstanceType!
                }
                if self.masterNodeCount != nil {
                    map["MasterNodeCount"] = self.masterNodeCount!
                }
                if self.moduleId != nil {
                    map["ModuleId"] = self.moduleId!
                }
                if self.moduleStackVersion != nil {
                    map["ModuleStackVersion"] = self.moduleStackVersion!
                }
                if self.networkType != nil {
                    map["NetworkType"] = self.networkType!
                }
                if self.parentId != nil {
                    map["ParentId"] = self.parentId!
                }
                if self.payType != nil {
                    map["PayType"] = self.payType!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags?.toMap()
                }
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                if self.vswitchId != nil {
                    map["VswitchId"] = self.vswitchId!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AutoRenewal"] as? Bool {
                    self.autoRenewal = value
                }
                if let value = dict["BackupStatus"] as? String {
                    self.backupStatus = value
                }
                if let value = dict["ClusterId"] as? String {
                    self.clusterId = value
                }
                if let value = dict["ClusterName"] as? String {
                    self.clusterName = value
                }
                if let value = dict["ClusterType"] as? String {
                    self.clusterType = value
                }
                if let value = dict["ColdStorageStatus"] as? String {
                    self.coldStorageStatus = value
                }
                if let value = dict["CoreDiskCount"] as? String {
                    self.coreDiskCount = value
                }
                if let value = dict["CoreDiskSize"] as? Int32 {
                    self.coreDiskSize = value
                }
                if let value = dict["CoreDiskType"] as? String {
                    self.coreDiskType = value
                }
                if let value = dict["CoreInstanceType"] as? String {
                    self.coreInstanceType = value
                }
                if let value = dict["CoreNodeCount"] as? Int32 {
                    self.coreNodeCount = value
                }
                if let value = dict["CreatedTime"] as? String {
                    self.createdTime = value
                }
                if let value = dict["CreatedTimeUTC"] as? String {
                    self.createdTimeUTC = value
                }
                if let value = dict["Duration"] as? Int32 {
                    self.duration = value
                }
                if let value = dict["Engine"] as? String {
                    self.engine = value
                }
                if let value = dict["ExpireTime"] as? String {
                    self.expireTime = value
                }
                if let value = dict["ExpireTimeUTC"] as? String {
                    self.expireTimeUTC = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["InstanceName"] as? String {
                    self.instanceName = value
                }
                if let value = dict["IsDeletionProtection"] as? Bool {
                    self.isDeletionProtection = value
                }
                if let value = dict["IsHa"] as? Bool {
                    self.isHa = value
                }
                if let value = dict["MajorVersion"] as? String {
                    self.majorVersion = value
                }
                if let value = dict["MasterDiskSize"] as? Int32 {
                    self.masterDiskSize = value
                }
                if let value = dict["MasterDiskType"] as? String {
                    self.masterDiskType = value
                }
                if let value = dict["MasterInstanceType"] as? String {
                    self.masterInstanceType = value
                }
                if let value = dict["MasterNodeCount"] as? Int32 {
                    self.masterNodeCount = value
                }
                if let value = dict["ModuleId"] as? Int32 {
                    self.moduleId = value
                }
                if let value = dict["ModuleStackVersion"] as? String {
                    self.moduleStackVersion = value
                }
                if let value = dict["NetworkType"] as? String {
                    self.networkType = value
                }
                if let value = dict["ParentId"] as? String {
                    self.parentId = value
                }
                if let value = dict["PayType"] as? String {
                    self.payType = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["ResourceGroupId"] as? String {
                    self.resourceGroupId = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["Tags"] as? [String: Any?] {
                    var model = DescribeInstancesResponseBody.Instances.Instance.Tags()
                    model.fromMap(value)
                    self.tags = model
                }
                if let value = dict["VpcId"] as? String {
                    self.vpcId = value
                }
                if let value = dict["VswitchId"] as? String {
                    self.vswitchId = value
                }
                if let value = dict["ZoneId"] as? String {
                    self.zoneId = value
                }
            }
        }
        public var instance: [DescribeInstancesResponseBody.Instances.Instance]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instance != nil {
                var tmp : [Any] = []
                for k in self.instance! {
                    tmp.append(k.toMap())
                }
                map["Instance"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Instance"] as? [Any?] {
                var tmp : [DescribeInstancesResponseBody.Instances.Instance] = []
                for v in value {
                    if v != nil {
                        var model = DescribeInstancesResponseBody.Instances.Instance()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.instance = tmp
            }
        }
    }
    public var instances: DescribeInstancesResponseBody.Instances?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.instances?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instances != nil {
            map["Instances"] = self.instances?.toMap()
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
        if let value = dict["Instances"] as? [String: Any?] {
            var model = DescribeInstancesResponseBody.Instances()
            model.fromMap(value)
            self.instances = model
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
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class DescribeInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstancesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeIpWhitelistRequest : Tea.TeaModel {
    public var clusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
    }
}

public class DescribeIpWhitelistResponseBody : Tea.TeaModel {
    public class Groups : Tea.TeaModel {
        public class Group : Tea.TeaModel {
            public class IpList : Tea.TeaModel {
                public var ip: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.ip != nil {
                        map["Ip"] = self.ip!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Ip"] as? [String] {
                        self.ip = value
                    }
                }
            }
            public var groupName: String?

            public var ipList: DescribeIpWhitelistResponseBody.Groups.Group.IpList?

            public var ipVersion: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.ipList?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.groupName != nil {
                    map["GroupName"] = self.groupName!
                }
                if self.ipList != nil {
                    map["IpList"] = self.ipList?.toMap()
                }
                if self.ipVersion != nil {
                    map["IpVersion"] = self.ipVersion!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["GroupName"] as? String {
                    self.groupName = value
                }
                if let value = dict["IpList"] as? [String: Any?] {
                    var model = DescribeIpWhitelistResponseBody.Groups.Group.IpList()
                    model.fromMap(value)
                    self.ipList = model
                }
                if let value = dict["IpVersion"] as? Int32 {
                    self.ipVersion = value
                }
            }
        }
        public var group: [DescribeIpWhitelistResponseBody.Groups.Group]?

        public override init() {
            super.init()
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
                var tmp : [DescribeIpWhitelistResponseBody.Groups.Group] = []
                for v in value {
                    if v != nil {
                        var model = DescribeIpWhitelistResponseBody.Groups.Group()
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
    public var groups: DescribeIpWhitelistResponseBody.Groups?

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
            var model = DescribeIpWhitelistResponseBody.Groups()
            model.fromMap(value)
            self.groups = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeIpWhitelistResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeIpWhitelistResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeIpWhitelistResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeMultiZoneAvailableRegionsRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
    }
}

public class DescribeMultiZoneAvailableRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public class Region : Tea.TeaModel {
            public class AvailableCombines : Tea.TeaModel {
                public class AvailableCombine : Tea.TeaModel {
                    public class Zones : Tea.TeaModel {
                        public var zone: [String]?

                        public override init() {
                            super.init()
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
                                map["Zone"] = self.zone!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Zone"] as? [String] {
                                self.zone = value
                            }
                        }
                    }
                    public var id: String?

                    public var zones: DescribeMultiZoneAvailableRegionsResponseBody.Regions.Region.AvailableCombines.AvailableCombine.Zones?

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
                        if self.id != nil {
                            map["Id"] = self.id!
                        }
                        if self.zones != nil {
                            map["Zones"] = self.zones?.toMap()
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Id"] as? String {
                            self.id = value
                        }
                        if let value = dict["Zones"] as? [String: Any?] {
                            var model = DescribeMultiZoneAvailableRegionsResponseBody.Regions.Region.AvailableCombines.AvailableCombine.Zones()
                            model.fromMap(value)
                            self.zones = model
                        }
                    }
                }
                public var availableCombine: [DescribeMultiZoneAvailableRegionsResponseBody.Regions.Region.AvailableCombines.AvailableCombine]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.availableCombine != nil {
                        var tmp : [Any] = []
                        for k in self.availableCombine! {
                            tmp.append(k.toMap())
                        }
                        map["AvailableCombine"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AvailableCombine"] as? [Any?] {
                        var tmp : [DescribeMultiZoneAvailableRegionsResponseBody.Regions.Region.AvailableCombines.AvailableCombine] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeMultiZoneAvailableRegionsResponseBody.Regions.Region.AvailableCombines.AvailableCombine()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.availableCombine = tmp
                    }
                }
            }
            public var availableCombines: DescribeMultiZoneAvailableRegionsResponseBody.Regions.Region.AvailableCombines?

            public var localName: String?

            public var regionEndpoint: String?

            public var regionId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.availableCombines?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.availableCombines != nil {
                    map["AvailableCombines"] = self.availableCombines?.toMap()
                }
                if self.localName != nil {
                    map["LocalName"] = self.localName!
                }
                if self.regionEndpoint != nil {
                    map["RegionEndpoint"] = self.regionEndpoint!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AvailableCombines"] as? [String: Any?] {
                    var model = DescribeMultiZoneAvailableRegionsResponseBody.Regions.Region.AvailableCombines()
                    model.fromMap(value)
                    self.availableCombines = model
                }
                if let value = dict["LocalName"] as? String {
                    self.localName = value
                }
                if let value = dict["RegionEndpoint"] as? String {
                    self.regionEndpoint = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
            }
        }
        public var region: [DescribeMultiZoneAvailableRegionsResponseBody.Regions.Region]?

        public override init() {
            super.init()
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
                var tmp : [DescribeMultiZoneAvailableRegionsResponseBody.Regions.Region] = []
                for v in value {
                    if v != nil {
                        var model = DescribeMultiZoneAvailableRegionsResponseBody.Regions.Region()
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
    public var regions: DescribeMultiZoneAvailableRegionsResponseBody.Regions?

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
            var model = DescribeMultiZoneAvailableRegionsResponseBody.Regions()
            model.fromMap(value)
            self.regions = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeMultiZoneAvailableRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMultiZoneAvailableRegionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeMultiZoneAvailableRegionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeMultiZoneAvailableResourceRequest : Tea.TeaModel {
    public var chargeType: String?

    public var regionId: String?

    public var zoneCombination: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.zoneCombination != nil {
            map["ZoneCombination"] = self.zoneCombination!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChargeType"] as? String {
            self.chargeType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ZoneCombination"] as? String {
            self.zoneCombination = value
        }
    }
}

public class DescribeMultiZoneAvailableResourceResponseBody : Tea.TeaModel {
    public class AvailableZones : Tea.TeaModel {
        public class AvailableZone : Tea.TeaModel {
            public class MasterResources : Tea.TeaModel {
                public class MasterResource : Tea.TeaModel {
                    public class InstanceTypeDetail : Tea.TeaModel {
                        public var cpu: Int32?

                        public var mem: Int32?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.cpu != nil {
                                map["Cpu"] = self.cpu!
                            }
                            if self.mem != nil {
                                map["Mem"] = self.mem!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Cpu"] as? Int32 {
                                self.cpu = value
                            }
                            if let value = dict["Mem"] as? Int32 {
                                self.mem = value
                            }
                        }
                    }
                    public var instanceType: String?

                    public var instanceTypeDetail: DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.MasterResources.MasterResource.InstanceTypeDetail?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.instanceTypeDetail?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.instanceType != nil {
                            map["InstanceType"] = self.instanceType!
                        }
                        if self.instanceTypeDetail != nil {
                            map["InstanceTypeDetail"] = self.instanceTypeDetail?.toMap()
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["InstanceType"] as? String {
                            self.instanceType = value
                        }
                        if let value = dict["InstanceTypeDetail"] as? [String: Any?] {
                            var model = DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.MasterResources.MasterResource.InstanceTypeDetail()
                            model.fromMap(value)
                            self.instanceTypeDetail = model
                        }
                    }
                }
                public var masterResource: [DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.MasterResources.MasterResource]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.masterResource != nil {
                        var tmp : [Any] = []
                        for k in self.masterResource! {
                            tmp.append(k.toMap())
                        }
                        map["MasterResource"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["MasterResource"] as? [Any?] {
                        var tmp : [DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.MasterResources.MasterResource] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.MasterResources.MasterResource()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.masterResource = tmp
                    }
                }
            }
            public class SupportedEngines : Tea.TeaModel {
                public class SupportedEngine : Tea.TeaModel {
                    public class SupportedEngineVersions : Tea.TeaModel {
                        public class SupportedEngineVersion : Tea.TeaModel {
                            public class SupportedCategories : Tea.TeaModel {
                                public class SupportedCategories : Tea.TeaModel {
                                    public class SupportedStorageTypes : Tea.TeaModel {
                                        public class SupportedStorageType : Tea.TeaModel {
                                            public class CoreResources : Tea.TeaModel {
                                                public class CoreResource : Tea.TeaModel {
                                                    public class DBInstanceStorageRange : Tea.TeaModel {
                                                        public var maxSize: Int32?

                                                        public var minSize: Int32?

                                                        public var stepSize: Int32?

                                                        public override init() {
                                                            super.init()
                                                        }

                                                        public init(_ dict: [String: Any]) {
                                                            super.init()
                                                            self.fromMap(dict)
                                                        }

                                                        public override func validate() throws -> Void {
                                                        }

                                                        public override func toMap() -> [String : Any] {
                                                            var map = super.toMap()
                                                            if self.maxSize != nil {
                                                                map["MaxSize"] = self.maxSize!
                                                            }
                                                            if self.minSize != nil {
                                                                map["MinSize"] = self.minSize!
                                                            }
                                                            if self.stepSize != nil {
                                                                map["StepSize"] = self.stepSize!
                                                            }
                                                            return map
                                                        }

                                                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                                            guard let dict else { return }
                                                            if let value = dict["MaxSize"] as? Int32 {
                                                                self.maxSize = value
                                                            }
                                                            if let value = dict["MinSize"] as? Int32 {
                                                                self.minSize = value
                                                            }
                                                            if let value = dict["StepSize"] as? Int32 {
                                                                self.stepSize = value
                                                            }
                                                        }
                                                    }
                                                    public class InstanceTypeDetail : Tea.TeaModel {
                                                        public var cpu: Int32?

                                                        public var mem: Int32?

                                                        public override init() {
                                                            super.init()
                                                        }

                                                        public init(_ dict: [String: Any]) {
                                                            super.init()
                                                            self.fromMap(dict)
                                                        }

                                                        public override func validate() throws -> Void {
                                                        }

                                                        public override func toMap() -> [String : Any] {
                                                            var map = super.toMap()
                                                            if self.cpu != nil {
                                                                map["Cpu"] = self.cpu!
                                                            }
                                                            if self.mem != nil {
                                                                map["Mem"] = self.mem!
                                                            }
                                                            return map
                                                        }

                                                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                                            guard let dict else { return }
                                                            if let value = dict["Cpu"] as? Int32 {
                                                                self.cpu = value
                                                            }
                                                            if let value = dict["Mem"] as? Int32 {
                                                                self.mem = value
                                                            }
                                                        }
                                                    }
                                                    public var DBInstanceStorageRange: DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories.SupportedStorageTypes.SupportedStorageType.CoreResources.CoreResource.DBInstanceStorageRange?

                                                    public var instanceType: String?

                                                    public var instanceTypeDetail: DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories.SupportedStorageTypes.SupportedStorageType.CoreResources.CoreResource.InstanceTypeDetail?

                                                    public var maxCoreCount: Int32?

                                                    public override init() {
                                                        super.init()
                                                    }

                                                    public init(_ dict: [String: Any]) {
                                                        super.init()
                                                        self.fromMap(dict)
                                                    }

                                                    public override func validate() throws -> Void {
                                                        try self.DBInstanceStorageRange?.validate()
                                                        try self.instanceTypeDetail?.validate()
                                                    }

                                                    public override func toMap() -> [String : Any] {
                                                        var map = super.toMap()
                                                        if self.DBInstanceStorageRange != nil {
                                                            map["DBInstanceStorageRange"] = self.DBInstanceStorageRange?.toMap()
                                                        }
                                                        if self.instanceType != nil {
                                                            map["InstanceType"] = self.instanceType!
                                                        }
                                                        if self.instanceTypeDetail != nil {
                                                            map["InstanceTypeDetail"] = self.instanceTypeDetail?.toMap()
                                                        }
                                                        if self.maxCoreCount != nil {
                                                            map["MaxCoreCount"] = self.maxCoreCount!
                                                        }
                                                        return map
                                                    }

                                                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                                        guard let dict else { return }
                                                        if let value = dict["DBInstanceStorageRange"] as? [String: Any?] {
                                                            var model = DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories.SupportedStorageTypes.SupportedStorageType.CoreResources.CoreResource.DBInstanceStorageRange()
                                                            model.fromMap(value)
                                                            self.DBInstanceStorageRange = model
                                                        }
                                                        if let value = dict["InstanceType"] as? String {
                                                            self.instanceType = value
                                                        }
                                                        if let value = dict["InstanceTypeDetail"] as? [String: Any?] {
                                                            var model = DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories.SupportedStorageTypes.SupportedStorageType.CoreResources.CoreResource.InstanceTypeDetail()
                                                            model.fromMap(value)
                                                            self.instanceTypeDetail = model
                                                        }
                                                        if let value = dict["MaxCoreCount"] as? Int32 {
                                                            self.maxCoreCount = value
                                                        }
                                                    }
                                                }
                                                public var coreResource: [DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories.SupportedStorageTypes.SupportedStorageType.CoreResources.CoreResource]?

                                                public override init() {
                                                    super.init()
                                                }

                                                public init(_ dict: [String: Any]) {
                                                    super.init()
                                                    self.fromMap(dict)
                                                }

                                                public override func validate() throws -> Void {
                                                }

                                                public override func toMap() -> [String : Any] {
                                                    var map = super.toMap()
                                                    if self.coreResource != nil {
                                                        var tmp : [Any] = []
                                                        for k in self.coreResource! {
                                                            tmp.append(k.toMap())
                                                        }
                                                        map["CoreResource"] = tmp
                                                    }
                                                    return map
                                                }

                                                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                                    guard let dict else { return }
                                                    if let value = dict["CoreResource"] as? [Any?] {
                                                        var tmp : [DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories.SupportedStorageTypes.SupportedStorageType.CoreResources.CoreResource] = []
                                                        for v in value {
                                                            if v != nil {
                                                                var model = DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories.SupportedStorageTypes.SupportedStorageType.CoreResources.CoreResource()
                                                                if v != nil {
                                                                    model.fromMap(v as? [String: Any?])
                                                                }
                                                                tmp.append(model)
                                                            }
                                                        }
                                                        self.coreResource = tmp
                                                    }
                                                }
                                            }
                                            public var coreResources: DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories.SupportedStorageTypes.SupportedStorageType.CoreResources?

                                            public var storageType: String?

                                            public override init() {
                                                super.init()
                                            }

                                            public init(_ dict: [String: Any]) {
                                                super.init()
                                                self.fromMap(dict)
                                            }

                                            public override func validate() throws -> Void {
                                                try self.coreResources?.validate()
                                            }

                                            public override func toMap() -> [String : Any] {
                                                var map = super.toMap()
                                                if self.coreResources != nil {
                                                    map["CoreResources"] = self.coreResources?.toMap()
                                                }
                                                if self.storageType != nil {
                                                    map["StorageType"] = self.storageType!
                                                }
                                                return map
                                            }

                                            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                                guard let dict else { return }
                                                if let value = dict["CoreResources"] as? [String: Any?] {
                                                    var model = DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories.SupportedStorageTypes.SupportedStorageType.CoreResources()
                                                    model.fromMap(value)
                                                    self.coreResources = model
                                                }
                                                if let value = dict["StorageType"] as? String {
                                                    self.storageType = value
                                                }
                                            }
                                        }
                                        public var supportedStorageType: [DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories.SupportedStorageTypes.SupportedStorageType]?

                                        public override init() {
                                            super.init()
                                        }

                                        public init(_ dict: [String: Any]) {
                                            super.init()
                                            self.fromMap(dict)
                                        }

                                        public override func validate() throws -> Void {
                                        }

                                        public override func toMap() -> [String : Any] {
                                            var map = super.toMap()
                                            if self.supportedStorageType != nil {
                                                var tmp : [Any] = []
                                                for k in self.supportedStorageType! {
                                                    tmp.append(k.toMap())
                                                }
                                                map["SupportedStorageType"] = tmp
                                            }
                                            return map
                                        }

                                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                            guard let dict else { return }
                                            if let value = dict["SupportedStorageType"] as? [Any?] {
                                                var tmp : [DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories.SupportedStorageTypes.SupportedStorageType] = []
                                                for v in value {
                                                    if v != nil {
                                                        var model = DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories.SupportedStorageTypes.SupportedStorageType()
                                                        if v != nil {
                                                            model.fromMap(v as? [String: Any?])
                                                        }
                                                        tmp.append(model)
                                                    }
                                                }
                                                self.supportedStorageType = tmp
                                            }
                                        }
                                    }
                                    public var category: String?

                                    public var supportedStorageTypes: DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories.SupportedStorageTypes?

                                    public override init() {
                                        super.init()
                                    }

                                    public init(_ dict: [String: Any]) {
                                        super.init()
                                        self.fromMap(dict)
                                    }

                                    public override func validate() throws -> Void {
                                        try self.supportedStorageTypes?.validate()
                                    }

                                    public override func toMap() -> [String : Any] {
                                        var map = super.toMap()
                                        if self.category != nil {
                                            map["Category"] = self.category!
                                        }
                                        if self.supportedStorageTypes != nil {
                                            map["SupportedStorageTypes"] = self.supportedStorageTypes?.toMap()
                                        }
                                        return map
                                    }

                                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                        guard let dict else { return }
                                        if let value = dict["Category"] as? String {
                                            self.category = value
                                        }
                                        if let value = dict["SupportedStorageTypes"] as? [String: Any?] {
                                            var model = DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories.SupportedStorageTypes()
                                            model.fromMap(value)
                                            self.supportedStorageTypes = model
                                        }
                                    }
                                }
                                public var supportedCategories: [DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories]?

                                public override init() {
                                    super.init()
                                }

                                public init(_ dict: [String: Any]) {
                                    super.init()
                                    self.fromMap(dict)
                                }

                                public override func validate() throws -> Void {
                                }

                                public override func toMap() -> [String : Any] {
                                    var map = super.toMap()
                                    if self.supportedCategories != nil {
                                        var tmp : [Any] = []
                                        for k in self.supportedCategories! {
                                            tmp.append(k.toMap())
                                        }
                                        map["SupportedCategories"] = tmp
                                    }
                                    return map
                                }

                                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                    guard let dict else { return }
                                    if let value = dict["SupportedCategories"] as? [Any?] {
                                        var tmp : [DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories] = []
                                        for v in value {
                                            if v != nil {
                                                var model = DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories()
                                                if v != nil {
                                                    model.fromMap(v as? [String: Any?])
                                                }
                                                tmp.append(model)
                                            }
                                        }
                                        self.supportedCategories = tmp
                                    }
                                }
                            }
                            public var supportedCategories: DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories?

                            public var version: String?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                                try self.supportedCategories?.validate()
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.supportedCategories != nil {
                                    map["SupportedCategories"] = self.supportedCategories?.toMap()
                                }
                                if self.version != nil {
                                    map["Version"] = self.version!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                guard let dict else { return }
                                if let value = dict["SupportedCategories"] as? [String: Any?] {
                                    var model = DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories()
                                    model.fromMap(value)
                                    self.supportedCategories = model
                                }
                                if let value = dict["Version"] as? String {
                                    self.version = value
                                }
                            }
                        }
                        public var supportedEngineVersion: [DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion]?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.supportedEngineVersion != nil {
                                var tmp : [Any] = []
                                for k in self.supportedEngineVersion! {
                                    tmp.append(k.toMap())
                                }
                                map["SupportedEngineVersion"] = tmp
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["SupportedEngineVersion"] as? [Any?] {
                                var tmp : [DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion] = []
                                for v in value {
                                    if v != nil {
                                        var model = DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion()
                                        if v != nil {
                                            model.fromMap(v as? [String: Any?])
                                        }
                                        tmp.append(model)
                                    }
                                }
                                self.supportedEngineVersion = tmp
                            }
                        }
                    }
                    public var engine: String?

                    public var supportedEngineVersions: DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.supportedEngineVersions?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.engine != nil {
                            map["Engine"] = self.engine!
                        }
                        if self.supportedEngineVersions != nil {
                            map["SupportedEngineVersions"] = self.supportedEngineVersions?.toMap()
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Engine"] as? String {
                            self.engine = value
                        }
                        if let value = dict["SupportedEngineVersions"] as? [String: Any?] {
                            var model = DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions()
                            model.fromMap(value)
                            self.supportedEngineVersions = model
                        }
                    }
                }
                public var supportedEngine: [DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.supportedEngine != nil {
                        var tmp : [Any] = []
                        for k in self.supportedEngine! {
                            tmp.append(k.toMap())
                        }
                        map["SupportedEngine"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["SupportedEngine"] as? [Any?] {
                        var tmp : [DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.supportedEngine = tmp
                    }
                }
            }
            public var masterResources: DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.MasterResources?

            public var regionId: String?

            public var supportedEngines: DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines?

            public var zoneCombination: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.masterResources?.validate()
                try self.supportedEngines?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.masterResources != nil {
                    map["MasterResources"] = self.masterResources?.toMap()
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.supportedEngines != nil {
                    map["SupportedEngines"] = self.supportedEngines?.toMap()
                }
                if self.zoneCombination != nil {
                    map["ZoneCombination"] = self.zoneCombination!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["MasterResources"] as? [String: Any?] {
                    var model = DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.MasterResources()
                    model.fromMap(value)
                    self.masterResources = model
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["SupportedEngines"] as? [String: Any?] {
                    var model = DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines()
                    model.fromMap(value)
                    self.supportedEngines = model
                }
                if let value = dict["ZoneCombination"] as? String {
                    self.zoneCombination = value
                }
            }
        }
        public var availableZone: [DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.availableZone != nil {
                var tmp : [Any] = []
                for k in self.availableZone! {
                    tmp.append(k.toMap())
                }
                map["AvailableZone"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AvailableZone"] as? [Any?] {
                var tmp : [DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone] = []
                for v in value {
                    if v != nil {
                        var model = DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.availableZone = tmp
            }
        }
    }
    public var availableZones: DescribeMultiZoneAvailableResourceResponseBody.AvailableZones?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.availableZones?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.availableZones != nil {
            map["AvailableZones"] = self.availableZones?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AvailableZones"] as? [String: Any?] {
            var model = DescribeMultiZoneAvailableResourceResponseBody.AvailableZones()
            model.fromMap(value)
            self.availableZones = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeMultiZoneAvailableResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMultiZoneAvailableResourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeMultiZoneAvailableResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeMultiZoneClusterRequest : Tea.TeaModel {
    public var clusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
    }
}

public class DescribeMultiZoneClusterResponseBody : Tea.TeaModel {
    public class MultiZoneInstanceModels : Tea.TeaModel {
        public class MultiZoneInstanceModel : Tea.TeaModel {
            public var hdfsMinorVersion: String?

            public var insName: String?

            public var isHdfsLatestVersion: String?

            public var isLatestVersion: Bool?

            public var latestHdfsMinorVersion: String?

            public var latestMinorVersion: String?

            public var minorVersion: String?

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
                if self.hdfsMinorVersion != nil {
                    map["HdfsMinorVersion"] = self.hdfsMinorVersion!
                }
                if self.insName != nil {
                    map["InsName"] = self.insName!
                }
                if self.isHdfsLatestVersion != nil {
                    map["IsHdfsLatestVersion"] = self.isHdfsLatestVersion!
                }
                if self.isLatestVersion != nil {
                    map["IsLatestVersion"] = self.isLatestVersion!
                }
                if self.latestHdfsMinorVersion != nil {
                    map["LatestHdfsMinorVersion"] = self.latestHdfsMinorVersion!
                }
                if self.latestMinorVersion != nil {
                    map["LatestMinorVersion"] = self.latestMinorVersion!
                }
                if self.minorVersion != nil {
                    map["MinorVersion"] = self.minorVersion!
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
                if let value = dict["HdfsMinorVersion"] as? String {
                    self.hdfsMinorVersion = value
                }
                if let value = dict["InsName"] as? String {
                    self.insName = value
                }
                if let value = dict["IsHdfsLatestVersion"] as? String {
                    self.isHdfsLatestVersion = value
                }
                if let value = dict["IsLatestVersion"] as? Bool {
                    self.isLatestVersion = value
                }
                if let value = dict["LatestHdfsMinorVersion"] as? String {
                    self.latestHdfsMinorVersion = value
                }
                if let value = dict["LatestMinorVersion"] as? String {
                    self.latestMinorVersion = value
                }
                if let value = dict["MinorVersion"] as? String {
                    self.minorVersion = value
                }
                if let value = dict["Role"] as? String {
                    self.role = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
            }
        }
        public var multiZoneInstanceModel: [DescribeMultiZoneClusterResponseBody.MultiZoneInstanceModels.MultiZoneInstanceModel]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.multiZoneInstanceModel != nil {
                var tmp : [Any] = []
                for k in self.multiZoneInstanceModel! {
                    tmp.append(k.toMap())
                }
                map["MultiZoneInstanceModel"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MultiZoneInstanceModel"] as? [Any?] {
                var tmp : [DescribeMultiZoneClusterResponseBody.MultiZoneInstanceModels.MultiZoneInstanceModel] = []
                for v in value {
                    if v != nil {
                        var model = DescribeMultiZoneClusterResponseBody.MultiZoneInstanceModels.MultiZoneInstanceModel()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.multiZoneInstanceModel = tmp
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
        public var tag: [DescribeMultiZoneClusterResponseBody.Tags.Tag]?

        public override init() {
            super.init()
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
                var tmp : [DescribeMultiZoneClusterResponseBody.Tags.Tag] = []
                for v in value {
                    if v != nil {
                        var model = DescribeMultiZoneClusterResponseBody.Tags.Tag()
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
    public var arbiterVSwitchIds: String?

    public var arbiterZoneId: String?

    public var autoRenewal: Bool?

    public var clusterId: String?

    public var clusterName: String?

    public var coldStorageSize: Int32?

    public var coreDiskCount: String?

    public var coreDiskSize: Int32?

    public var coreDiskType: String?

    public var coreInstanceType: String?

    public var coreNodeCount: Int32?

    public var createdTime: String?

    public var createdTimeUTC: String?

    public var duration: Int32?

    public var encryptionKey: String?

    public var encryptionType: String?

    public var engine: String?

    public var expireTime: String?

    public var expireTimeUTC: String?

    public var instanceId: String?

    public var instanceName: String?

    public var isDeletionProtection: Bool?

    public var logDiskCount: String?

    public var logDiskSize: Int32?

    public var logDiskType: String?

    public var logInstanceType: String?

    public var logNodeCount: Int32?

    public var maintainEndTime: String?

    public var maintainStartTime: String?

    public var majorVersion: String?

    public var masterDiskSize: Int32?

    public var masterDiskType: String?

    public var masterInstanceType: String?

    public var masterNodeCount: Int32?

    public var moduleId: Int32?

    public var moduleStackVersion: String?

    public var multiZoneCombination: String?

    public var multiZoneInstanceModels: DescribeMultiZoneClusterResponseBody.MultiZoneInstanceModels?

    public var networkType: String?

    public var parentId: String?

    public var payType: String?

    public var primaryVSwitchIds: String?

    public var primaryZoneId: String?

    public var regionId: String?

    public var requestId: String?

    public var resourceGroupId: String?

    public var standbyVSwitchIds: String?

    public var standbyZoneId: String?

    public var status: String?

    public var tags: DescribeMultiZoneClusterResponseBody.Tags?

    public var taskProgress: String?

    public var taskStatus: String?

    public var vpcId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.multiZoneInstanceModels?.validate()
        try self.tags?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.arbiterVSwitchIds != nil {
            map["ArbiterVSwitchIds"] = self.arbiterVSwitchIds!
        }
        if self.arbiterZoneId != nil {
            map["ArbiterZoneId"] = self.arbiterZoneId!
        }
        if self.autoRenewal != nil {
            map["AutoRenewal"] = self.autoRenewal!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
        }
        if self.coldStorageSize != nil {
            map["ColdStorageSize"] = self.coldStorageSize!
        }
        if self.coreDiskCount != nil {
            map["CoreDiskCount"] = self.coreDiskCount!
        }
        if self.coreDiskSize != nil {
            map["CoreDiskSize"] = self.coreDiskSize!
        }
        if self.coreDiskType != nil {
            map["CoreDiskType"] = self.coreDiskType!
        }
        if self.coreInstanceType != nil {
            map["CoreInstanceType"] = self.coreInstanceType!
        }
        if self.coreNodeCount != nil {
            map["CoreNodeCount"] = self.coreNodeCount!
        }
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
        }
        if self.createdTimeUTC != nil {
            map["CreatedTimeUTC"] = self.createdTimeUTC!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
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
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.expireTimeUTC != nil {
            map["ExpireTimeUTC"] = self.expireTimeUTC!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.isDeletionProtection != nil {
            map["IsDeletionProtection"] = self.isDeletionProtection!
        }
        if self.logDiskCount != nil {
            map["LogDiskCount"] = self.logDiskCount!
        }
        if self.logDiskSize != nil {
            map["LogDiskSize"] = self.logDiskSize!
        }
        if self.logDiskType != nil {
            map["LogDiskType"] = self.logDiskType!
        }
        if self.logInstanceType != nil {
            map["LogInstanceType"] = self.logInstanceType!
        }
        if self.logNodeCount != nil {
            map["LogNodeCount"] = self.logNodeCount!
        }
        if self.maintainEndTime != nil {
            map["MaintainEndTime"] = self.maintainEndTime!
        }
        if self.maintainStartTime != nil {
            map["MaintainStartTime"] = self.maintainStartTime!
        }
        if self.majorVersion != nil {
            map["MajorVersion"] = self.majorVersion!
        }
        if self.masterDiskSize != nil {
            map["MasterDiskSize"] = self.masterDiskSize!
        }
        if self.masterDiskType != nil {
            map["MasterDiskType"] = self.masterDiskType!
        }
        if self.masterInstanceType != nil {
            map["MasterInstanceType"] = self.masterInstanceType!
        }
        if self.masterNodeCount != nil {
            map["MasterNodeCount"] = self.masterNodeCount!
        }
        if self.moduleId != nil {
            map["ModuleId"] = self.moduleId!
        }
        if self.moduleStackVersion != nil {
            map["ModuleStackVersion"] = self.moduleStackVersion!
        }
        if self.multiZoneCombination != nil {
            map["MultiZoneCombination"] = self.multiZoneCombination!
        }
        if self.multiZoneInstanceModels != nil {
            map["MultiZoneInstanceModels"] = self.multiZoneInstanceModels?.toMap()
        }
        if self.networkType != nil {
            map["NetworkType"] = self.networkType!
        }
        if self.parentId != nil {
            map["ParentId"] = self.parentId!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.primaryVSwitchIds != nil {
            map["PrimaryVSwitchIds"] = self.primaryVSwitchIds!
        }
        if self.primaryZoneId != nil {
            map["PrimaryZoneId"] = self.primaryZoneId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.standbyVSwitchIds != nil {
            map["StandbyVSwitchIds"] = self.standbyVSwitchIds!
        }
        if self.standbyZoneId != nil {
            map["StandbyZoneId"] = self.standbyZoneId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tags != nil {
            map["Tags"] = self.tags?.toMap()
        }
        if self.taskProgress != nil {
            map["TaskProgress"] = self.taskProgress!
        }
        if self.taskStatus != nil {
            map["TaskStatus"] = self.taskStatus!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ArbiterVSwitchIds"] as? String {
            self.arbiterVSwitchIds = value
        }
        if let value = dict["ArbiterZoneId"] as? String {
            self.arbiterZoneId = value
        }
        if let value = dict["AutoRenewal"] as? Bool {
            self.autoRenewal = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["ClusterName"] as? String {
            self.clusterName = value
        }
        if let value = dict["ColdStorageSize"] as? Int32 {
            self.coldStorageSize = value
        }
        if let value = dict["CoreDiskCount"] as? String {
            self.coreDiskCount = value
        }
        if let value = dict["CoreDiskSize"] as? Int32 {
            self.coreDiskSize = value
        }
        if let value = dict["CoreDiskType"] as? String {
            self.coreDiskType = value
        }
        if let value = dict["CoreInstanceType"] as? String {
            self.coreInstanceType = value
        }
        if let value = dict["CoreNodeCount"] as? Int32 {
            self.coreNodeCount = value
        }
        if let value = dict["CreatedTime"] as? String {
            self.createdTime = value
        }
        if let value = dict["CreatedTimeUTC"] as? String {
            self.createdTimeUTC = value
        }
        if let value = dict["Duration"] as? Int32 {
            self.duration = value
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
        if let value = dict["ExpireTime"] as? String {
            self.expireTime = value
        }
        if let value = dict["ExpireTimeUTC"] as? String {
            self.expireTimeUTC = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["IsDeletionProtection"] as? Bool {
            self.isDeletionProtection = value
        }
        if let value = dict["LogDiskCount"] as? String {
            self.logDiskCount = value
        }
        if let value = dict["LogDiskSize"] as? Int32 {
            self.logDiskSize = value
        }
        if let value = dict["LogDiskType"] as? String {
            self.logDiskType = value
        }
        if let value = dict["LogInstanceType"] as? String {
            self.logInstanceType = value
        }
        if let value = dict["LogNodeCount"] as? Int32 {
            self.logNodeCount = value
        }
        if let value = dict["MaintainEndTime"] as? String {
            self.maintainEndTime = value
        }
        if let value = dict["MaintainStartTime"] as? String {
            self.maintainStartTime = value
        }
        if let value = dict["MajorVersion"] as? String {
            self.majorVersion = value
        }
        if let value = dict["MasterDiskSize"] as? Int32 {
            self.masterDiskSize = value
        }
        if let value = dict["MasterDiskType"] as? String {
            self.masterDiskType = value
        }
        if let value = dict["MasterInstanceType"] as? String {
            self.masterInstanceType = value
        }
        if let value = dict["MasterNodeCount"] as? Int32 {
            self.masterNodeCount = value
        }
        if let value = dict["ModuleId"] as? Int32 {
            self.moduleId = value
        }
        if let value = dict["ModuleStackVersion"] as? String {
            self.moduleStackVersion = value
        }
        if let value = dict["MultiZoneCombination"] as? String {
            self.multiZoneCombination = value
        }
        if let value = dict["MultiZoneInstanceModels"] as? [String: Any?] {
            var model = DescribeMultiZoneClusterResponseBody.MultiZoneInstanceModels()
            model.fromMap(value)
            self.multiZoneInstanceModels = model
        }
        if let value = dict["NetworkType"] as? String {
            self.networkType = value
        }
        if let value = dict["ParentId"] as? String {
            self.parentId = value
        }
        if let value = dict["PayType"] as? String {
            self.payType = value
        }
        if let value = dict["PrimaryVSwitchIds"] as? String {
            self.primaryVSwitchIds = value
        }
        if let value = dict["PrimaryZoneId"] as? String {
            self.primaryZoneId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["StandbyVSwitchIds"] as? String {
            self.standbyVSwitchIds = value
        }
        if let value = dict["StandbyZoneId"] as? String {
            self.standbyZoneId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Tags"] as? [String: Any?] {
            var model = DescribeMultiZoneClusterResponseBody.Tags()
            model.fromMap(value)
            self.tags = model
        }
        if let value = dict["TaskProgress"] as? String {
            self.taskProgress = value
        }
        if let value = dict["TaskStatus"] as? String {
            self.taskStatus = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
    }
}

public class DescribeMultiZoneClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMultiZoneClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeMultiZoneClusterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeRecoverableTimeRangeRequest : Tea.TeaModel {
    public var clusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
    }
}

public class DescribeRecoverableTimeRangeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var timeBegin: String?

    public var timeEnd: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.timeBegin != nil {
            map["TimeBegin"] = self.timeBegin!
        }
        if self.timeEnd != nil {
            map["TimeEnd"] = self.timeEnd!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TimeBegin"] as? String {
            self.timeBegin = value
        }
        if let value = dict["TimeEnd"] as? String {
            self.timeEnd = value
        }
    }
}

public class DescribeRecoverableTimeRangeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRecoverableTimeRangeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeRecoverableTimeRangeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {
    public var acceptLanguage: String?

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
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.engine != nil {
            map["Engine"] = self.engine!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["Engine"] as? String {
            self.engine = value
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public class Region : Tea.TeaModel {
            public class Zones : Tea.TeaModel {
                public class Zone : Tea.TeaModel {
                    public var id: String?

                    public override init() {
                        super.init()
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
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Id"] as? String {
                            self.id = value
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
            public var localName: String?

            public var regionEndpoint: String?

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
                if self.localName != nil {
                    map["LocalName"] = self.localName!
                }
                if self.regionEndpoint != nil {
                    map["RegionEndpoint"] = self.regionEndpoint!
                }
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
                if let value = dict["LocalName"] as? String {
                    self.localName = value
                }
                if let value = dict["RegionEndpoint"] as? String {
                    self.regionEndpoint = value
                }
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

public class DescribeRestoreFullDetailsRequest : Tea.TeaModel {
    public var clusterId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var restoreRecordId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.restoreRecordId != nil {
            map["RestoreRecordId"] = self.restoreRecordId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RestoreRecordId"] as? String {
            self.restoreRecordId = value
        }
    }
}

public class DescribeRestoreFullDetailsResponseBody : Tea.TeaModel {
    public class RestoreFull : Tea.TeaModel {
        public class RestoreFullDetails : Tea.TeaModel {
            public class RestoreFullDetail : Tea.TeaModel {
                public var dataSize: String?

                public var endTime: String?

                public var message: String?

                public var process: String?

                public var speed: String?

                public var startTime: String?

                public var state: String?

                public var table: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.dataSize != nil {
                        map["DataSize"] = self.dataSize!
                    }
                    if self.endTime != nil {
                        map["EndTime"] = self.endTime!
                    }
                    if self.message != nil {
                        map["Message"] = self.message!
                    }
                    if self.process != nil {
                        map["Process"] = self.process!
                    }
                    if self.speed != nil {
                        map["Speed"] = self.speed!
                    }
                    if self.startTime != nil {
                        map["StartTime"] = self.startTime!
                    }
                    if self.state != nil {
                        map["State"] = self.state!
                    }
                    if self.table != nil {
                        map["Table"] = self.table!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["DataSize"] as? String {
                        self.dataSize = value
                    }
                    if let value = dict["EndTime"] as? String {
                        self.endTime = value
                    }
                    if let value = dict["Message"] as? String {
                        self.message = value
                    }
                    if let value = dict["Process"] as? String {
                        self.process = value
                    }
                    if let value = dict["Speed"] as? String {
                        self.speed = value
                    }
                    if let value = dict["StartTime"] as? String {
                        self.startTime = value
                    }
                    if let value = dict["State"] as? String {
                        self.state = value
                    }
                    if let value = dict["Table"] as? String {
                        self.table = value
                    }
                }
            }
            public var restoreFullDetail: [DescribeRestoreFullDetailsResponseBody.RestoreFull.RestoreFullDetails.RestoreFullDetail]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.restoreFullDetail != nil {
                    var tmp : [Any] = []
                    for k in self.restoreFullDetail! {
                        tmp.append(k.toMap())
                    }
                    map["RestoreFullDetail"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RestoreFullDetail"] as? [Any?] {
                    var tmp : [DescribeRestoreFullDetailsResponseBody.RestoreFull.RestoreFullDetails.RestoreFullDetail] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeRestoreFullDetailsResponseBody.RestoreFull.RestoreFullDetails.RestoreFullDetail()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.restoreFullDetail = tmp
                }
            }
        }
        public var dataSize: String?

        public var fail: Int32?

        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var restoreFullDetails: DescribeRestoreFullDetailsResponseBody.RestoreFull.RestoreFullDetails?

        public var speed: String?

        public var succeed: Int32?

        public var total: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.restoreFullDetails?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataSize != nil {
                map["DataSize"] = self.dataSize!
            }
            if self.fail != nil {
                map["Fail"] = self.fail!
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.restoreFullDetails != nil {
                map["RestoreFullDetails"] = self.restoreFullDetails?.toMap()
            }
            if self.speed != nil {
                map["Speed"] = self.speed!
            }
            if self.succeed != nil {
                map["Succeed"] = self.succeed!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DataSize"] as? String {
                self.dataSize = value
            }
            if let value = dict["Fail"] as? Int32 {
                self.fail = value
            }
            if let value = dict["PageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["RestoreFullDetails"] as? [String: Any?] {
                var model = DescribeRestoreFullDetailsResponseBody.RestoreFull.RestoreFullDetails()
                model.fromMap(value)
                self.restoreFullDetails = model
            }
            if let value = dict["Speed"] as? String {
                self.speed = value
            }
            if let value = dict["Succeed"] as? Int32 {
                self.succeed = value
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var requestId: String?

    public var restoreFull: DescribeRestoreFullDetailsResponseBody.RestoreFull?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.restoreFull?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.restoreFull != nil {
            map["RestoreFull"] = self.restoreFull?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RestoreFull"] as? [String: Any?] {
            var model = DescribeRestoreFullDetailsResponseBody.RestoreFull()
            model.fromMap(value)
            self.restoreFull = model
        }
    }
}

public class DescribeRestoreFullDetailsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRestoreFullDetailsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeRestoreFullDetailsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeRestoreIncrDetailRequest : Tea.TeaModel {
    public var clusterId: String?

    public var restoreRecordId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.restoreRecordId != nil {
            map["RestoreRecordId"] = self.restoreRecordId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["RestoreRecordId"] as? String {
            self.restoreRecordId = value
        }
    }
}

public class DescribeRestoreIncrDetailResponseBody : Tea.TeaModel {
    public class RestoreIncrDetail : Tea.TeaModel {
        public var endTime: String?

        public var process: String?

        public var restoreDelay: String?

        public var restoreStartTs: String?

        public var restoredTs: String?

        public var startTime: String?

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
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.process != nil {
                map["Process"] = self.process!
            }
            if self.restoreDelay != nil {
                map["RestoreDelay"] = self.restoreDelay!
            }
            if self.restoreStartTs != nil {
                map["RestoreStartTs"] = self.restoreStartTs!
            }
            if self.restoredTs != nil {
                map["RestoredTs"] = self.restoredTs!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["Process"] as? String {
                self.process = value
            }
            if let value = dict["RestoreDelay"] as? String {
                self.restoreDelay = value
            }
            if let value = dict["RestoreStartTs"] as? String {
                self.restoreStartTs = value
            }
            if let value = dict["RestoredTs"] as? String {
                self.restoredTs = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["State"] as? String {
                self.state = value
            }
        }
    }
    public var requestId: String?

    public var restoreIncrDetail: DescribeRestoreIncrDetailResponseBody.RestoreIncrDetail?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.restoreIncrDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.restoreIncrDetail != nil {
            map["RestoreIncrDetail"] = self.restoreIncrDetail?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RestoreIncrDetail"] as? [String: Any?] {
            var model = DescribeRestoreIncrDetailResponseBody.RestoreIncrDetail()
            model.fromMap(value)
            self.restoreIncrDetail = model
        }
    }
}

public class DescribeRestoreIncrDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRestoreIncrDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeRestoreIncrDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeRestoreSchemaDetailsRequest : Tea.TeaModel {
    public var clusterId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var restoreRecordId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.restoreRecordId != nil {
            map["RestoreRecordId"] = self.restoreRecordId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RestoreRecordId"] as? String {
            self.restoreRecordId = value
        }
    }
}

public class DescribeRestoreSchemaDetailsResponseBody : Tea.TeaModel {
    public class RestoreSchema : Tea.TeaModel {
        public class RestoreSchemaDetails : Tea.TeaModel {
            public class RestoreSchemaDetail : Tea.TeaModel {
                public var endTime: String?

                public var message: String?

                public var startTime: String?

                public var state: String?

                public var table: String?

                public override init() {
                    super.init()
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
                    if self.message != nil {
                        map["Message"] = self.message!
                    }
                    if self.startTime != nil {
                        map["StartTime"] = self.startTime!
                    }
                    if self.state != nil {
                        map["State"] = self.state!
                    }
                    if self.table != nil {
                        map["Table"] = self.table!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["EndTime"] as? String {
                        self.endTime = value
                    }
                    if let value = dict["Message"] as? String {
                        self.message = value
                    }
                    if let value = dict["StartTime"] as? String {
                        self.startTime = value
                    }
                    if let value = dict["State"] as? String {
                        self.state = value
                    }
                    if let value = dict["Table"] as? String {
                        self.table = value
                    }
                }
            }
            public var restoreSchemaDetail: [DescribeRestoreSchemaDetailsResponseBody.RestoreSchema.RestoreSchemaDetails.RestoreSchemaDetail]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.restoreSchemaDetail != nil {
                    var tmp : [Any] = []
                    for k in self.restoreSchemaDetail! {
                        tmp.append(k.toMap())
                    }
                    map["RestoreSchemaDetail"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RestoreSchemaDetail"] as? [Any?] {
                    var tmp : [DescribeRestoreSchemaDetailsResponseBody.RestoreSchema.RestoreSchemaDetails.RestoreSchemaDetail] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeRestoreSchemaDetailsResponseBody.RestoreSchema.RestoreSchemaDetails.RestoreSchemaDetail()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.restoreSchemaDetail = tmp
                }
            }
        }
        public var fail: Int32?

        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var restoreSchemaDetails: DescribeRestoreSchemaDetailsResponseBody.RestoreSchema.RestoreSchemaDetails?

        public var succeed: Int32?

        public var total: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.restoreSchemaDetails?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fail != nil {
                map["Fail"] = self.fail!
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.restoreSchemaDetails != nil {
                map["RestoreSchemaDetails"] = self.restoreSchemaDetails?.toMap()
            }
            if self.succeed != nil {
                map["Succeed"] = self.succeed!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Fail"] as? Int32 {
                self.fail = value
            }
            if let value = dict["PageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["RestoreSchemaDetails"] as? [String: Any?] {
                var model = DescribeRestoreSchemaDetailsResponseBody.RestoreSchema.RestoreSchemaDetails()
                model.fromMap(value)
                self.restoreSchemaDetails = model
            }
            if let value = dict["Succeed"] as? Int32 {
                self.succeed = value
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var requestId: String?

    public var restoreSchema: DescribeRestoreSchemaDetailsResponseBody.RestoreSchema?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.restoreSchema?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.restoreSchema != nil {
            map["RestoreSchema"] = self.restoreSchema?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RestoreSchema"] as? [String: Any?] {
            var model = DescribeRestoreSchemaDetailsResponseBody.RestoreSchema()
            model.fromMap(value)
            self.restoreSchema = model
        }
    }
}

public class DescribeRestoreSchemaDetailsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRestoreSchemaDetailsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeRestoreSchemaDetailsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeRestoreSummaryRequest : Tea.TeaModel {
    public var clusterId: String?

    public var pageNumber: Int32?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class DescribeRestoreSummaryResponseBody : Tea.TeaModel {
    public class Rescords : Tea.TeaModel {
        public class Rescord : Tea.TeaModel {
            public var bulkLoadProcess: String?

            public var createTime: String?

            public var finishTime: String?

            public var hfileRestoreProcess: String?

            public var logProcess: String?

            public var recordId: String?

            public var schemaProcess: String?

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
                if self.bulkLoadProcess != nil {
                    map["BulkLoadProcess"] = self.bulkLoadProcess!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.finishTime != nil {
                    map["FinishTime"] = self.finishTime!
                }
                if self.hfileRestoreProcess != nil {
                    map["HfileRestoreProcess"] = self.hfileRestoreProcess!
                }
                if self.logProcess != nil {
                    map["LogProcess"] = self.logProcess!
                }
                if self.recordId != nil {
                    map["RecordId"] = self.recordId!
                }
                if self.schemaProcess != nil {
                    map["SchemaProcess"] = self.schemaProcess!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BulkLoadProcess"] as? String {
                    self.bulkLoadProcess = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["FinishTime"] as? String {
                    self.finishTime = value
                }
                if let value = dict["HfileRestoreProcess"] as? String {
                    self.hfileRestoreProcess = value
                }
                if let value = dict["LogProcess"] as? String {
                    self.logProcess = value
                }
                if let value = dict["RecordId"] as? String {
                    self.recordId = value
                }
                if let value = dict["SchemaProcess"] as? String {
                    self.schemaProcess = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
            }
        }
        public var rescord: [DescribeRestoreSummaryResponseBody.Rescords.Rescord]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.rescord != nil {
                var tmp : [Any] = []
                for k in self.rescord! {
                    tmp.append(k.toMap())
                }
                map["Rescord"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Rescord"] as? [Any?] {
                var tmp : [DescribeRestoreSummaryResponseBody.Rescords.Rescord] = []
                for v in value {
                    if v != nil {
                        var model = DescribeRestoreSummaryResponseBody.Rescords.Rescord()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.rescord = tmp
            }
        }
    }
    public var hasMoreRestoreRecord: Int32?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var rescords: DescribeRestoreSummaryResponseBody.Rescords?

    public var total: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.rescords?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.hasMoreRestoreRecord != nil {
            map["HasMoreRestoreRecord"] = self.hasMoreRestoreRecord!
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
        if self.rescords != nil {
            map["Rescords"] = self.rescords?.toMap()
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HasMoreRestoreRecord"] as? Int32 {
            self.hasMoreRestoreRecord = value
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
        if let value = dict["Rescords"] as? [String: Any?] {
            var model = DescribeRestoreSummaryResponseBody.Rescords()
            model.fromMap(value)
            self.rescords = model
        }
        if let value = dict["Total"] as? Int32 {
            self.total = value
        }
    }
}

public class DescribeRestoreSummaryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRestoreSummaryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeRestoreSummaryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeRestoreTablesRequest : Tea.TeaModel {
    public var clusterId: String?

    public var restoreRecordId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.restoreRecordId != nil {
            map["RestoreRecordId"] = self.restoreRecordId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["RestoreRecordId"] as? String {
            self.restoreRecordId = value
        }
    }
}

public class DescribeRestoreTablesResponseBody : Tea.TeaModel {
    public class RestoreFull : Tea.TeaModel {
        public class RestoreFullDetails : Tea.TeaModel {
            public class RestoreFullDetail : Tea.TeaModel {
                public var dataSize: String?

                public var endTime: String?

                public var message: String?

                public var process: String?

                public var speed: String?

                public var startTime: String?

                public var state: String?

                public var table: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.dataSize != nil {
                        map["DataSize"] = self.dataSize!
                    }
                    if self.endTime != nil {
                        map["EndTime"] = self.endTime!
                    }
                    if self.message != nil {
                        map["Message"] = self.message!
                    }
                    if self.process != nil {
                        map["Process"] = self.process!
                    }
                    if self.speed != nil {
                        map["Speed"] = self.speed!
                    }
                    if self.startTime != nil {
                        map["StartTime"] = self.startTime!
                    }
                    if self.state != nil {
                        map["State"] = self.state!
                    }
                    if self.table != nil {
                        map["Table"] = self.table!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["DataSize"] as? String {
                        self.dataSize = value
                    }
                    if let value = dict["EndTime"] as? String {
                        self.endTime = value
                    }
                    if let value = dict["Message"] as? String {
                        self.message = value
                    }
                    if let value = dict["Process"] as? String {
                        self.process = value
                    }
                    if let value = dict["Speed"] as? String {
                        self.speed = value
                    }
                    if let value = dict["StartTime"] as? String {
                        self.startTime = value
                    }
                    if let value = dict["State"] as? String {
                        self.state = value
                    }
                    if let value = dict["Table"] as? String {
                        self.table = value
                    }
                }
            }
            public var restoreFullDetail: [DescribeRestoreTablesResponseBody.RestoreFull.RestoreFullDetails.RestoreFullDetail]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.restoreFullDetail != nil {
                    var tmp : [Any] = []
                    for k in self.restoreFullDetail! {
                        tmp.append(k.toMap())
                    }
                    map["RestoreFullDetail"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RestoreFullDetail"] as? [Any?] {
                    var tmp : [DescribeRestoreTablesResponseBody.RestoreFull.RestoreFullDetails.RestoreFullDetail] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeRestoreTablesResponseBody.RestoreFull.RestoreFullDetails.RestoreFullDetail()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.restoreFullDetail = tmp
                }
            }
        }
        public var dataSize: String?

        public var fail: Int32?

        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var restoreFullDetails: DescribeRestoreTablesResponseBody.RestoreFull.RestoreFullDetails?

        public var speed: String?

        public var succeed: Int32?

        public var total: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.restoreFullDetails?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataSize != nil {
                map["DataSize"] = self.dataSize!
            }
            if self.fail != nil {
                map["Fail"] = self.fail!
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.restoreFullDetails != nil {
                map["RestoreFullDetails"] = self.restoreFullDetails?.toMap()
            }
            if self.speed != nil {
                map["Speed"] = self.speed!
            }
            if self.succeed != nil {
                map["Succeed"] = self.succeed!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DataSize"] as? String {
                self.dataSize = value
            }
            if let value = dict["Fail"] as? Int32 {
                self.fail = value
            }
            if let value = dict["PageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["RestoreFullDetails"] as? [String: Any?] {
                var model = DescribeRestoreTablesResponseBody.RestoreFull.RestoreFullDetails()
                model.fromMap(value)
                self.restoreFullDetails = model
            }
            if let value = dict["Speed"] as? String {
                self.speed = value
            }
            if let value = dict["Succeed"] as? Int32 {
                self.succeed = value
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
        }
    }
    public class RestoreIncrDetail : Tea.TeaModel {
        public var endTime: String?

        public var process: String?

        public var restoreDelay: String?

        public var restoreStartTs: String?

        public var restoredTs: String?

        public var startTime: String?

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
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.process != nil {
                map["Process"] = self.process!
            }
            if self.restoreDelay != nil {
                map["RestoreDelay"] = self.restoreDelay!
            }
            if self.restoreStartTs != nil {
                map["RestoreStartTs"] = self.restoreStartTs!
            }
            if self.restoredTs != nil {
                map["RestoredTs"] = self.restoredTs!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["Process"] as? String {
                self.process = value
            }
            if let value = dict["RestoreDelay"] as? String {
                self.restoreDelay = value
            }
            if let value = dict["RestoreStartTs"] as? String {
                self.restoreStartTs = value
            }
            if let value = dict["RestoredTs"] as? String {
                self.restoredTs = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["State"] as? String {
                self.state = value
            }
        }
    }
    public class RestoreSchema : Tea.TeaModel {
        public class RestoreSchemaDetails : Tea.TeaModel {
            public class RestoreSchemaDetail : Tea.TeaModel {
                public var endTime: String?

                public var message: String?

                public var startTime: String?

                public var state: String?

                public var table: String?

                public override init() {
                    super.init()
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
                    if self.message != nil {
                        map["Message"] = self.message!
                    }
                    if self.startTime != nil {
                        map["StartTime"] = self.startTime!
                    }
                    if self.state != nil {
                        map["State"] = self.state!
                    }
                    if self.table != nil {
                        map["Table"] = self.table!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["EndTime"] as? String {
                        self.endTime = value
                    }
                    if let value = dict["Message"] as? String {
                        self.message = value
                    }
                    if let value = dict["StartTime"] as? String {
                        self.startTime = value
                    }
                    if let value = dict["State"] as? String {
                        self.state = value
                    }
                    if let value = dict["Table"] as? String {
                        self.table = value
                    }
                }
            }
            public var restoreSchemaDetail: [DescribeRestoreTablesResponseBody.RestoreSchema.RestoreSchemaDetails.RestoreSchemaDetail]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.restoreSchemaDetail != nil {
                    var tmp : [Any] = []
                    for k in self.restoreSchemaDetail! {
                        tmp.append(k.toMap())
                    }
                    map["RestoreSchemaDetail"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RestoreSchemaDetail"] as? [Any?] {
                    var tmp : [DescribeRestoreTablesResponseBody.RestoreSchema.RestoreSchemaDetails.RestoreSchemaDetail] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeRestoreTablesResponseBody.RestoreSchema.RestoreSchemaDetails.RestoreSchemaDetail()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.restoreSchemaDetail = tmp
                }
            }
        }
        public var fail: Int32?

        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var restoreSchemaDetails: DescribeRestoreTablesResponseBody.RestoreSchema.RestoreSchemaDetails?

        public var succeed: Int32?

        public var total: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.restoreSchemaDetails?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fail != nil {
                map["Fail"] = self.fail!
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.restoreSchemaDetails != nil {
                map["RestoreSchemaDetails"] = self.restoreSchemaDetails?.toMap()
            }
            if self.succeed != nil {
                map["Succeed"] = self.succeed!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Fail"] as? Int32 {
                self.fail = value
            }
            if let value = dict["PageNumber"] as? Int32 {
                self.pageNumber = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["RestoreSchemaDetails"] as? [String: Any?] {
                var model = DescribeRestoreTablesResponseBody.RestoreSchema.RestoreSchemaDetails()
                model.fromMap(value)
                self.restoreSchemaDetails = model
            }
            if let value = dict["Succeed"] as? Int32 {
                self.succeed = value
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
        }
    }
    public class RestoreSummary : Tea.TeaModel {
        public var endTime: String?

        public var recordId: String?

        public var restoreToDate: String?

        public var startTime: String?

        public var state: String?

        public var targetCluster: String?

        public override init() {
            super.init()
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
            if self.recordId != nil {
                map["RecordId"] = self.recordId!
            }
            if self.restoreToDate != nil {
                map["RestoreToDate"] = self.restoreToDate!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.targetCluster != nil {
                map["TargetCluster"] = self.targetCluster!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["RecordId"] as? String {
                self.recordId = value
            }
            if let value = dict["RestoreToDate"] as? String {
                self.restoreToDate = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["State"] as? String {
                self.state = value
            }
            if let value = dict["TargetCluster"] as? String {
                self.targetCluster = value
            }
        }
    }
    public class Tables : Tea.TeaModel {
        public var table: [String]?

        public override init() {
            super.init()
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
                map["Table"] = self.table!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Table"] as? [String] {
                self.table = value
            }
        }
    }
    public var requestId: String?

    public var restoreFull: DescribeRestoreTablesResponseBody.RestoreFull?

    public var restoreIncrDetail: DescribeRestoreTablesResponseBody.RestoreIncrDetail?

    public var restoreSchema: DescribeRestoreTablesResponseBody.RestoreSchema?

    public var restoreSummary: DescribeRestoreTablesResponseBody.RestoreSummary?

    public var tables: DescribeRestoreTablesResponseBody.Tables?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.restoreFull?.validate()
        try self.restoreIncrDetail?.validate()
        try self.restoreSchema?.validate()
        try self.restoreSummary?.validate()
        try self.tables?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.restoreFull != nil {
            map["RestoreFull"] = self.restoreFull?.toMap()
        }
        if self.restoreIncrDetail != nil {
            map["RestoreIncrDetail"] = self.restoreIncrDetail?.toMap()
        }
        if self.restoreSchema != nil {
            map["RestoreSchema"] = self.restoreSchema?.toMap()
        }
        if self.restoreSummary != nil {
            map["RestoreSummary"] = self.restoreSummary?.toMap()
        }
        if self.tables != nil {
            map["Tables"] = self.tables?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RestoreFull"] as? [String: Any?] {
            var model = DescribeRestoreTablesResponseBody.RestoreFull()
            model.fromMap(value)
            self.restoreFull = model
        }
        if let value = dict["RestoreIncrDetail"] as? [String: Any?] {
            var model = DescribeRestoreTablesResponseBody.RestoreIncrDetail()
            model.fromMap(value)
            self.restoreIncrDetail = model
        }
        if let value = dict["RestoreSchema"] as? [String: Any?] {
            var model = DescribeRestoreTablesResponseBody.RestoreSchema()
            model.fromMap(value)
            self.restoreSchema = model
        }
        if let value = dict["RestoreSummary"] as? [String: Any?] {
            var model = DescribeRestoreTablesResponseBody.RestoreSummary()
            model.fromMap(value)
            self.restoreSummary = model
        }
        if let value = dict["Tables"] as? [String: Any?] {
            var model = DescribeRestoreTablesResponseBody.Tables()
            model.fromMap(value)
            self.tables = model
        }
    }
}

public class DescribeRestoreTablesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRestoreTablesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeRestoreTablesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSecurityGroupsRequest : Tea.TeaModel {
    public var clusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
    }
}

public class DescribeSecurityGroupsResponseBody : Tea.TeaModel {
    public class SecurityGroupIds : Tea.TeaModel {
        public var securityGroupId: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.securityGroupId != nil {
                map["SecurityGroupId"] = self.securityGroupId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SecurityGroupId"] as? [String] {
                self.securityGroupId = value
            }
        }
    }
    public var requestId: String?

    public var securityGroupIds: DescribeSecurityGroupsResponseBody.SecurityGroupIds?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.securityGroupIds?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.securityGroupIds != nil {
            map["SecurityGroupIds"] = self.securityGroupIds?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SecurityGroupIds"] as? [String: Any?] {
            var model = DescribeSecurityGroupsResponseBody.SecurityGroupIds()
            model.fromMap(value)
            self.securityGroupIds = model
        }
    }
}

public class DescribeSecurityGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSecurityGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeSecurityGroupsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeServerlessClusterRequest : Tea.TeaModel {
    public var clusterId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class DescribeServerlessClusterResponseBody : Tea.TeaModel {
    public var autoRenew: String?

    public var clusterType: String?

    public var createTime: String?

    public var cuSize: String?

    public var diskSize: String?

    public var expireTime: String?

    public var haType: String?

    public var hasUser: String?

    public var innerEndpoint: String?

    public var instanceId: String?

    public var instanceName: String?

    public var isDeletionProtection: String?

    public var lockMode: String?

    public var mainVersion: String?

    public var outerEndpoint: String?

    public var payType: String?

    public var regionId: String?

    public var requestId: String?

    public var reserverMaxQpsNum: String?

    public var reserverMinQpsNum: String?

    public var resourceGroupId: String?

    public var status: String?

    public var updateStatus: String?

    public var vSwitchId: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.clusterType != nil {
            map["ClusterType"] = self.clusterType!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.cuSize != nil {
            map["CuSize"] = self.cuSize!
        }
        if self.diskSize != nil {
            map["DiskSize"] = self.diskSize!
        }
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.haType != nil {
            map["HaType"] = self.haType!
        }
        if self.hasUser != nil {
            map["HasUser"] = self.hasUser!
        }
        if self.innerEndpoint != nil {
            map["InnerEndpoint"] = self.innerEndpoint!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.isDeletionProtection != nil {
            map["IsDeletionProtection"] = self.isDeletionProtection!
        }
        if self.lockMode != nil {
            map["LockMode"] = self.lockMode!
        }
        if self.mainVersion != nil {
            map["MainVersion"] = self.mainVersion!
        }
        if self.outerEndpoint != nil {
            map["OuterEndpoint"] = self.outerEndpoint!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.reserverMaxQpsNum != nil {
            map["ReserverMaxQpsNum"] = self.reserverMaxQpsNum!
        }
        if self.reserverMinQpsNum != nil {
            map["ReserverMinQpsNum"] = self.reserverMinQpsNum!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.updateStatus != nil {
            map["UpdateStatus"] = self.updateStatus!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
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
        if let value = dict["AutoRenew"] as? String {
            self.autoRenew = value
        }
        if let value = dict["ClusterType"] as? String {
            self.clusterType = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["CuSize"] as? String {
            self.cuSize = value
        }
        if let value = dict["DiskSize"] as? String {
            self.diskSize = value
        }
        if let value = dict["ExpireTime"] as? String {
            self.expireTime = value
        }
        if let value = dict["HaType"] as? String {
            self.haType = value
        }
        if let value = dict["HasUser"] as? String {
            self.hasUser = value
        }
        if let value = dict["InnerEndpoint"] as? String {
            self.innerEndpoint = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["IsDeletionProtection"] as? String {
            self.isDeletionProtection = value
        }
        if let value = dict["LockMode"] as? String {
            self.lockMode = value
        }
        if let value = dict["MainVersion"] as? String {
            self.mainVersion = value
        }
        if let value = dict["OuterEndpoint"] as? String {
            self.outerEndpoint = value
        }
        if let value = dict["PayType"] as? String {
            self.payType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ReserverMaxQpsNum"] as? String {
            self.reserverMaxQpsNum = value
        }
        if let value = dict["ReserverMinQpsNum"] as? String {
            self.reserverMinQpsNum = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["UpdateStatus"] as? String {
            self.updateStatus = value
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class DescribeServerlessClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeServerlessClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeServerlessClusterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSubDomainRequest : Tea.TeaModel {
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
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class DescribeSubDomainResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var subDomain: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.subDomain != nil {
            map["SubDomain"] = self.subDomain!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SubDomain"] as? String {
            self.subDomain = value
        }
    }
}

public class DescribeSubDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSubDomainResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeSubDomainResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableHBaseueBackupRequest : Tea.TeaModel {
    public var clientToken: String?

    public var coldStorageSize: Int32?

    public var hbaseueClusterId: String?

    public var nodeCount: Int32?

    public override init() {
        super.init()
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
        if self.coldStorageSize != nil {
            map["ColdStorageSize"] = self.coldStorageSize!
        }
        if self.hbaseueClusterId != nil {
            map["HbaseueClusterId"] = self.hbaseueClusterId!
        }
        if self.nodeCount != nil {
            map["NodeCount"] = self.nodeCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ColdStorageSize"] as? Int32 {
            self.coldStorageSize = value
        }
        if let value = dict["HbaseueClusterId"] as? String {
            self.hbaseueClusterId = value
        }
        if let value = dict["NodeCount"] as? Int32 {
            self.nodeCount = value
        }
    }
}

public class EnableHBaseueBackupResponseBody : Tea.TeaModel {
    public var clusterId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
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
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class EnableHBaseueBackupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableHBaseueBackupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = EnableHBaseueBackupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableHBaseueModuleRequest : Tea.TeaModel {
    public var autoRenewPeriod: Int32?

    public var bdsId: String?

    public var clientToken: String?

    public var coreInstanceType: String?

    public var diskSize: Int32?

    public var diskType: String?

    public var hbaseueClusterId: String?

    public var masterInstanceType: String?

    public var moduleClusterName: String?

    public var moduleTypeName: String?

    public var nodeCount: Int32?

    public var payType: String?

    public var period: Int32?

    public var periodUnit: String?

    public var regionId: String?

    public var vpcId: String?

    public var vswitchId: String?

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
        if self.autoRenewPeriod != nil {
            map["AutoRenewPeriod"] = self.autoRenewPeriod!
        }
        if self.bdsId != nil {
            map["BdsId"] = self.bdsId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.coreInstanceType != nil {
            map["CoreInstanceType"] = self.coreInstanceType!
        }
        if self.diskSize != nil {
            map["DiskSize"] = self.diskSize!
        }
        if self.diskType != nil {
            map["DiskType"] = self.diskType!
        }
        if self.hbaseueClusterId != nil {
            map["HbaseueClusterId"] = self.hbaseueClusterId!
        }
        if self.masterInstanceType != nil {
            map["MasterInstanceType"] = self.masterInstanceType!
        }
        if self.moduleClusterName != nil {
            map["ModuleClusterName"] = self.moduleClusterName!
        }
        if self.moduleTypeName != nil {
            map["ModuleTypeName"] = self.moduleTypeName!
        }
        if self.nodeCount != nil {
            map["NodeCount"] = self.nodeCount!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        if self.vswitchId != nil {
            map["VswitchId"] = self.vswitchId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoRenewPeriod"] as? Int32 {
            self.autoRenewPeriod = value
        }
        if let value = dict["BdsId"] as? String {
            self.bdsId = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["CoreInstanceType"] as? String {
            self.coreInstanceType = value
        }
        if let value = dict["DiskSize"] as? Int32 {
            self.diskSize = value
        }
        if let value = dict["DiskType"] as? String {
            self.diskType = value
        }
        if let value = dict["HbaseueClusterId"] as? String {
            self.hbaseueClusterId = value
        }
        if let value = dict["MasterInstanceType"] as? String {
            self.masterInstanceType = value
        }
        if let value = dict["ModuleClusterName"] as? String {
            self.moduleClusterName = value
        }
        if let value = dict["ModuleTypeName"] as? String {
            self.moduleTypeName = value
        }
        if let value = dict["NodeCount"] as? Int32 {
            self.nodeCount = value
        }
        if let value = dict["PayType"] as? String {
            self.payType = value
        }
        if let value = dict["Period"] as? Int32 {
            self.period = value
        }
        if let value = dict["PeriodUnit"] as? String {
            self.periodUnit = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["VswitchId"] as? String {
            self.vswitchId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class EnableHBaseueModuleResponseBody : Tea.TeaModel {
    public var clusterId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
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
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["OrderId"] as? String {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class EnableHBaseueModuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableHBaseueModuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = EnableHBaseueModuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EvaluateMultiZoneResourceRequest : Tea.TeaModel {
    public var arbiterVSwitchId: String?

    public var arbiterZoneId: String?

    public var archVersion: String?

    public var autoRenewPeriod: Int32?

    public var clientToken: String?

    public var clusterName: String?

    public var coreDiskSize: Int32?

    public var coreDiskType: String?

    public var coreInstanceType: String?

    public var coreNodeCount: Int32?

    public var engine: String?

    public var engineVersion: String?

    public var logDiskSize: Int32?

    public var logDiskType: String?

    public var logInstanceType: String?

    public var logNodeCount: Int32?

    public var masterInstanceType: String?

    public var multiZoneCombination: String?

    public var payType: String?

    public var period: Int32?

    public var periodUnit: String?

    public var primaryVSwitchId: String?

    public var primaryZoneId: String?

    public var regionId: String?

    public var securityIPList: String?

    public var standbyVSwitchId: String?

    public var standbyZoneId: String?

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
        if self.arbiterVSwitchId != nil {
            map["ArbiterVSwitchId"] = self.arbiterVSwitchId!
        }
        if self.arbiterZoneId != nil {
            map["ArbiterZoneId"] = self.arbiterZoneId!
        }
        if self.archVersion != nil {
            map["ArchVersion"] = self.archVersion!
        }
        if self.autoRenewPeriod != nil {
            map["AutoRenewPeriod"] = self.autoRenewPeriod!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
        }
        if self.coreDiskSize != nil {
            map["CoreDiskSize"] = self.coreDiskSize!
        }
        if self.coreDiskType != nil {
            map["CoreDiskType"] = self.coreDiskType!
        }
        if self.coreInstanceType != nil {
            map["CoreInstanceType"] = self.coreInstanceType!
        }
        if self.coreNodeCount != nil {
            map["CoreNodeCount"] = self.coreNodeCount!
        }
        if self.engine != nil {
            map["Engine"] = self.engine!
        }
        if self.engineVersion != nil {
            map["EngineVersion"] = self.engineVersion!
        }
        if self.logDiskSize != nil {
            map["LogDiskSize"] = self.logDiskSize!
        }
        if self.logDiskType != nil {
            map["LogDiskType"] = self.logDiskType!
        }
        if self.logInstanceType != nil {
            map["LogInstanceType"] = self.logInstanceType!
        }
        if self.logNodeCount != nil {
            map["LogNodeCount"] = self.logNodeCount!
        }
        if self.masterInstanceType != nil {
            map["MasterInstanceType"] = self.masterInstanceType!
        }
        if self.multiZoneCombination != nil {
            map["MultiZoneCombination"] = self.multiZoneCombination!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
        }
        if self.primaryVSwitchId != nil {
            map["PrimaryVSwitchId"] = self.primaryVSwitchId!
        }
        if self.primaryZoneId != nil {
            map["PrimaryZoneId"] = self.primaryZoneId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.securityIPList != nil {
            map["SecurityIPList"] = self.securityIPList!
        }
        if self.standbyVSwitchId != nil {
            map["StandbyVSwitchId"] = self.standbyVSwitchId!
        }
        if self.standbyZoneId != nil {
            map["StandbyZoneId"] = self.standbyZoneId!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ArbiterVSwitchId"] as? String {
            self.arbiterVSwitchId = value
        }
        if let value = dict["ArbiterZoneId"] as? String {
            self.arbiterZoneId = value
        }
        if let value = dict["ArchVersion"] as? String {
            self.archVersion = value
        }
        if let value = dict["AutoRenewPeriod"] as? Int32 {
            self.autoRenewPeriod = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ClusterName"] as? String {
            self.clusterName = value
        }
        if let value = dict["CoreDiskSize"] as? Int32 {
            self.coreDiskSize = value
        }
        if let value = dict["CoreDiskType"] as? String {
            self.coreDiskType = value
        }
        if let value = dict["CoreInstanceType"] as? String {
            self.coreInstanceType = value
        }
        if let value = dict["CoreNodeCount"] as? Int32 {
            self.coreNodeCount = value
        }
        if let value = dict["Engine"] as? String {
            self.engine = value
        }
        if let value = dict["EngineVersion"] as? String {
            self.engineVersion = value
        }
        if let value = dict["LogDiskSize"] as? Int32 {
            self.logDiskSize = value
        }
        if let value = dict["LogDiskType"] as? String {
            self.logDiskType = value
        }
        if let value = dict["LogInstanceType"] as? String {
            self.logInstanceType = value
        }
        if let value = dict["LogNodeCount"] as? Int32 {
            self.logNodeCount = value
        }
        if let value = dict["MasterInstanceType"] as? String {
            self.masterInstanceType = value
        }
        if let value = dict["MultiZoneCombination"] as? String {
            self.multiZoneCombination = value
        }
        if let value = dict["PayType"] as? String {
            self.payType = value
        }
        if let value = dict["Period"] as? Int32 {
            self.period = value
        }
        if let value = dict["PeriodUnit"] as? String {
            self.periodUnit = value
        }
        if let value = dict["PrimaryVSwitchId"] as? String {
            self.primaryVSwitchId = value
        }
        if let value = dict["PrimaryZoneId"] as? String {
            self.primaryZoneId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SecurityIPList"] as? String {
            self.securityIPList = value
        }
        if let value = dict["StandbyVSwitchId"] as? String {
            self.standbyVSwitchId = value
        }
        if let value = dict["StandbyZoneId"] as? String {
            self.standbyZoneId = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
    }
}

public class EvaluateMultiZoneResourceResponseBody : Tea.TeaModel {
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class EvaluateMultiZoneResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EvaluateMultiZoneResourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = EvaluateMultiZoneResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetMultimodeCmsUrlRequest : Tea.TeaModel {
    public var clusterId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetMultimodeCmsUrlResponseBody : Tea.TeaModel {
    public var clusterId: String?

    public var multimodCmsUrl: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.multimodCmsUrl != nil {
            map["MultimodCmsUrl"] = self.multimodCmsUrl!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["MultimodCmsUrl"] as? String {
            self.multimodCmsUrl = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetMultimodeCmsUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMultimodeCmsUrlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetMultimodeCmsUrlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GrantRequest : Tea.TeaModel {
    public var accountName: String?

    public var aclActions: String?

    public var clusterId: String?

    public var namespace: String?

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
        if self.accountName != nil {
            map["AccountName"] = self.accountName!
        }
        if self.aclActions != nil {
            map["AclActions"] = self.aclActions!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountName"] as? String {
            self.accountName = value
        }
        if let value = dict["AclActions"] as? String {
            self.aclActions = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class GrantResponseBody : Tea.TeaModel {
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

public class GrantResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GrantResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GrantResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListHBaseInstancesRequest : Tea.TeaModel {
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
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
    }
}

public class ListHBaseInstancesResponseBody : Tea.TeaModel {
    public class Instances : Tea.TeaModel {
        public class Instance : Tea.TeaModel {
            public var instanceId: String?

            public var instanceName: String?

            public var isDefault: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.instanceName != nil {
                    map["InstanceName"] = self.instanceName!
                }
                if self.isDefault != nil {
                    map["IsDefault"] = self.isDefault!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["InstanceName"] as? String {
                    self.instanceName = value
                }
                if let value = dict["IsDefault"] as? Bool {
                    self.isDefault = value
                }
            }
        }
        public var instance: [ListHBaseInstancesResponseBody.Instances.Instance]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instance != nil {
                var tmp : [Any] = []
                for k in self.instance! {
                    tmp.append(k.toMap())
                }
                map["Instance"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Instance"] as? [Any?] {
                var tmp : [ListHBaseInstancesResponseBody.Instances.Instance] = []
                for v in value {
                    if v != nil {
                        var model = ListHBaseInstancesResponseBody.Instances.Instance()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.instance = tmp
            }
        }
    }
    public var instances: ListHBaseInstancesResponseBody.Instances?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.instances?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instances != nil {
            map["Instances"] = self.instances?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Instances"] as? [String: Any?] {
            var model = ListHBaseInstancesResponseBody.Instances()
            model.fromMap(value)
            self.instances = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListHBaseInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListHBaseInstancesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListHBaseInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListInstanceServiceConfigHistoriesRequest : Tea.TeaModel {
    public var clusterId: String?

    public var pageNumber: Int32?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListInstanceServiceConfigHistoriesResponseBody : Tea.TeaModel {
    public class ConfigureHistoryList : Tea.TeaModel {
        public class Config : Tea.TeaModel {
            public var configureName: String?

            public var createTime: String?

            public var effective: String?

            public var newValue: String?

            public var oldValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.configureName != nil {
                    map["ConfigureName"] = self.configureName!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.effective != nil {
                    map["Effective"] = self.effective!
                }
                if self.newValue != nil {
                    map["NewValue"] = self.newValue!
                }
                if self.oldValue != nil {
                    map["OldValue"] = self.oldValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ConfigureName"] as? String {
                    self.configureName = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["Effective"] as? String {
                    self.effective = value
                }
                if let value = dict["NewValue"] as? String {
                    self.newValue = value
                }
                if let value = dict["OldValue"] as? String {
                    self.oldValue = value
                }
            }
        }
        public var config: [ListInstanceServiceConfigHistoriesResponseBody.ConfigureHistoryList.Config]?

        public override init() {
            super.init()
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
                var tmp : [Any] = []
                for k in self.config! {
                    tmp.append(k.toMap())
                }
                map["Config"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Config"] as? [Any?] {
                var tmp : [ListInstanceServiceConfigHistoriesResponseBody.ConfigureHistoryList.Config] = []
                for v in value {
                    if v != nil {
                        var model = ListInstanceServiceConfigHistoriesResponseBody.ConfigureHistoryList.Config()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.config = tmp
            }
        }
    }
    public var configureHistoryList: ListInstanceServiceConfigHistoriesResponseBody.ConfigureHistoryList?

    public var pageNumber: Int32?

    public var pageRecordCount: Int32?

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
        try self.configureHistoryList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configureHistoryList != nil {
            map["ConfigureHistoryList"] = self.configureHistoryList?.toMap()
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
        if let value = dict["ConfigureHistoryList"] as? [String: Any?] {
            var model = ListInstanceServiceConfigHistoriesResponseBody.ConfigureHistoryList()
            model.fromMap(value)
            self.configureHistoryList = model
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
        if let value = dict["TotalRecordCount"] as? Int64 {
            self.totalRecordCount = value
        }
    }
}

public class ListInstanceServiceConfigHistoriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstanceServiceConfigHistoriesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListInstanceServiceConfigHistoriesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListInstanceServiceConfigurationsRequest : Tea.TeaModel {
    public var clusterId: String?

    public var pageNumber: Int32?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListInstanceServiceConfigurationsResponseBody : Tea.TeaModel {
    public class ConfigureList : Tea.TeaModel {
        public class Config : Tea.TeaModel {
            public var configureName: String?

            public var configureUnit: String?

            public var defaultValue: String?

            public var description_: String?

            public var needRestart: String?

            public var runningValue: String?

            public var valueRange: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.configureName != nil {
                    map["ConfigureName"] = self.configureName!
                }
                if self.configureUnit != nil {
                    map["ConfigureUnit"] = self.configureUnit!
                }
                if self.defaultValue != nil {
                    map["DefaultValue"] = self.defaultValue!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.needRestart != nil {
                    map["NeedRestart"] = self.needRestart!
                }
                if self.runningValue != nil {
                    map["RunningValue"] = self.runningValue!
                }
                if self.valueRange != nil {
                    map["ValueRange"] = self.valueRange!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ConfigureName"] as? String {
                    self.configureName = value
                }
                if let value = dict["ConfigureUnit"] as? String {
                    self.configureUnit = value
                }
                if let value = dict["DefaultValue"] as? String {
                    self.defaultValue = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["NeedRestart"] as? String {
                    self.needRestart = value
                }
                if let value = dict["RunningValue"] as? String {
                    self.runningValue = value
                }
                if let value = dict["ValueRange"] as? String {
                    self.valueRange = value
                }
            }
        }
        public var config: [ListInstanceServiceConfigurationsResponseBody.ConfigureList.Config]?

        public override init() {
            super.init()
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
                var tmp : [Any] = []
                for k in self.config! {
                    tmp.append(k.toMap())
                }
                map["Config"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Config"] as? [Any?] {
                var tmp : [ListInstanceServiceConfigurationsResponseBody.ConfigureList.Config] = []
                for v in value {
                    if v != nil {
                        var model = ListInstanceServiceConfigurationsResponseBody.ConfigureList.Config()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.config = tmp
            }
        }
    }
    public var configureList: ListInstanceServiceConfigurationsResponseBody.ConfigureList?

    public var pageNumber: Int32?

    public var pageRecordCount: Int32?

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
        try self.configureList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configureList != nil {
            map["ConfigureList"] = self.configureList?.toMap()
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
        if let value = dict["ConfigureList"] as? [String: Any?] {
            var model = ListInstanceServiceConfigurationsResponseBody.ConfigureList()
            model.fromMap(value)
            self.configureList = model
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
        if let value = dict["TotalRecordCount"] as? Int64 {
            self.totalRecordCount = value
        }
    }
}

public class ListInstanceServiceConfigurationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstanceServiceConfigurationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListInstanceServiceConfigurationsResponseBody()
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

public class ListTagsRequest : Tea.TeaModel {
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

public class ListTagsResponseBody : Tea.TeaModel {
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
        public var tag: [ListTagsResponseBody.Tags.Tag]?

        public override init() {
            super.init()
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
                var tmp : [ListTagsResponseBody.Tags.Tag] = []
                for v in value {
                    if v != nil {
                        var model = ListTagsResponseBody.Tags.Tag()
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
    public var requestId: String?

    public var tags: ListTagsResponseBody.Tags?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tags != nil {
            map["Tags"] = self.tags?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Tags"] as? [String: Any?] {
            var model = ListTagsResponseBody.Tags()
            model.fromMap(value)
            self.tags = model
        }
    }
}

public class ListTagsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTagsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListTagsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyAccountPasswordRequest : Tea.TeaModel {
    public var accountName: String?

    public var clusterId: String?

    public var newAccountPassword: String?

    public override init() {
        super.init()
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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.newAccountPassword != nil {
            map["NewAccountPassword"] = self.newAccountPassword!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountName"] as? String {
            self.accountName = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["NewAccountPassword"] as? String {
            self.newAccountPassword = value
        }
    }
}

public class ModifyAccountPasswordResponseBody : Tea.TeaModel {
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

public class ModifyAccountPasswordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAccountPasswordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyAccountPasswordResponseBody()
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

public class ModifyBackupPlanConfigRequest : Tea.TeaModel {
    public var clusterId: String?

    public var fullBackupCycle: String?

    public var minHFileBackupCount: String?

    public var nextFullBackupDate: String?

    public var tables: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.fullBackupCycle != nil {
            map["FullBackupCycle"] = self.fullBackupCycle!
        }
        if self.minHFileBackupCount != nil {
            map["MinHFileBackupCount"] = self.minHFileBackupCount!
        }
        if self.nextFullBackupDate != nil {
            map["NextFullBackupDate"] = self.nextFullBackupDate!
        }
        if self.tables != nil {
            map["Tables"] = self.tables!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["FullBackupCycle"] as? String {
            self.fullBackupCycle = value
        }
        if let value = dict["MinHFileBackupCount"] as? String {
            self.minHFileBackupCount = value
        }
        if let value = dict["NextFullBackupDate"] as? String {
            self.nextFullBackupDate = value
        }
        if let value = dict["Tables"] as? String {
            self.tables = value
        }
    }
}

public class ModifyBackupPlanConfigResponseBody : Tea.TeaModel {
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

public class ModifyBackupPlanConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyBackupPlanConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyBackupPlanConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyBackupPolicyRequest : Tea.TeaModel {
    public var clusterId: String?

    public var preferredBackupEndTimeUTC: String?

    public var preferredBackupPeriod: String?

    public var preferredBackupStartTimeUTC: String?

    public var preferredBackupTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.preferredBackupEndTimeUTC != nil {
            map["PreferredBackupEndTimeUTC"] = self.preferredBackupEndTimeUTC!
        }
        if self.preferredBackupPeriod != nil {
            map["PreferredBackupPeriod"] = self.preferredBackupPeriod!
        }
        if self.preferredBackupStartTimeUTC != nil {
            map["PreferredBackupStartTimeUTC"] = self.preferredBackupStartTimeUTC!
        }
        if self.preferredBackupTime != nil {
            map["PreferredBackupTime"] = self.preferredBackupTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["PreferredBackupEndTimeUTC"] as? String {
            self.preferredBackupEndTimeUTC = value
        }
        if let value = dict["PreferredBackupPeriod"] as? String {
            self.preferredBackupPeriod = value
        }
        if let value = dict["PreferredBackupStartTimeUTC"] as? String {
            self.preferredBackupStartTimeUTC = value
        }
        if let value = dict["PreferredBackupTime"] as? String {
            self.preferredBackupTime = value
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

public class ModifyClusterDeletionProtectionRequest : Tea.TeaModel {
    public var clusterId: String?

    public var protection: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.protection != nil {
            map["Protection"] = self.protection!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["Protection"] as? Bool {
            self.protection = value
        }
    }
}

public class ModifyClusterDeletionProtectionResponseBody : Tea.TeaModel {
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

public class ModifyClusterDeletionProtectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyClusterDeletionProtectionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyClusterDeletionProtectionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyDiskWarningLineRequest : Tea.TeaModel {
    public var clusterId: String?

    public var warningLine: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.warningLine != nil {
            map["WarningLine"] = self.warningLine!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["WarningLine"] as? Int32 {
            self.warningLine = value
        }
    }
}

public class ModifyDiskWarningLineResponseBody : Tea.TeaModel {
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

public class ModifyDiskWarningLineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDiskWarningLineResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyDiskWarningLineResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyInstanceMaintainTimeRequest : Tea.TeaModel {
    public var clusterId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
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
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["MaintainEndTime"] as? String {
            self.maintainEndTime = value
        }
        if let value = dict["MaintainStartTime"] as? String {
            self.maintainStartTime = value
        }
    }
}

public class ModifyInstanceMaintainTimeResponseBody : Tea.TeaModel {
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

public class ModifyInstanceMaintainTimeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyInstanceMaintainTimeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyInstanceMaintainTimeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyInstanceNameRequest : Tea.TeaModel {
    public var clientToken: String?

    public var clusterId: String?

    public var clusterName: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
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
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["ClusterName"] as? String {
            self.clusterName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class ModifyInstanceNameResponseBody : Tea.TeaModel {
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

public class ModifyInstanceNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyInstanceNameResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyInstanceNameResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyInstanceServiceConfigRequest : Tea.TeaModel {
    public var clusterId: String?

    public var configureName: String?

    public var configureValue: String?

    public var parameters: String?

    public var restart: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.configureName != nil {
            map["ConfigureName"] = self.configureName!
        }
        if self.configureValue != nil {
            map["ConfigureValue"] = self.configureValue!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.restart != nil {
            map["Restart"] = self.restart!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["ConfigureName"] as? String {
            self.configureName = value
        }
        if let value = dict["ConfigureValue"] as? String {
            self.configureValue = value
        }
        if let value = dict["Parameters"] as? String {
            self.parameters = value
        }
        if let value = dict["Restart"] as? Bool {
            self.restart = value
        }
    }
}

public class ModifyInstanceServiceConfigResponseBody : Tea.TeaModel {
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

public class ModifyInstanceServiceConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyInstanceServiceConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyInstanceServiceConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyInstanceTypeRequest : Tea.TeaModel {
    public var clusterId: String?

    public var coreInstanceType: String?

    public var masterInstanceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.coreInstanceType != nil {
            map["CoreInstanceType"] = self.coreInstanceType!
        }
        if self.masterInstanceType != nil {
            map["MasterInstanceType"] = self.masterInstanceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["CoreInstanceType"] as? String {
            self.coreInstanceType = value
        }
        if let value = dict["MasterInstanceType"] as? String {
            self.masterInstanceType = value
        }
    }
}

public class ModifyInstanceTypeResponseBody : Tea.TeaModel {
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

public class ModifyInstanceTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyInstanceTypeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyInstanceTypeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyIpWhitelistRequest : Tea.TeaModel {
    public var clusterId: String?

    public var groupName: String?

    public var ipList: String?

    public var ipVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.ipList != nil {
            map["IpList"] = self.ipList!
        }
        if self.ipVersion != nil {
            map["IpVersion"] = self.ipVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["IpList"] as? String {
            self.ipList = value
        }
        if let value = dict["IpVersion"] as? String {
            self.ipVersion = value
        }
    }
}

public class ModifyIpWhitelistResponseBody : Tea.TeaModel {
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

public class ModifyIpWhitelistResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyIpWhitelistResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyIpWhitelistResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyMultiZoneClusterNodeTypeRequest : Tea.TeaModel {
    public var clusterId: String?

    public var coreInstanceType: String?

    public var logInstanceType: String?

    public var masterInstanceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.coreInstanceType != nil {
            map["CoreInstanceType"] = self.coreInstanceType!
        }
        if self.logInstanceType != nil {
            map["LogInstanceType"] = self.logInstanceType!
        }
        if self.masterInstanceType != nil {
            map["MasterInstanceType"] = self.masterInstanceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["CoreInstanceType"] as? String {
            self.coreInstanceType = value
        }
        if let value = dict["LogInstanceType"] as? String {
            self.logInstanceType = value
        }
        if let value = dict["MasterInstanceType"] as? String {
            self.masterInstanceType = value
        }
    }
}

public class ModifyMultiZoneClusterNodeTypeResponseBody : Tea.TeaModel {
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

public class ModifyMultiZoneClusterNodeTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyMultiZoneClusterNodeTypeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyMultiZoneClusterNodeTypeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifySecurityGroupsRequest : Tea.TeaModel {
    public var clusterId: String?

    public var securityGroupIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.securityGroupIds != nil {
            map["SecurityGroupIds"] = self.securityGroupIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["SecurityGroupIds"] as? String {
            self.securityGroupIds = value
        }
    }
}

public class ModifySecurityGroupsResponseBody : Tea.TeaModel {
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

public class ModifySecurityGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifySecurityGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifySecurityGroupsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyUIAccountPasswordRequest : Tea.TeaModel {
    public var accountName: String?

    public var accountPassword: String?

    public var clusterId: String?

    public override init() {
        super.init()
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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
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
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
    }
}

public class ModifyUIAccountPasswordResponseBody : Tea.TeaModel {
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

public class ModifyUIAccountPasswordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyUIAccountPasswordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyUIAccountPasswordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class MoveResourceGroupRequest : Tea.TeaModel {
    public var clusterId: String?

    public var newResourceGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.newResourceGroupId != nil {
            map["NewResourceGroupId"] = self.newResourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["NewResourceGroupId"] as? String {
            self.newResourceGroupId = value
        }
    }
}

public class MoveResourceGroupResponseBody : Tea.TeaModel {
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

public class MoveResourceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MoveResourceGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = MoveResourceGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class OpenBackupRequest : Tea.TeaModel {
    public var clusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
    }
}

public class OpenBackupResponseBody : Tea.TeaModel {
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

public class OpenBackupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OpenBackupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = OpenBackupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PurgeInstanceRequest : Tea.TeaModel {
    public var clusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
    }
}

public class PurgeInstanceResponseBody : Tea.TeaModel {
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

public class PurgeInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PurgeInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = PurgeInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryHBaseHaDBRequest : Tea.TeaModel {
    public var bdsId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bdsId != nil {
            map["BdsId"] = self.bdsId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BdsId"] as? String {
            self.bdsId = value
        }
    }
}

public class QueryHBaseHaDBResponseBody : Tea.TeaModel {
    public class ClusterList : Tea.TeaModel {
        public class Cluster : Tea.TeaModel {
            public class HaSlbConnList : Tea.TeaModel {
                public class HaSlbConn : Tea.TeaModel {
                    public var hbaseType: String?

                    public var slbConnAddr: String?

                    public var slbType: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.hbaseType != nil {
                            map["HbaseType"] = self.hbaseType!
                        }
                        if self.slbConnAddr != nil {
                            map["SlbConnAddr"] = self.slbConnAddr!
                        }
                        if self.slbType != nil {
                            map["SlbType"] = self.slbType!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["HbaseType"] as? String {
                            self.hbaseType = value
                        }
                        if let value = dict["SlbConnAddr"] as? String {
                            self.slbConnAddr = value
                        }
                        if let value = dict["SlbType"] as? String {
                            self.slbType = value
                        }
                    }
                }
                public var haSlbConn: [QueryHBaseHaDBResponseBody.ClusterList.Cluster.HaSlbConnList.HaSlbConn]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.haSlbConn != nil {
                        var tmp : [Any] = []
                        for k in self.haSlbConn! {
                            tmp.append(k.toMap())
                        }
                        map["HaSlbConn"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["HaSlbConn"] as? [Any?] {
                        var tmp : [QueryHBaseHaDBResponseBody.ClusterList.Cluster.HaSlbConnList.HaSlbConn] = []
                        for v in value {
                            if v != nil {
                                var model = QueryHBaseHaDBResponseBody.ClusterList.Cluster.HaSlbConnList.HaSlbConn()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.haSlbConn = tmp
                    }
                }
            }
            public var activeName: String?

            public var bdsName: String?

            public var haName: String?

            public var haSlbConnList: QueryHBaseHaDBResponseBody.ClusterList.Cluster.HaSlbConnList?

            public var standbyName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.haSlbConnList?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.activeName != nil {
                    map["ActiveName"] = self.activeName!
                }
                if self.bdsName != nil {
                    map["BdsName"] = self.bdsName!
                }
                if self.haName != nil {
                    map["HaName"] = self.haName!
                }
                if self.haSlbConnList != nil {
                    map["HaSlbConnList"] = self.haSlbConnList?.toMap()
                }
                if self.standbyName != nil {
                    map["StandbyName"] = self.standbyName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ActiveName"] as? String {
                    self.activeName = value
                }
                if let value = dict["BdsName"] as? String {
                    self.bdsName = value
                }
                if let value = dict["HaName"] as? String {
                    self.haName = value
                }
                if let value = dict["HaSlbConnList"] as? [String: Any?] {
                    var model = QueryHBaseHaDBResponseBody.ClusterList.Cluster.HaSlbConnList()
                    model.fromMap(value)
                    self.haSlbConnList = model
                }
                if let value = dict["StandbyName"] as? String {
                    self.standbyName = value
                }
            }
        }
        public var cluster: [QueryHBaseHaDBResponseBody.ClusterList.Cluster]?

        public override init() {
            super.init()
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
                var tmp : [Any] = []
                for k in self.cluster! {
                    tmp.append(k.toMap())
                }
                map["Cluster"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Cluster"] as? [Any?] {
                var tmp : [QueryHBaseHaDBResponseBody.ClusterList.Cluster] = []
                for v in value {
                    if v != nil {
                        var model = QueryHBaseHaDBResponseBody.ClusterList.Cluster()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.cluster = tmp
            }
        }
    }
    public var clusterList: QueryHBaseHaDBResponseBody.ClusterList?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.clusterList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterList != nil {
            map["ClusterList"] = self.clusterList?.toMap()
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
        if let value = dict["ClusterList"] as? [String: Any?] {
            var model = QueryHBaseHaDBResponseBody.ClusterList()
            model.fromMap(value)
            self.clusterList = model
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
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class QueryHBaseHaDBResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryHBaseHaDBResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryHBaseHaDBResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryXpackRelateDBRequest : Tea.TeaModel {
    public var clusterId: String?

    public var hasSingleNode: Bool?

    public var relateDbType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.hasSingleNode != nil {
            map["HasSingleNode"] = self.hasSingleNode!
        }
        if self.relateDbType != nil {
            map["RelateDbType"] = self.relateDbType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["HasSingleNode"] as? Bool {
            self.hasSingleNode = value
        }
        if let value = dict["RelateDbType"] as? String {
            self.relateDbType = value
        }
    }
}

public class QueryXpackRelateDBResponseBody : Tea.TeaModel {
    public class ClusterList : Tea.TeaModel {
        public class Cluster : Tea.TeaModel {
            public var clusterId: String?

            public var clusterName: String?

            public var DBType: String?

            public var DBVersion: String?

            public var isRelated: Bool?

            public var lockMode: String?

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
                if self.clusterId != nil {
                    map["ClusterId"] = self.clusterId!
                }
                if self.clusterName != nil {
                    map["ClusterName"] = self.clusterName!
                }
                if self.DBType != nil {
                    map["DBType"] = self.DBType!
                }
                if self.DBVersion != nil {
                    map["DBVersion"] = self.DBVersion!
                }
                if self.isRelated != nil {
                    map["IsRelated"] = self.isRelated!
                }
                if self.lockMode != nil {
                    map["LockMode"] = self.lockMode!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ClusterId"] as? String {
                    self.clusterId = value
                }
                if let value = dict["ClusterName"] as? String {
                    self.clusterName = value
                }
                if let value = dict["DBType"] as? String {
                    self.DBType = value
                }
                if let value = dict["DBVersion"] as? String {
                    self.DBVersion = value
                }
                if let value = dict["IsRelated"] as? Bool {
                    self.isRelated = value
                }
                if let value = dict["LockMode"] as? String {
                    self.lockMode = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
            }
        }
        public var cluster: [QueryXpackRelateDBResponseBody.ClusterList.Cluster]?

        public override init() {
            super.init()
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
                var tmp : [Any] = []
                for k in self.cluster! {
                    tmp.append(k.toMap())
                }
                map["Cluster"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Cluster"] as? [Any?] {
                var tmp : [QueryXpackRelateDBResponseBody.ClusterList.Cluster] = []
                for v in value {
                    if v != nil {
                        var model = QueryXpackRelateDBResponseBody.ClusterList.Cluster()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.cluster = tmp
            }
        }
    }
    public var clusterList: QueryXpackRelateDBResponseBody.ClusterList?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.clusterList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterList != nil {
            map["ClusterList"] = self.clusterList?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterList"] as? [String: Any?] {
            var model = QueryXpackRelateDBResponseBody.ClusterList()
            model.fromMap(value)
            self.clusterList = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class QueryXpackRelateDBResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryXpackRelateDBResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = QueryXpackRelateDBResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RelateDbForHBaseHaRequest : Tea.TeaModel {
    public var clusterId: String?

    public var haActive: String?

    public var haActiveClusterKey: String?

    public var haActiveDBType: String?

    public var haActiveHbaseFsDir: String?

    public var haActiveHdfsUri: String?

    public var haActivePassword: String?

    public var haActiveUser: String?

    public var haActiveVersion: String?

    public var haMigrateType: String?

    public var haStandby: String?

    public var haStandbyClusterKey: String?

    public var haStandbyDBType: String?

    public var haStandbyHbaseFsDir: String?

    public var haStandbyHdfsUri: String?

    public var haStandbyPassword: String?

    public var haStandbyUser: String?

    public var haStandbyVersion: String?

    public var haTables: String?

    public var isActiveStandard: Bool?

    public var isStandbyStandard: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.haActive != nil {
            map["HaActive"] = self.haActive!
        }
        if self.haActiveClusterKey != nil {
            map["HaActiveClusterKey"] = self.haActiveClusterKey!
        }
        if self.haActiveDBType != nil {
            map["HaActiveDBType"] = self.haActiveDBType!
        }
        if self.haActiveHbaseFsDir != nil {
            map["HaActiveHbaseFsDir"] = self.haActiveHbaseFsDir!
        }
        if self.haActiveHdfsUri != nil {
            map["HaActiveHdfsUri"] = self.haActiveHdfsUri!
        }
        if self.haActivePassword != nil {
            map["HaActivePassword"] = self.haActivePassword!
        }
        if self.haActiveUser != nil {
            map["HaActiveUser"] = self.haActiveUser!
        }
        if self.haActiveVersion != nil {
            map["HaActiveVersion"] = self.haActiveVersion!
        }
        if self.haMigrateType != nil {
            map["HaMigrateType"] = self.haMigrateType!
        }
        if self.haStandby != nil {
            map["HaStandby"] = self.haStandby!
        }
        if self.haStandbyClusterKey != nil {
            map["HaStandbyClusterKey"] = self.haStandbyClusterKey!
        }
        if self.haStandbyDBType != nil {
            map["HaStandbyDBType"] = self.haStandbyDBType!
        }
        if self.haStandbyHbaseFsDir != nil {
            map["HaStandbyHbaseFsDir"] = self.haStandbyHbaseFsDir!
        }
        if self.haStandbyHdfsUri != nil {
            map["HaStandbyHdfsUri"] = self.haStandbyHdfsUri!
        }
        if self.haStandbyPassword != nil {
            map["HaStandbyPassword"] = self.haStandbyPassword!
        }
        if self.haStandbyUser != nil {
            map["HaStandbyUser"] = self.haStandbyUser!
        }
        if self.haStandbyVersion != nil {
            map["HaStandbyVersion"] = self.haStandbyVersion!
        }
        if self.haTables != nil {
            map["HaTables"] = self.haTables!
        }
        if self.isActiveStandard != nil {
            map["IsActiveStandard"] = self.isActiveStandard!
        }
        if self.isStandbyStandard != nil {
            map["IsStandbyStandard"] = self.isStandbyStandard!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["HaActive"] as? String {
            self.haActive = value
        }
        if let value = dict["HaActiveClusterKey"] as? String {
            self.haActiveClusterKey = value
        }
        if let value = dict["HaActiveDBType"] as? String {
            self.haActiveDBType = value
        }
        if let value = dict["HaActiveHbaseFsDir"] as? String {
            self.haActiveHbaseFsDir = value
        }
        if let value = dict["HaActiveHdfsUri"] as? String {
            self.haActiveHdfsUri = value
        }
        if let value = dict["HaActivePassword"] as? String {
            self.haActivePassword = value
        }
        if let value = dict["HaActiveUser"] as? String {
            self.haActiveUser = value
        }
        if let value = dict["HaActiveVersion"] as? String {
            self.haActiveVersion = value
        }
        if let value = dict["HaMigrateType"] as? String {
            self.haMigrateType = value
        }
        if let value = dict["HaStandby"] as? String {
            self.haStandby = value
        }
        if let value = dict["HaStandbyClusterKey"] as? String {
            self.haStandbyClusterKey = value
        }
        if let value = dict["HaStandbyDBType"] as? String {
            self.haStandbyDBType = value
        }
        if let value = dict["HaStandbyHbaseFsDir"] as? String {
            self.haStandbyHbaseFsDir = value
        }
        if let value = dict["HaStandbyHdfsUri"] as? String {
            self.haStandbyHdfsUri = value
        }
        if let value = dict["HaStandbyPassword"] as? String {
            self.haStandbyPassword = value
        }
        if let value = dict["HaStandbyUser"] as? String {
            self.haStandbyUser = value
        }
        if let value = dict["HaStandbyVersion"] as? String {
            self.haStandbyVersion = value
        }
        if let value = dict["HaTables"] as? String {
            self.haTables = value
        }
        if let value = dict["IsActiveStandard"] as? Bool {
            self.isActiveStandard = value
        }
        if let value = dict["IsStandbyStandard"] as? Bool {
            self.isStandbyStandard = value
        }
    }
}

public class RelateDbForHBaseHaResponseBody : Tea.TeaModel {
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

public class RelateDbForHBaseHaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RelateDbForHBaseHaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RelateDbForHBaseHaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReleasePublicNetworkAddressRequest : Tea.TeaModel {
    public var clusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
    }
}

public class ReleasePublicNetworkAddressResponseBody : Tea.TeaModel {
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

public class ReleasePublicNetworkAddressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReleasePublicNetworkAddressResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ReleasePublicNetworkAddressResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RenewInstanceRequest : Tea.TeaModel {
    public var clusterId: String?

    public var duration: Int32?

    public var pricingCycle: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.pricingCycle != nil {
            map["PricingCycle"] = self.pricingCycle!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["Duration"] as? Int32 {
            self.duration = value
        }
        if let value = dict["PricingCycle"] as? String {
            self.pricingCycle = value
        }
    }
}

public class RenewInstanceResponseBody : Tea.TeaModel {
    public var orderId: Int64?

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
        if let value = dict["OrderId"] as? Int64 {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RenewInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RenewInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RenewInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ResizeColdStorageSizeRequest : Tea.TeaModel {
    public var clusterId: String?

    public var coldStorageSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.coldStorageSize != nil {
            map["ColdStorageSize"] = self.coldStorageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["ColdStorageSize"] as? Int32 {
            self.coldStorageSize = value
        }
    }
}

public class ResizeColdStorageSizeResponseBody : Tea.TeaModel {
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

public class ResizeColdStorageSizeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResizeColdStorageSizeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ResizeColdStorageSizeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ResizeDiskSizeRequest : Tea.TeaModel {
    public var clusterId: String?

    public var nodeDiskSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.nodeDiskSize != nil {
            map["NodeDiskSize"] = self.nodeDiskSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["NodeDiskSize"] as? Int32 {
            self.nodeDiskSize = value
        }
    }
}

public class ResizeDiskSizeResponseBody : Tea.TeaModel {
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

public class ResizeDiskSizeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResizeDiskSizeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ResizeDiskSizeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ResizeMultiZoneClusterDiskSizeRequest : Tea.TeaModel {
    public var clusterId: String?

    public var coreDiskSize: Int32?

    public var logDiskSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.coreDiskSize != nil {
            map["CoreDiskSize"] = self.coreDiskSize!
        }
        if self.logDiskSize != nil {
            map["LogDiskSize"] = self.logDiskSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["CoreDiskSize"] as? Int32 {
            self.coreDiskSize = value
        }
        if let value = dict["LogDiskSize"] as? Int32 {
            self.logDiskSize = value
        }
    }
}

public class ResizeMultiZoneClusterDiskSizeResponseBody : Tea.TeaModel {
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

public class ResizeMultiZoneClusterDiskSizeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResizeMultiZoneClusterDiskSizeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ResizeMultiZoneClusterDiskSizeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ResizeMultiZoneClusterNodeCountRequest : Tea.TeaModel {
    public var arbiterVSwitchId: String?

    public var clusterId: String?

    public var coreNodeCount: Int32?

    public var logNodeCount: Int32?

    public var primaryCoreNodeCount: Int32?

    public var primaryVSwitchId: String?

    public var standbyCoreNodeCount: Int32?

    public var standbyVSwitchId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.arbiterVSwitchId != nil {
            map["ArbiterVSwitchId"] = self.arbiterVSwitchId!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.coreNodeCount != nil {
            map["CoreNodeCount"] = self.coreNodeCount!
        }
        if self.logNodeCount != nil {
            map["LogNodeCount"] = self.logNodeCount!
        }
        if self.primaryCoreNodeCount != nil {
            map["PrimaryCoreNodeCount"] = self.primaryCoreNodeCount!
        }
        if self.primaryVSwitchId != nil {
            map["PrimaryVSwitchId"] = self.primaryVSwitchId!
        }
        if self.standbyCoreNodeCount != nil {
            map["StandbyCoreNodeCount"] = self.standbyCoreNodeCount!
        }
        if self.standbyVSwitchId != nil {
            map["StandbyVSwitchId"] = self.standbyVSwitchId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ArbiterVSwitchId"] as? String {
            self.arbiterVSwitchId = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["CoreNodeCount"] as? Int32 {
            self.coreNodeCount = value
        }
        if let value = dict["LogNodeCount"] as? Int32 {
            self.logNodeCount = value
        }
        if let value = dict["PrimaryCoreNodeCount"] as? Int32 {
            self.primaryCoreNodeCount = value
        }
        if let value = dict["PrimaryVSwitchId"] as? String {
            self.primaryVSwitchId = value
        }
        if let value = dict["StandbyCoreNodeCount"] as? Int32 {
            self.standbyCoreNodeCount = value
        }
        if let value = dict["StandbyVSwitchId"] as? String {
            self.standbyVSwitchId = value
        }
    }
}

public class ResizeMultiZoneClusterNodeCountResponseBody : Tea.TeaModel {
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

public class ResizeMultiZoneClusterNodeCountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResizeMultiZoneClusterNodeCountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ResizeMultiZoneClusterNodeCountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ResizeNodeCountRequest : Tea.TeaModel {
    public var clusterId: String?

    public var nodeCount: Int32?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.nodeCount != nil {
            map["NodeCount"] = self.nodeCount!
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
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["NodeCount"] as? Int32 {
            self.nodeCount = value
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class ResizeNodeCountResponseBody : Tea.TeaModel {
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

public class ResizeNodeCountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResizeNodeCountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ResizeNodeCountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RestartInstanceRequest : Tea.TeaModel {
    public var clusterId: String?

    public var components: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.components != nil {
            map["Components"] = self.components!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["Components"] as? String {
            self.components = value
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

public class RevokeRequest : Tea.TeaModel {
    public var accountName: String?

    public var aclActions: String?

    public var clusterId: String?

    public var namespace: String?

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
        if self.accountName != nil {
            map["AccountName"] = self.accountName!
        }
        if self.aclActions != nil {
            map["AclActions"] = self.aclActions!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountName"] as? String {
            self.accountName = value
        }
        if let value = dict["AclActions"] as? String {
            self.aclActions = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class RevokeResponseBody : Tea.TeaModel {
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

public class RevokeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RevokeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RevokeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SwitchHbaseHaSlbRequest : Tea.TeaModel {
    public var bdsId: String?

    public var haId: String?

    public var haTypes: String?

    public var hbaseType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bdsId != nil {
            map["BdsId"] = self.bdsId!
        }
        if self.haId != nil {
            map["HaId"] = self.haId!
        }
        if self.haTypes != nil {
            map["HaTypes"] = self.haTypes!
        }
        if self.hbaseType != nil {
            map["HbaseType"] = self.hbaseType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BdsId"] as? String {
            self.bdsId = value
        }
        if let value = dict["HaId"] as? String {
            self.haId = value
        }
        if let value = dict["HaTypes"] as? String {
            self.haTypes = value
        }
        if let value = dict["HbaseType"] as? String {
            self.hbaseType = value
        }
    }
}

public class SwitchHbaseHaSlbResponseBody : Tea.TeaModel {
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

public class SwitchHbaseHaSlbResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SwitchHbaseHaSlbResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SwitchHbaseHaSlbResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SwitchServiceRequest : Tea.TeaModel {
    public var clusterId: String?

    public var operate: String?

    public var serviceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.operate != nil {
            map["Operate"] = self.operate!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["Operate"] as? String {
            self.operate = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
        }
    }
}

public class SwitchServiceResponseBody : Tea.TeaModel {
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

public class SwitchServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SwitchServiceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SwitchServiceResponseBody()
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

public class UnTagResourcesRequest : Tea.TeaModel {
    public var all: Bool?

    public var regionId: String?

    public var resourceId: [String]?

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
        if let value = dict["TagKey"] as? [String] {
            self.tagKey = value
        }
    }
}

public class UnTagResourcesResponseBody : Tea.TeaModel {
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

public class UnTagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnTagResourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UnTagResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpgradeMinorVersionRequest : Tea.TeaModel {
    public var clusterId: String?

    public var components: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.components != nil {
            map["Components"] = self.components!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["Components"] as? String {
            self.components = value
        }
    }
}

public class UpgradeMinorVersionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var upgradingComponents: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.upgradingComponents != nil {
            map["UpgradingComponents"] = self.upgradingComponents!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UpgradingComponents"] as? String {
            self.upgradingComponents = value
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

public class UpgradeMultiZoneClusterRequest : Tea.TeaModel {
    public var clusterId: String?

    public var components: String?

    public var restartComponents: String?

    public var runMode: String?

    public var upgradeInsName: String?

    public var versions: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.components != nil {
            map["Components"] = self.components!
        }
        if self.restartComponents != nil {
            map["RestartComponents"] = self.restartComponents!
        }
        if self.runMode != nil {
            map["RunMode"] = self.runMode!
        }
        if self.upgradeInsName != nil {
            map["UpgradeInsName"] = self.upgradeInsName!
        }
        if self.versions != nil {
            map["Versions"] = self.versions!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["Components"] as? String {
            self.components = value
        }
        if let value = dict["RestartComponents"] as? String {
            self.restartComponents = value
        }
        if let value = dict["RunMode"] as? String {
            self.runMode = value
        }
        if let value = dict["UpgradeInsName"] as? String {
            self.upgradeInsName = value
        }
        if let value = dict["Versions"] as? String {
            self.versions = value
        }
    }
}

public class UpgradeMultiZoneClusterResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var upgradingComponents: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.upgradingComponents != nil {
            map["UpgradingComponents"] = self.upgradingComponents!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UpgradingComponents"] as? String {
            self.upgradingComponents = value
        }
    }
}

public class UpgradeMultiZoneClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpgradeMultiZoneClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpgradeMultiZoneClusterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class XpackRelateDBRequest : Tea.TeaModel {
    public var clusterId: String?

    public var dbClusterIds: String?

    public var relateDbType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.dbClusterIds != nil {
            map["DbClusterIds"] = self.dbClusterIds!
        }
        if self.relateDbType != nil {
            map["RelateDbType"] = self.relateDbType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["DbClusterIds"] as? String {
            self.dbClusterIds = value
        }
        if let value = dict["RelateDbType"] as? String {
            self.relateDbType = value
        }
    }
}

public class XpackRelateDBResponseBody : Tea.TeaModel {
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

public class XpackRelateDBResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: XpackRelateDBResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = XpackRelateDBResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
