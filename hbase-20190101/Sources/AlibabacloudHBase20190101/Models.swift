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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ExtInfo") && dict["ExtInfo"] != nil {
            self.extInfo = dict["ExtInfo"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = AddUserHdfsInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = AllocatePublicNetworkAddressResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ids") && dict["Ids"] != nil {
            self.ids = dict["Ids"] as! String
        }
        if dict.keys.contains("OwnerAccount") && dict["OwnerAccount"] != nil {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
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
        if dict.keys.contains("Ids") && dict["Ids"] != nil {
            self.ids = dict["Ids"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CancelActiveOperationTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Components") && dict["Components"] != nil {
            self.components = dict["Components"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Component") && dict["Component"] != nil {
                    self.component = dict["Component"] as! String
                }
                if dict.keys.contains("IsLatestVersion") && dict["IsLatestVersion"] != nil {
                    self.isLatestVersion = dict["IsLatestVersion"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Component") && dict["Component"] != nil {
                var tmp : [CheckComponentsVersionResponseBody.Components.Component] = []
                for v in dict["Component"] as! [Any] {
                    var model = CheckComponentsVersionResponseBody.Components.Component()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Components") && dict["Components"] != nil {
            var model = CheckComponentsVersionResponseBody.Components()
            model.fromMap(dict["Components"] as! [String: Any])
            self.components = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CheckComponentsVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CloseBackupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Duration") && dict["Duration"] != nil {
            self.duration = dict["Duration"] as! Int32
        }
        if dict.keys.contains("PayType") && dict["PayType"] != nil {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("PricingCycle") && dict["PricingCycle"] != nil {
            self.pricingCycle = dict["PricingCycle"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ConvertInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountName") && dict["AccountName"] != nil {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("AccountPassword") && dict["AccountPassword"] != nil {
            self.accountPassword = dict["AccountPassword"] as! String
        }
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateBackupPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoRenewPeriod") && dict["AutoRenewPeriod"] != nil {
            self.autoRenewPeriod = dict["AutoRenewPeriod"] as! Int32
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ClusterName") && dict["ClusterName"] != nil {
            self.clusterName = dict["ClusterName"] as! String
        }
        if dict.keys.contains("ColdStorageSize") && dict["ColdStorageSize"] != nil {
            self.coldStorageSize = dict["ColdStorageSize"] as! Int32
        }
        if dict.keys.contains("CoreInstanceType") && dict["CoreInstanceType"] != nil {
            self.coreInstanceType = dict["CoreInstanceType"] as! String
        }
        if dict.keys.contains("DiskSize") && dict["DiskSize"] != nil {
            self.diskSize = dict["DiskSize"] as! Int32
        }
        if dict.keys.contains("DiskType") && dict["DiskType"] != nil {
            self.diskType = dict["DiskType"] as! String
        }
        if dict.keys.contains("EncryptionKey") && dict["EncryptionKey"] != nil {
            self.encryptionKey = dict["EncryptionKey"] as! String
        }
        if dict.keys.contains("Engine") && dict["Engine"] != nil {
            self.engine = dict["Engine"] as! String
        }
        if dict.keys.contains("EngineVersion") && dict["EngineVersion"] != nil {
            self.engineVersion = dict["EngineVersion"] as! String
        }
        if dict.keys.contains("MasterInstanceType") && dict["MasterInstanceType"] != nil {
            self.masterInstanceType = dict["MasterInstanceType"] as! String
        }
        if dict.keys.contains("NodeCount") && dict["NodeCount"] != nil {
            self.nodeCount = dict["NodeCount"] as! Int32
        }
        if dict.keys.contains("PayType") && dict["PayType"] != nil {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("Period") && dict["Period"] != nil {
            self.period = dict["Period"] as! Int32
        }
        if dict.keys.contains("PeriodUnit") && dict["PeriodUnit"] != nil {
            self.periodUnit = dict["PeriodUnit"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SecurityIPList") && dict["SecurityIPList"] != nil {
            self.securityIPList = dict["SecurityIPList"] as! String
        }
        if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceName") && dict["ResourceName"] != nil {
            self.resourceName = dict["ResourceName"] as! String
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateGlobalResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("SlbServer") && dict["SlbServer"] != nil {
            self.slbServer = dict["SlbServer"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateHBaseSlbServerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BdsId") && dict["BdsId"] != nil {
            self.bdsId = dict["BdsId"] as! String
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("HaId") && dict["HaId"] != nil {
            self.haId = dict["HaId"] as! String
        }
        if dict.keys.contains("HaTypes") && dict["HaTypes"] != nil {
            self.haTypes = dict["HaTypes"] as! String
        }
        if dict.keys.contains("HbaseType") && dict["HbaseType"] != nil {
            self.hbaseType = dict["HbaseType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateHbaseHaSlbResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ArbiterVSwitchId") && dict["ArbiterVSwitchId"] != nil {
            self.arbiterVSwitchId = dict["ArbiterVSwitchId"] as! String
        }
        if dict.keys.contains("ArbiterZoneId") && dict["ArbiterZoneId"] != nil {
            self.arbiterZoneId = dict["ArbiterZoneId"] as! String
        }
        if dict.keys.contains("ArchVersion") && dict["ArchVersion"] != nil {
            self.archVersion = dict["ArchVersion"] as! String
        }
        if dict.keys.contains("AutoRenewPeriod") && dict["AutoRenewPeriod"] != nil {
            self.autoRenewPeriod = dict["AutoRenewPeriod"] as! Int32
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ClusterName") && dict["ClusterName"] != nil {
            self.clusterName = dict["ClusterName"] as! String
        }
        if dict.keys.contains("CoreDiskSize") && dict["CoreDiskSize"] != nil {
            self.coreDiskSize = dict["CoreDiskSize"] as! Int32
        }
        if dict.keys.contains("CoreDiskType") && dict["CoreDiskType"] != nil {
            self.coreDiskType = dict["CoreDiskType"] as! String
        }
        if dict.keys.contains("CoreInstanceType") && dict["CoreInstanceType"] != nil {
            self.coreInstanceType = dict["CoreInstanceType"] as! String
        }
        if dict.keys.contains("CoreNodeCount") && dict["CoreNodeCount"] != nil {
            self.coreNodeCount = dict["CoreNodeCount"] as! Int32
        }
        if dict.keys.contains("Engine") && dict["Engine"] != nil {
            self.engine = dict["Engine"] as! String
        }
        if dict.keys.contains("EngineVersion") && dict["EngineVersion"] != nil {
            self.engineVersion = dict["EngineVersion"] as! String
        }
        if dict.keys.contains("LogDiskSize") && dict["LogDiskSize"] != nil {
            self.logDiskSize = dict["LogDiskSize"] as! Int32
        }
        if dict.keys.contains("LogDiskType") && dict["LogDiskType"] != nil {
            self.logDiskType = dict["LogDiskType"] as! String
        }
        if dict.keys.contains("LogInstanceType") && dict["LogInstanceType"] != nil {
            self.logInstanceType = dict["LogInstanceType"] as! String
        }
        if dict.keys.contains("LogNodeCount") && dict["LogNodeCount"] != nil {
            self.logNodeCount = dict["LogNodeCount"] as! Int32
        }
        if dict.keys.contains("MasterInstanceType") && dict["MasterInstanceType"] != nil {
            self.masterInstanceType = dict["MasterInstanceType"] as! String
        }
        if dict.keys.contains("MultiZoneCombination") && dict["MultiZoneCombination"] != nil {
            self.multiZoneCombination = dict["MultiZoneCombination"] as! String
        }
        if dict.keys.contains("PayType") && dict["PayType"] != nil {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("Period") && dict["Period"] != nil {
            self.period = dict["Period"] as! Int32
        }
        if dict.keys.contains("PeriodUnit") && dict["PeriodUnit"] != nil {
            self.periodUnit = dict["PeriodUnit"] as! String
        }
        if dict.keys.contains("PrimaryVSwitchId") && dict["PrimaryVSwitchId"] != nil {
            self.primaryVSwitchId = dict["PrimaryVSwitchId"] as! String
        }
        if dict.keys.contains("PrimaryZoneId") && dict["PrimaryZoneId"] != nil {
            self.primaryZoneId = dict["PrimaryZoneId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SecurityIPList") && dict["SecurityIPList"] != nil {
            self.securityIPList = dict["SecurityIPList"] as! String
        }
        if dict.keys.contains("StandbyVSwitchId") && dict["StandbyVSwitchId"] != nil {
            self.standbyVSwitchId = dict["StandbyVSwitchId"] as! String
        }
        if dict.keys.contains("StandbyZoneId") && dict["StandbyZoneId"] != nil {
            self.standbyZoneId = dict["StandbyZoneId"] as! String
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateMultiZoneClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("RestoreAllTable") && dict["RestoreAllTable"] != nil {
            self.restoreAllTable = dict["RestoreAllTable"] as! Bool
        }
        if dict.keys.contains("RestoreByCopy") && dict["RestoreByCopy"] != nil {
            self.restoreByCopy = dict["RestoreByCopy"] as! Bool
        }
        if dict.keys.contains("RestoreToDate") && dict["RestoreToDate"] != nil {
            self.restoreToDate = dict["RestoreToDate"] as! String
        }
        if dict.keys.contains("Tables") && dict["Tables"] != nil {
            self.tables = dict["Tables"] as! String
        }
        if dict.keys.contains("TargetClusterId") && dict["TargetClusterId"] != nil {
            self.targetClusterId = dict["TargetClusterId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateRestorePlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoRenewPeriod") && dict["AutoRenewPeriod"] != nil {
            self.autoRenewPeriod = dict["AutoRenewPeriod"] as! Int32
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ClientType") && dict["ClientType"] != nil {
            self.clientType = dict["ClientType"] as! String
        }
        if dict.keys.contains("ClusterName") && dict["ClusterName"] != nil {
            self.clusterName = dict["ClusterName"] as! String
        }
        if dict.keys.contains("DiskType") && dict["DiskType"] != nil {
            self.diskType = dict["DiskType"] as! String
        }
        if dict.keys.contains("Engine") && dict["Engine"] != nil {
            self.engine = dict["Engine"] as! String
        }
        if dict.keys.contains("EngineVersion") && dict["EngineVersion"] != nil {
            self.engineVersion = dict["EngineVersion"] as! String
        }
        if dict.keys.contains("PayType") && dict["PayType"] != nil {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("Period") && dict["Period"] != nil {
            self.period = dict["Period"] as! Int32
        }
        if dict.keys.contains("PeriodUnit") && dict["PeriodUnit"] != nil {
            self.periodUnit = dict["PeriodUnit"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ServerlessCapability") && dict["ServerlessCapability"] != nil {
            self.serverlessCapability = dict["ServerlessCapability"] as! Int32
        }
        if dict.keys.contains("ServerlessSpec") && dict["ServerlessSpec"] != nil {
            self.serverlessSpec = dict["ServerlessSpec"] as! String
        }
        if dict.keys.contains("ServerlessStorage") && dict["ServerlessStorage"] != nil {
            self.serverlessStorage = dict["ServerlessStorage"] as! Int32
        }
        if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("PassWord") && dict["PassWord"] != nil {
            self.passWord = dict["PassWord"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateServerlessClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountName") && dict["AccountName"] != nil {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceName") && dict["ResourceName"] != nil {
            self.resourceName = dict["ResourceName"] as! String
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteGlobalResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BdsId") && dict["BdsId"] != nil {
            self.bdsId = dict["BdsId"] as! String
        }
        if dict.keys.contains("HaId") && dict["HaId"] != nil {
            self.haId = dict["HaId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteHBaseHaDBResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("SlbServer") && dict["SlbServer"] != nil {
            self.slbServer = dict["SlbServer"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteHBaseSlbServerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BdsId") && dict["BdsId"] != nil {
            self.bdsId = dict["BdsId"] as! String
        }
        if dict.keys.contains("HaId") && dict["HaId"] != nil {
            self.haId = dict["HaId"] as! String
        }
        if dict.keys.contains("HaTypes") && dict["HaTypes"] != nil {
            self.haTypes = dict["HaTypes"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteHbaseHaSlbResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ImmediateDeleteFlag") && dict["ImmediateDeleteFlag"] != nil {
            self.immediateDeleteFlag = dict["ImmediateDeleteFlag"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ImmediateDeleteFlag") && dict["ImmediateDeleteFlag"] != nil {
            self.immediateDeleteFlag = dict["ImmediateDeleteFlag"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteMultiZoneClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteServerlessClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("NameService") && dict["NameService"] != nil {
            self.nameService = dict["NameService"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteUserHdfsInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("account") && dict["account"] != nil {
                self.account = dict["account"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Accounts") && dict["Accounts"] != nil {
            var model = DescribeAccountsResponseBody.Accounts()
            model.fromMap(dict["Accounts"] as! [String: Any])
            self.accounts = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeAccountsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsHistory") && dict["IsHistory"] != nil {
            self.isHistory = dict["IsHistory"] as! Int32
        }
        if dict.keys.contains("OwnerAccount") && dict["OwnerAccount"] != nil {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Count") && dict["Count"] != nil {
                self.count = dict["Count"] as! Int32
            }
            if dict.keys.contains("TaskType") && dict["TaskType"] != nil {
                self.taskType = dict["TaskType"] as! String
            }
            if dict.keys.contains("TaskTypeInfoEn") && dict["TaskTypeInfoEn"] != nil {
                self.taskTypeInfoEn = dict["TaskTypeInfoEn"] as! String
            }
            if dict.keys.contains("TaskTypeInfoZh") && dict["TaskTypeInfoZh"] != nil {
                self.taskTypeInfoZh = dict["TaskTypeInfoZh"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TypeList") && dict["TypeList"] != nil {
            var tmp : [DescribeActiveOperationTaskTypeResponseBody.TypeList] = []
            for v in dict["TypeList"] as! [Any] {
                var model = DescribeActiveOperationTaskTypeResponseBody.TypeList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeActiveOperationTaskTypeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AllowCancel") && dict["AllowCancel"] != nil {
            self.allowCancel = dict["AllowCancel"] as! Int32
        }
        if dict.keys.contains("AllowChange") && dict["AllowChange"] != nil {
            self.allowChange = dict["AllowChange"] as! Int32
        }
        if dict.keys.contains("ChangeLevel") && dict["ChangeLevel"] != nil {
            self.changeLevel = dict["ChangeLevel"] as! String
        }
        if dict.keys.contains("DbType") && dict["DbType"] != nil {
            self.dbType = dict["DbType"] as! String
        }
        if dict.keys.contains("InsName") && dict["InsName"] != nil {
            self.insName = dict["InsName"] as! String
        }
        if dict.keys.contains("OwnerAccount") && dict["OwnerAccount"] != nil {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProductId") && dict["ProductId"] != nil {
            self.productId = dict["ProductId"] as! String
        }
        if dict.keys.contains("Region") && dict["Region"] != nil {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Int32
        }
        if dict.keys.contains("TaskType") && dict["TaskType"] != nil {
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AllowCancel") && dict["AllowCancel"] != nil {
                self.allowCancel = dict["AllowCancel"] as! String
            }
            if dict.keys.contains("AllowChange") && dict["AllowChange"] != nil {
                self.allowChange = dict["AllowChange"] as! String
            }
            if dict.keys.contains("ChangeLevel") && dict["ChangeLevel"] != nil {
                self.changeLevel = dict["ChangeLevel"] as! String
            }
            if dict.keys.contains("ChangeLevelEn") && dict["ChangeLevelEn"] != nil {
                self.changeLevelEn = dict["ChangeLevelEn"] as! String
            }
            if dict.keys.contains("ChangeLevelZh") && dict["ChangeLevelZh"] != nil {
                self.changeLevelZh = dict["ChangeLevelZh"] as! String
            }
            if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                self.createdTime = dict["CreatedTime"] as! String
            }
            if dict.keys.contains("CurrentAVZ") && dict["CurrentAVZ"] != nil {
                self.currentAVZ = dict["CurrentAVZ"] as! String
            }
            if dict.keys.contains("DbType") && dict["DbType"] != nil {
                self.dbType = dict["DbType"] as! String
            }
            if dict.keys.contains("DbVersion") && dict["DbVersion"] != nil {
                self.dbVersion = dict["DbVersion"] as! String
            }
            if dict.keys.contains("Deadline") && dict["Deadline"] != nil {
                self.deadline = dict["Deadline"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! Int32
            }
            if dict.keys.contains("ImpactEn") && dict["ImpactEn"] != nil {
                self.impactEn = dict["ImpactEn"] as! String
            }
            if dict.keys.contains("ImpactZh") && dict["ImpactZh"] != nil {
                self.impactZh = dict["ImpactZh"] as! String
            }
            if dict.keys.contains("InsComment") && dict["InsComment"] != nil {
                self.insComment = dict["InsComment"] as! String
            }
            if dict.keys.contains("InsName") && dict["InsName"] != nil {
                self.insName = dict["InsName"] as! String
            }
            if dict.keys.contains("ModifiedTime") && dict["ModifiedTime"] != nil {
                self.modifiedTime = dict["ModifiedTime"] as! String
            }
            if dict.keys.contains("PrepareInterval") && dict["PrepareInterval"] != nil {
                self.prepareInterval = dict["PrepareInterval"] as! String
            }
            if dict.keys.contains("Region") && dict["Region"] != nil {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("ResultInfo") && dict["ResultInfo"] != nil {
                self.resultInfo = dict["ResultInfo"] as! String
            }
            if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("SubInsNames") && dict["SubInsNames"] != nil {
                self.subInsNames = dict["SubInsNames"] as! [String]
            }
            if dict.keys.contains("SwitchTime") && dict["SwitchTime"] != nil {
                self.switchTime = dict["SwitchTime"] as! String
            }
            if dict.keys.contains("TaskType") && dict["TaskType"] != nil {
                self.taskType = dict["TaskType"] as! String
            }
            if dict.keys.contains("TaskTypeEn") && dict["TaskTypeEn"] != nil {
                self.taskTypeEn = dict["TaskTypeEn"] as! String
            }
            if dict.keys.contains("TaskTypeZh") && dict["TaskTypeZh"] != nil {
                self.taskTypeZh = dict["TaskTypeZh"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Items") && dict["Items"] != nil {
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
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalRecordCount") && dict["TotalRecordCount"] != nil {
            self.totalRecordCount = dict["TotalRecordCount"] as! Int32
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeActiveOperationTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChargeType") && dict["ChargeType"] != nil {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("CoreInstanceType") && dict["CoreInstanceType"] != nil {
            self.coreInstanceType = dict["CoreInstanceType"] as! String
        }
        if dict.keys.contains("DiskType") && dict["DiskType"] != nil {
            self.diskType = dict["DiskType"] as! String
        }
        if dict.keys.contains("Engine") && dict["Engine"] != nil {
            self.engine = dict["Engine"] as! String
        }
        if dict.keys.contains("EngineVersion") && dict["EngineVersion"] != nil {
            self.engineVersion = dict["EngineVersion"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
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

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Cpu") && dict["Cpu"] != nil {
                                self.cpu = dict["Cpu"] as! Int32
                            }
                            if dict.keys.contains("Mem") && dict["Mem"] != nil {
                                self.mem = dict["Mem"] as! Int32
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
                            self.instanceType = dict["InstanceType"] as! String
                        }
                        if dict.keys.contains("InstanceTypeDetail") && dict["InstanceTypeDetail"] != nil {
                            var model = DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.MasterResources.MasterResource.InstanceTypeDetail()
                            model.fromMap(dict["InstanceTypeDetail"] as! [String: Any])
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("MasterResource") && dict["MasterResource"] != nil {
                        var tmp : [DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.MasterResources.MasterResource] = []
                        for v in dict["MasterResource"] as! [Any] {
                            var model = DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.MasterResources.MasterResource()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
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

                                                        public override func fromMap(_ dict: [String: Any]) -> Void {
                                                            if dict.keys.contains("MaxSize") && dict["MaxSize"] != nil {
                                                                self.maxSize = dict["MaxSize"] as! Int32
                                                            }
                                                            if dict.keys.contains("MinSize") && dict["MinSize"] != nil {
                                                                self.minSize = dict["MinSize"] as! Int32
                                                            }
                                                            if dict.keys.contains("StepSize") && dict["StepSize"] != nil {
                                                                self.stepSize = dict["StepSize"] as! Int32
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

                                                        public override func fromMap(_ dict: [String: Any]) -> Void {
                                                            if dict.keys.contains("Cpu") && dict["Cpu"] != nil {
                                                                self.cpu = dict["Cpu"] as! Int32
                                                            }
                                                            if dict.keys.contains("Mem") && dict["Mem"] != nil {
                                                                self.mem = dict["Mem"] as! Int32
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

                                                    public override func fromMap(_ dict: [String: Any]) -> Void {
                                                        if dict.keys.contains("DBInstanceStorageRange") && dict["DBInstanceStorageRange"] != nil {
                                                            var model = DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories.SupportedStorageTypes.SupportedStorageType.CoreResources.CoreResource.DBInstanceStorageRange()
                                                            model.fromMap(dict["DBInstanceStorageRange"] as! [String: Any])
                                                            self.DBInstanceStorageRange = model
                                                        }
                                                        if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
                                                            self.instanceType = dict["InstanceType"] as! String
                                                        }
                                                        if dict.keys.contains("InstanceTypeDetail") && dict["InstanceTypeDetail"] != nil {
                                                            var model = DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories.SupportedStorageTypes.SupportedStorageType.CoreResources.CoreResource.InstanceTypeDetail()
                                                            model.fromMap(dict["InstanceTypeDetail"] as! [String: Any])
                                                            self.instanceTypeDetail = model
                                                        }
                                                        if dict.keys.contains("MaxCoreCount") && dict["MaxCoreCount"] != nil {
                                                            self.maxCoreCount = dict["MaxCoreCount"] as! Int32
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

                                                public override func fromMap(_ dict: [String: Any]) -> Void {
                                                    if dict.keys.contains("CoreResource") && dict["CoreResource"] != nil {
                                                        var tmp : [DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories.SupportedStorageTypes.SupportedStorageType.CoreResources.CoreResource] = []
                                                        for v in dict["CoreResource"] as! [Any] {
                                                            var model = DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories.SupportedStorageTypes.SupportedStorageType.CoreResources.CoreResource()
                                                            if v != nil {
                                                                model.fromMap(v as! [String: Any])
                                                            }
                                                            tmp.append(model)
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

                                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                                if dict.keys.contains("CoreResources") && dict["CoreResources"] != nil {
                                                    var model = DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories.SupportedStorageTypes.SupportedStorageType.CoreResources()
                                                    model.fromMap(dict["CoreResources"] as! [String: Any])
                                                    self.coreResources = model
                                                }
                                                if dict.keys.contains("StorageType") && dict["StorageType"] != nil {
                                                    self.storageType = dict["StorageType"] as! String
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

                                        public override func fromMap(_ dict: [String: Any]) -> Void {
                                            if dict.keys.contains("SupportedStorageType") && dict["SupportedStorageType"] != nil {
                                                var tmp : [DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories.SupportedStorageTypes.SupportedStorageType] = []
                                                for v in dict["SupportedStorageType"] as! [Any] {
                                                    var model = DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories.SupportedStorageTypes.SupportedStorageType()
                                                    if v != nil {
                                                        model.fromMap(v as! [String: Any])
                                                    }
                                                    tmp.append(model)
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

                                    public override func fromMap(_ dict: [String: Any]) -> Void {
                                        if dict.keys.contains("Category") && dict["Category"] != nil {
                                            self.category = dict["Category"] as! String
                                        }
                                        if dict.keys.contains("SupportedStorageTypes") && dict["SupportedStorageTypes"] != nil {
                                            var model = DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories.SupportedStorageTypes()
                                            model.fromMap(dict["SupportedStorageTypes"] as! [String: Any])
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

                                public override func fromMap(_ dict: [String: Any]) -> Void {
                                    if dict.keys.contains("SupportedCategories") && dict["SupportedCategories"] != nil {
                                        var tmp : [DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories] = []
                                        for v in dict["SupportedCategories"] as! [Any] {
                                            var model = DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories()
                                            if v != nil {
                                                model.fromMap(v as! [String: Any])
                                            }
                                            tmp.append(model)
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

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("SupportedCategories") && dict["SupportedCategories"] != nil {
                                    var model = DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories()
                                    model.fromMap(dict["SupportedCategories"] as! [String: Any])
                                    self.supportedCategories = model
                                }
                                if dict.keys.contains("Version") && dict["Version"] != nil {
                                    self.version = dict["Version"] as! String
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

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("SupportedEngineVersion") && dict["SupportedEngineVersion"] != nil {
                                var tmp : [DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion] = []
                                for v in dict["SupportedEngineVersion"] as! [Any] {
                                    var model = DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion()
                                    if v != nil {
                                        model.fromMap(v as! [String: Any])
                                    }
                                    tmp.append(model)
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Engine") && dict["Engine"] != nil {
                            self.engine = dict["Engine"] as! String
                        }
                        if dict.keys.contains("SupportedEngineVersions") && dict["SupportedEngineVersions"] != nil {
                            var model = DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions()
                            model.fromMap(dict["SupportedEngineVersions"] as! [String: Any])
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("SupportedEngine") && dict["SupportedEngine"] != nil {
                        var tmp : [DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine] = []
                        for v in dict["SupportedEngine"] as! [Any] {
                            var model = DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("MasterResources") && dict["MasterResources"] != nil {
                    var model = DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.MasterResources()
                    model.fromMap(dict["MasterResources"] as! [String: Any])
                    self.masterResources = model
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("SupportedEngines") && dict["SupportedEngines"] != nil {
                    var model = DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines()
                    model.fromMap(dict["SupportedEngines"] as! [String: Any])
                    self.supportedEngines = model
                }
                if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                    self.zoneId = dict["ZoneId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AvailableZone") && dict["AvailableZone"] != nil {
                var tmp : [DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone] = []
                for v in dict["AvailableZone"] as! [Any] {
                    var model = DescribeAvailableResourceResponseBody.AvailableZones.AvailableZone()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AvailableZones") && dict["AvailableZones"] != nil {
            var model = DescribeAvailableResourceResponseBody.AvailableZones()
            model.fromMap(dict["AvailableZones"] as! [String: Any])
            self.availableZones = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeAvailableResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Table") && dict["Table"] != nil {
                self.table = dict["Table"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FullBackupCycle") && dict["FullBackupCycle"] != nil {
            self.fullBackupCycle = dict["FullBackupCycle"] as! Int32
        }
        if dict.keys.contains("MinHFileBackupCount") && dict["MinHFileBackupCount"] != nil {
            self.minHFileBackupCount = dict["MinHFileBackupCount"] as! Int32
        }
        if dict.keys.contains("NextFullBackupDate") && dict["NextFullBackupDate"] != nil {
            self.nextFullBackupDate = dict["NextFullBackupDate"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Tables") && dict["Tables"] != nil {
            var model = DescribeBackupPlanConfigResponseBody.Tables()
            model.fromMap(dict["Tables"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeBackupPlanConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupRetentionPeriod") && dict["BackupRetentionPeriod"] != nil {
            self.backupRetentionPeriod = dict["BackupRetentionPeriod"] as! String
        }
        if dict.keys.contains("PreferredBackupEndTimeUTC") && dict["PreferredBackupEndTimeUTC"] != nil {
            self.preferredBackupEndTimeUTC = dict["PreferredBackupEndTimeUTC"] as! String
        }
        if dict.keys.contains("PreferredBackupPeriod") && dict["PreferredBackupPeriod"] != nil {
            self.preferredBackupPeriod = dict["PreferredBackupPeriod"] as! String
        }
        if dict.keys.contains("PreferredBackupStartTimeUTC") && dict["PreferredBackupStartTimeUTC"] != nil {
            self.preferredBackupStartTimeUTC = dict["PreferredBackupStartTimeUTC"] as! String
        }
        if dict.keys.contains("PreferredBackupTime") && dict["PreferredBackupTime"] != nil {
            self.preferredBackupTime = dict["PreferredBackupTime"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeBackupPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupStatus") && dict["BackupStatus"] != nil {
            self.backupStatus = dict["BackupStatus"] as! String
        }
        if dict.keys.contains("BdsClusterId") && dict["BdsClusterId"] != nil {
            self.bdsClusterId = dict["BdsClusterId"] as! String
        }
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeBackupStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                        self.createTime = dict["CreateTime"] as! String
                    }
                    if dict.keys.contains("DataSize") && dict["DataSize"] != nil {
                        self.dataSize = dict["DataSize"] as! String
                    }
                    if dict.keys.contains("FinishTime") && dict["FinishTime"] != nil {
                        self.finishTime = dict["FinishTime"] as! String
                    }
                    if dict.keys.contains("Process") && dict["Process"] != nil {
                        self.process = dict["Process"] as! String
                    }
                    if dict.keys.contains("RecordId") && dict["RecordId"] != nil {
                        self.recordId = dict["RecordId"] as! String
                    }
                    if dict.keys.contains("Speed") && dict["Speed"] != nil {
                        self.speed = dict["Speed"] as! String
                    }
                    if dict.keys.contains("Status") && dict["Status"] != nil {
                        self.status = dict["Status"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Record") && dict["Record"] != nil {
                    var tmp : [DescribeBackupSummaryResponseBody.Full.Records.Record] = []
                    for v in dict["Record"] as! [Any] {
                        var model = DescribeBackupSummaryResponseBody.Full.Records.Record()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HasMore") && dict["HasMore"] != nil {
                self.hasMore = dict["HasMore"] as! String
            }
            if dict.keys.contains("NextFullBackupDate") && dict["NextFullBackupDate"] != nil {
                self.nextFullBackupDate = dict["NextFullBackupDate"] as! String
            }
            if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Records") && dict["Records"] != nil {
                var model = DescribeBackupSummaryResponseBody.Full.Records()
                model.fromMap(dict["Records"] as! [String: Any])
                self.records = model
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BackupLogSize") && dict["BackupLogSize"] != nil {
                self.backupLogSize = dict["BackupLogSize"] as! String
            }
            if dict.keys.contains("Pos") && dict["Pos"] != nil {
                self.pos = dict["Pos"] as! String
            }
            if dict.keys.contains("QueueLogNum") && dict["QueueLogNum"] != nil {
                self.queueLogNum = dict["QueueLogNum"] as! String
            }
            if dict.keys.contains("RunningLogNum") && dict["RunningLogNum"] != nil {
                self.runningLogNum = dict["RunningLogNum"] as! String
            }
            if dict.keys.contains("Speed") && dict["Speed"] != nil {
                self.speed = dict["Speed"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Full") && dict["Full"] != nil {
            var model = DescribeBackupSummaryResponseBody.Full()
            model.fromMap(dict["Full"] as! [String: Any])
            self.full = model
        }
        if dict.keys.contains("Incr") && dict["Incr"] != nil {
            var model = DescribeBackupSummaryResponseBody.Incr()
            model.fromMap(dict["Incr"] as! [String: Any])
            self.incr = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeBackupSummaryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupRecordId") && dict["BackupRecordId"] != nil {
            self.backupRecordId = dict["BackupRecordId"] as! String
        }
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DataSize") && dict["DataSize"] != nil {
                    self.dataSize = dict["DataSize"] as! String
                }
                if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                    self.endTime = dict["EndTime"] as! String
                }
                if dict.keys.contains("Message") && dict["Message"] != nil {
                    self.message = dict["Message"] as! String
                }
                if dict.keys.contains("Process") && dict["Process"] != nil {
                    self.process = dict["Process"] as! String
                }
                if dict.keys.contains("Speed") && dict["Speed"] != nil {
                    self.speed = dict["Speed"] as! String
                }
                if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                    self.startTime = dict["StartTime"] as! String
                }
                if dict.keys.contains("State") && dict["State"] != nil {
                    self.state = dict["State"] as! String
                }
                if dict.keys.contains("Table") && dict["Table"] != nil {
                    self.table = dict["Table"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BackupRecord") && dict["BackupRecord"] != nil {
                var tmp : [DescribeBackupTablesResponseBody.BackupRecords.BackupRecord] = []
                for v in dict["BackupRecord"] as! [Any] {
                    var model = DescribeBackupTablesResponseBody.BackupRecords.BackupRecord()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Table") && dict["Table"] != nil {
                self.table = dict["Table"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupRecords") && dict["BackupRecords"] != nil {
            var model = DescribeBackupTablesResponseBody.BackupRecords()
            model.fromMap(dict["BackupRecords"] as! [String: Any])
            self.backupRecords = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Tables") && dict["Tables"] != nil {
            var model = DescribeBackupTablesResponseBody.Tables()
            model.fromMap(dict["Tables"] as! [String: Any])
            self.tables = model
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeBackupTablesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupId") && dict["BackupId"] != nil {
            self.backupId = dict["BackupId"] as! String
        }
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("EndTimeUTC") && dict["EndTimeUTC"] != nil {
            self.endTimeUTC = dict["EndTimeUTC"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("StartTimeUTC") && dict["StartTimeUTC"] != nil {
            self.startTimeUTC = dict["StartTimeUTC"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BackupDBNames") && dict["BackupDBNames"] != nil {
                    self.backupDBNames = dict["BackupDBNames"] as! String
                }
                if dict.keys.contains("BackupDownloadURL") && dict["BackupDownloadURL"] != nil {
                    self.backupDownloadURL = dict["BackupDownloadURL"] as! String
                }
                if dict.keys.contains("BackupEndTime") && dict["BackupEndTime"] != nil {
                    self.backupEndTime = dict["BackupEndTime"] as! String
                }
                if dict.keys.contains("BackupEndTimeUTC") && dict["BackupEndTimeUTC"] != nil {
                    self.backupEndTimeUTC = dict["BackupEndTimeUTC"] as! String
                }
                if dict.keys.contains("BackupId") && dict["BackupId"] != nil {
                    self.backupId = dict["BackupId"] as! Int32
                }
                if dict.keys.contains("BackupMethod") && dict["BackupMethod"] != nil {
                    self.backupMethod = dict["BackupMethod"] as! String
                }
                if dict.keys.contains("BackupMode") && dict["BackupMode"] != nil {
                    self.backupMode = dict["BackupMode"] as! String
                }
                if dict.keys.contains("BackupSize") && dict["BackupSize"] != nil {
                    self.backupSize = dict["BackupSize"] as! String
                }
                if dict.keys.contains("BackupStartTime") && dict["BackupStartTime"] != nil {
                    self.backupStartTime = dict["BackupStartTime"] as! String
                }
                if dict.keys.contains("BackupStartTimeUTC") && dict["BackupStartTimeUTC"] != nil {
                    self.backupStartTimeUTC = dict["BackupStartTimeUTC"] as! String
                }
                if dict.keys.contains("BackupStatus") && dict["BackupStatus"] != nil {
                    self.backupStatus = dict["BackupStatus"] as! String
                }
                if dict.keys.contains("BackupType") && dict["BackupType"] != nil {
                    self.backupType = dict["BackupType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Backup") && dict["Backup"] != nil {
                var tmp : [DescribeBackupsResponseBody.Backups.Backup] = []
                for v in dict["Backup"] as! [Any] {
                    var model = DescribeBackupsResponseBody.Backups.Backup()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Backups") && dict["Backups"] != nil {
            var model = DescribeBackupsResponseBody.Backups()
            model.fromMap(dict["Backups"] as! [String: Any])
            self.backups = model
        }
        if dict.keys.contains("EnableStatus") && dict["EnableStatus"] != nil {
            self.enableStatus = dict["EnableStatus"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeBackupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ConnAddr") && dict["ConnAddr"] != nil {
                        self.connAddr = dict["ConnAddr"] as! String
                    }
                    if dict.keys.contains("ConnAddrPort") && dict["ConnAddrPort"] != nil {
                        self.connAddrPort = dict["ConnAddrPort"] as! String
                    }
                    if dict.keys.contains("NetType") && dict["NetType"] != nil {
                        self.netType = dict["NetType"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConnAddrInfo") && dict["ConnAddrInfo"] != nil {
                    var model = DescribeClusterConnectionResponseBody.ServiceConnAddrs.ServiceConnAddr.ConnAddrInfo()
                    model.fromMap(dict["ConnAddrInfo"] as! [String: Any])
                    self.connAddrInfo = model
                }
                if dict.keys.contains("ConnType") && dict["ConnType"] != nil {
                    self.connType = dict["ConnType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ServiceConnAddr") && dict["ServiceConnAddr"] != nil {
                var tmp : [DescribeClusterConnectionResponseBody.ServiceConnAddrs.ServiceConnAddr] = []
                for v in dict["ServiceConnAddr"] as! [Any] {
                    var model = DescribeClusterConnectionResponseBody.ServiceConnAddrs.ServiceConnAddr()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ConnAddr") && dict["ConnAddr"] != nil {
                        self.connAddr = dict["ConnAddr"] as! String
                    }
                    if dict.keys.contains("ConnAddrPort") && dict["ConnAddrPort"] != nil {
                        self.connAddrPort = dict["ConnAddrPort"] as! String
                    }
                    if dict.keys.contains("NetType") && dict["NetType"] != nil {
                        self.netType = dict["NetType"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConnAddrInfo") && dict["ConnAddrInfo"] != nil {
                    var model = DescribeClusterConnectionResponseBody.SlbConnAddrs.SlbConnAddr.ConnAddrInfo()
                    model.fromMap(dict["ConnAddrInfo"] as! [String: Any])
                    self.connAddrInfo = model
                }
                if dict.keys.contains("SlbType") && dict["SlbType"] != nil {
                    self.slbType = dict["SlbType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SlbConnAddr") && dict["SlbConnAddr"] != nil {
                var tmp : [DescribeClusterConnectionResponseBody.SlbConnAddrs.SlbConnAddr] = []
                for v in dict["SlbConnAddr"] as! [Any] {
                    var model = DescribeClusterConnectionResponseBody.SlbConnAddrs.SlbConnAddr()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConnAddr") && dict["ConnAddr"] != nil {
                self.connAddr = dict["ConnAddr"] as! String
            }
            if dict.keys.contains("ConnAddrPort") && dict["ConnAddrPort"] != nil {
                self.connAddrPort = dict["ConnAddrPort"] as! String
            }
            if dict.keys.contains("NetType") && dict["NetType"] != nil {
                self.netType = dict["NetType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConnAddr") && dict["ConnAddr"] != nil {
                self.connAddr = dict["ConnAddr"] as! String
            }
            if dict.keys.contains("ConnAddrPort") && dict["ConnAddrPort"] != nil {
                self.connAddrPort = dict["ConnAddrPort"] as! String
            }
            if dict.keys.contains("NetType") && dict["NetType"] != nil {
                self.netType = dict["NetType"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConnAddr") && dict["ConnAddr"] != nil {
                    self.connAddr = dict["ConnAddr"] as! String
                }
                if dict.keys.contains("ConnAddrPort") && dict["ConnAddrPort"] != nil {
                    self.connAddrPort = dict["ConnAddrPort"] as! String
                }
                if dict.keys.contains("NetType") && dict["NetType"] != nil {
                    self.netType = dict["NetType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ZkConnAddr") && dict["ZkConnAddr"] != nil {
                var tmp : [DescribeClusterConnectionResponseBody.ZkConnAddrs.ZkConnAddr] = []
                for v in dict["ZkConnAddr"] as! [Any] {
                    var model = DescribeClusterConnectionResponseBody.ZkConnAddrs.ZkConnAddr()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbType") && dict["DbType"] != nil {
            self.dbType = dict["DbType"] as! String
        }
        if dict.keys.contains("IsMultimod") && dict["IsMultimod"] != nil {
            self.isMultimod = dict["IsMultimod"] as! String
        }
        if dict.keys.contains("NetType") && dict["NetType"] != nil {
            self.netType = dict["NetType"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceConnAddrs") && dict["ServiceConnAddrs"] != nil {
            var model = DescribeClusterConnectionResponseBody.ServiceConnAddrs()
            model.fromMap(dict["ServiceConnAddrs"] as! [String: Any])
            self.serviceConnAddrs = model
        }
        if dict.keys.contains("SlbConnAddrs") && dict["SlbConnAddrs"] != nil {
            var model = DescribeClusterConnectionResponseBody.SlbConnAddrs()
            model.fromMap(dict["SlbConnAddrs"] as! [String: Any])
            self.slbConnAddrs = model
        }
        if dict.keys.contains("ThriftConn") && dict["ThriftConn"] != nil {
            var model = DescribeClusterConnectionResponseBody.ThriftConn()
            model.fromMap(dict["ThriftConn"] as! [String: Any])
            self.thriftConn = model
        }
        if dict.keys.contains("UiProxyConnAddrInfo") && dict["UiProxyConnAddrInfo"] != nil {
            var model = DescribeClusterConnectionResponseBody.UiProxyConnAddrInfo()
            model.fromMap(dict["UiProxyConnAddrInfo"] as! [String: Any])
            self.uiProxyConnAddrInfo = model
        }
        if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("ZkConnAddrs") && dict["ZkConnAddrs"] != nil {
            var model = DescribeClusterConnectionResponseBody.ZkConnAddrs()
            model.fromMap(dict["ZkConnAddrs"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeClusterConnectionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ColdStorageSize") && dict["ColdStorageSize"] != nil {
            self.coldStorageSize = dict["ColdStorageSize"] as! String
        }
        if dict.keys.contains("ColdStorageType") && dict["ColdStorageType"] != nil {
            self.coldStorageType = dict["ColdStorageType"] as! String
        }
        if dict.keys.contains("ColdStorageUseAmount") && dict["ColdStorageUseAmount"] != nil {
            self.coldStorageUseAmount = dict["ColdStorageUseAmount"] as! String
        }
        if dict.keys.contains("ColdStorageUsePercent") && dict["ColdStorageUsePercent"] != nil {
            self.coldStorageUsePercent = dict["ColdStorageUsePercent"] as! String
        }
        if dict.keys.contains("OpenStatus") && dict["OpenStatus"] != nil {
            self.openStatus = dict["OpenStatus"] as! String
        }
        if dict.keys.contains("PayType") && dict["PayType"] != nil {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeColdStorageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeDBInstanceUsageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ClusterType") && dict["ClusterType"] != nil {
                    self.clusterType = dict["ClusterType"] as! String
                }
                if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                    self.createdTime = dict["CreatedTime"] as! String
                }
                if dict.keys.contains("DeleteTime") && dict["DeleteTime"] != nil {
                    self.deleteTime = dict["DeleteTime"] as! String
                }
                if dict.keys.contains("Engine") && dict["Engine"] != nil {
                    self.engine = dict["Engine"] as! String
                }
                if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
                    self.instanceName = dict["InstanceName"] as! String
                }
                if dict.keys.contains("MajorVersion") && dict["MajorVersion"] != nil {
                    self.majorVersion = dict["MajorVersion"] as! String
                }
                if dict.keys.contains("ModuleStackVersion") && dict["ModuleStackVersion"] != nil {
                    self.moduleStackVersion = dict["ModuleStackVersion"] as! String
                }
                if dict.keys.contains("ParentId") && dict["ParentId"] != nil {
                    self.parentId = dict["ParentId"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                    self.zoneId = dict["ZoneId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Instance") && dict["Instance"] != nil {
                var tmp : [DescribeDeletedInstancesResponseBody.Instances.Instance] = []
                for v in dict["Instance"] as! [Any] {
                    var model = DescribeDeletedInstancesResponseBody.Instances.Instance()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Instances") && dict["Instances"] != nil {
            var model = DescribeDeletedInstancesResponseBody.Instances()
            model.fromMap(dict["Instances"] as! [String: Any])
            self.instances = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeDeletedInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("WarningLine") && dict["WarningLine"] != nil {
            self.warningLine = dict["WarningLine"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeDiskWarningLineResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConnAddr") && dict["ConnAddr"] != nil {
                    self.connAddr = dict["ConnAddr"] as! String
                }
                if dict.keys.contains("ConnAddrPort") && dict["ConnAddrPort"] != nil {
                    self.connAddrPort = dict["ConnAddrPort"] as! String
                }
                if dict.keys.contains("ConnType") && dict["ConnType"] != nil {
                    self.connType = dict["ConnType"] as! String
                }
                if dict.keys.contains("NetType") && dict["NetType"] != nil {
                    self.netType = dict["NetType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConnAddrInfo") && dict["ConnAddrInfo"] != nil {
                var tmp : [DescribeEndpointsResponseBody.ConnAddrs.ConnAddrInfo] = []
                for v in dict["ConnAddrInfo"] as! [Any] {
                    var model = DescribeEndpointsResponseBody.ConnAddrs.ConnAddrInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConnAddrs") && dict["ConnAddrs"] != nil {
            var model = DescribeEndpointsResponseBody.ConnAddrs()
            model.fromMap(dict["ConnAddrs"] as! [String: Any])
            self.connAddrs = model
        }
        if dict.keys.contains("Engine") && dict["Engine"] != nil {
            self.engine = dict["Engine"] as! String
        }
        if dict.keys.contains("NetType") && dict["NetType"] != nil {
            self.netType = dict["NetType"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeEndpointsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Comps") && dict["Comps"] != nil {
                self.comps = dict["Comps"] as! [String]
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") && dict["Key"] != nil {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Tag") && dict["Tag"] != nil {
                var tmp : [DescribeInstanceResponseBody.Tags.Tag] = []
                for v in dict["Tag"] as! [Any] {
                    var model = DescribeInstanceResponseBody.Tags.Tag()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoRenewal") && dict["AutoRenewal"] != nil {
            self.autoRenewal = dict["AutoRenewal"] as! Bool
        }
        if dict.keys.contains("BackupStatus") && dict["BackupStatus"] != nil {
            self.backupStatus = dict["BackupStatus"] as! String
        }
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ClusterName") && dict["ClusterName"] != nil {
            self.clusterName = dict["ClusterName"] as! String
        }
        if dict.keys.contains("ClusterType") && dict["ClusterType"] != nil {
            self.clusterType = dict["ClusterType"] as! String
        }
        if dict.keys.contains("ColdStorageSize") && dict["ColdStorageSize"] != nil {
            self.coldStorageSize = dict["ColdStorageSize"] as! Int32
        }
        if dict.keys.contains("ColdStorageStatus") && dict["ColdStorageStatus"] != nil {
            self.coldStorageStatus = dict["ColdStorageStatus"] as! String
        }
        if dict.keys.contains("ConfirmMaintainTime") && dict["ConfirmMaintainTime"] != nil {
            self.confirmMaintainTime = dict["ConfirmMaintainTime"] as! String
        }
        if dict.keys.contains("CoreDiskCount") && dict["CoreDiskCount"] != nil {
            self.coreDiskCount = dict["CoreDiskCount"] as! String
        }
        if dict.keys.contains("CoreDiskSize") && dict["CoreDiskSize"] != nil {
            self.coreDiskSize = dict["CoreDiskSize"] as! Int32
        }
        if dict.keys.contains("CoreDiskType") && dict["CoreDiskType"] != nil {
            self.coreDiskType = dict["CoreDiskType"] as! String
        }
        if dict.keys.contains("CoreInstanceType") && dict["CoreInstanceType"] != nil {
            self.coreInstanceType = dict["CoreInstanceType"] as! String
        }
        if dict.keys.contains("CoreNodeCount") && dict["CoreNodeCount"] != nil {
            self.coreNodeCount = dict["CoreNodeCount"] as! Int32
        }
        if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
            self.createdTime = dict["CreatedTime"] as! String
        }
        if dict.keys.contains("CreatedTimeUTC") && dict["CreatedTimeUTC"] != nil {
            self.createdTimeUTC = dict["CreatedTimeUTC"] as! String
        }
        if dict.keys.contains("Duration") && dict["Duration"] != nil {
            self.duration = dict["Duration"] as! Int32
        }
        if dict.keys.contains("EnableHbaseProxy") && dict["EnableHbaseProxy"] != nil {
            self.enableHbaseProxy = dict["EnableHbaseProxy"] as! Bool
        }
        if dict.keys.contains("EncryptionKey") && dict["EncryptionKey"] != nil {
            self.encryptionKey = dict["EncryptionKey"] as! String
        }
        if dict.keys.contains("EncryptionType") && dict["EncryptionType"] != nil {
            self.encryptionType = dict["EncryptionType"] as! String
        }
        if dict.keys.contains("Engine") && dict["Engine"] != nil {
            self.engine = dict["Engine"] as! String
        }
        if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
            self.expireTime = dict["ExpireTime"] as! String
        }
        if dict.keys.contains("ExpireTimeUTC") && dict["ExpireTimeUTC"] != nil {
            self.expireTimeUTC = dict["ExpireTimeUTC"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("IsDeletionProtection") && dict["IsDeletionProtection"] != nil {
            self.isDeletionProtection = dict["IsDeletionProtection"] as! Bool
        }
        if dict.keys.contains("IsHa") && dict["IsHa"] != nil {
            self.isHa = dict["IsHa"] as! Bool
        }
        if dict.keys.contains("IsLatestVersion") && dict["IsLatestVersion"] != nil {
            self.isLatestVersion = dict["IsLatestVersion"] as! Bool
        }
        if dict.keys.contains("IsMultiModel") && dict["IsMultiModel"] != nil {
            self.isMultiModel = dict["IsMultiModel"] as! Bool
        }
        if dict.keys.contains("LproxyMinorVersion") && dict["LproxyMinorVersion"] != nil {
            self.lproxyMinorVersion = dict["LproxyMinorVersion"] as! String
        }
        if dict.keys.contains("MaintainEndTime") && dict["MaintainEndTime"] != nil {
            self.maintainEndTime = dict["MaintainEndTime"] as! String
        }
        if dict.keys.contains("MaintainStartTime") && dict["MaintainStartTime"] != nil {
            self.maintainStartTime = dict["MaintainStartTime"] as! String
        }
        if dict.keys.contains("MajorVersion") && dict["MajorVersion"] != nil {
            self.majorVersion = dict["MajorVersion"] as! String
        }
        if dict.keys.contains("MasterDiskSize") && dict["MasterDiskSize"] != nil {
            self.masterDiskSize = dict["MasterDiskSize"] as! Int32
        }
        if dict.keys.contains("MasterDiskType") && dict["MasterDiskType"] != nil {
            self.masterDiskType = dict["MasterDiskType"] as! String
        }
        if dict.keys.contains("MasterInstanceType") && dict["MasterInstanceType"] != nil {
            self.masterInstanceType = dict["MasterInstanceType"] as! String
        }
        if dict.keys.contains("MasterNodeCount") && dict["MasterNodeCount"] != nil {
            self.masterNodeCount = dict["MasterNodeCount"] as! Int32
        }
        if dict.keys.contains("MinorVersion") && dict["MinorVersion"] != nil {
            self.minorVersion = dict["MinorVersion"] as! String
        }
        if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
            self.moduleId = dict["ModuleId"] as! Int32
        }
        if dict.keys.contains("ModuleStackVersion") && dict["ModuleStackVersion"] != nil {
            self.moduleStackVersion = dict["ModuleStackVersion"] as! String
        }
        if dict.keys.contains("NeedUpgrade") && dict["NeedUpgrade"] != nil {
            self.needUpgrade = dict["NeedUpgrade"] as! Bool
        }
        if dict.keys.contains("NeedUpgradeComps") && dict["NeedUpgradeComps"] != nil {
            var model = DescribeInstanceResponseBody.NeedUpgradeComps()
            model.fromMap(dict["NeedUpgradeComps"] as! [String: Any])
            self.needUpgradeComps = model
        }
        if dict.keys.contains("NetworkType") && dict["NetworkType"] != nil {
            self.networkType = dict["NetworkType"] as! String
        }
        if dict.keys.contains("ParentId") && dict["ParentId"] != nil {
            self.parentId = dict["ParentId"] as! String
        }
        if dict.keys.contains("PayType") && dict["PayType"] != nil {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            var model = DescribeInstanceResponseBody.Tags()
            model.fromMap(dict["Tags"] as! [String: Any])
            self.tags = model
        }
        if dict.keys.contains("TaskProgress") && dict["TaskProgress"] != nil {
            self.taskProgress = dict["TaskProgress"] as! String
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("VswitchId") && dict["VswitchId"] != nil {
            self.vswitchId = dict["VswitchId"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
            self.instanceType = dict["InstanceType"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CpuSize") && dict["CpuSize"] != nil {
                    self.cpuSize = dict["CpuSize"] as! Int64
                }
                if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
                    self.instanceType = dict["InstanceType"] as! String
                }
                if dict.keys.contains("MemSize") && dict["MemSize"] != nil {
                    self.memSize = dict["MemSize"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceTypeSpec") && dict["InstanceTypeSpec"] != nil {
                var tmp : [DescribeInstanceTypeResponseBody.InstanceTypeSpecList.InstanceTypeSpec] = []
                for v in dict["InstanceTypeSpec"] as! [Any] {
                    var model = DescribeInstanceTypeResponseBody.InstanceTypeSpecList.InstanceTypeSpec()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceTypeSpecList") && dict["InstanceTypeSpecList"] != nil {
            var model = DescribeInstanceTypeResponseBody.InstanceTypeSpecList()
            model.fromMap(dict["InstanceTypeSpecList"] as! [String: Any])
            self.instanceTypeSpecList = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeInstanceTypeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ClusterName") && dict["ClusterName"] != nil {
            self.clusterName = dict["ClusterName"] as! String
        }
        if dict.keys.contains("DbType") && dict["DbType"] != nil {
            self.dbType = dict["DbType"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [DescribeInstancesRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = DescribeInstancesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Key") && dict["Key"] != nil {
                            self.key = dict["Key"] as! String
                        }
                        if dict.keys.contains("Value") && dict["Value"] != nil {
                            self.value = dict["Value"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Tag") && dict["Tag"] != nil {
                        var tmp : [DescribeInstancesResponseBody.Instances.Instance.Tags.Tag] = []
                        for v in dict["Tag"] as! [Any] {
                            var model = DescribeInstancesResponseBody.Instances.Instance.Tags.Tag()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AutoRenewal") && dict["AutoRenewal"] != nil {
                    self.autoRenewal = dict["AutoRenewal"] as! Bool
                }
                if dict.keys.contains("BackupStatus") && dict["BackupStatus"] != nil {
                    self.backupStatus = dict["BackupStatus"] as! String
                }
                if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
                    self.clusterId = dict["ClusterId"] as! String
                }
                if dict.keys.contains("ClusterName") && dict["ClusterName"] != nil {
                    self.clusterName = dict["ClusterName"] as! String
                }
                if dict.keys.contains("ClusterType") && dict["ClusterType"] != nil {
                    self.clusterType = dict["ClusterType"] as! String
                }
                if dict.keys.contains("ColdStorageStatus") && dict["ColdStorageStatus"] != nil {
                    self.coldStorageStatus = dict["ColdStorageStatus"] as! String
                }
                if dict.keys.contains("CoreDiskCount") && dict["CoreDiskCount"] != nil {
                    self.coreDiskCount = dict["CoreDiskCount"] as! String
                }
                if dict.keys.contains("CoreDiskSize") && dict["CoreDiskSize"] != nil {
                    self.coreDiskSize = dict["CoreDiskSize"] as! Int32
                }
                if dict.keys.contains("CoreDiskType") && dict["CoreDiskType"] != nil {
                    self.coreDiskType = dict["CoreDiskType"] as! String
                }
                if dict.keys.contains("CoreInstanceType") && dict["CoreInstanceType"] != nil {
                    self.coreInstanceType = dict["CoreInstanceType"] as! String
                }
                if dict.keys.contains("CoreNodeCount") && dict["CoreNodeCount"] != nil {
                    self.coreNodeCount = dict["CoreNodeCount"] as! Int32
                }
                if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                    self.createdTime = dict["CreatedTime"] as! String
                }
                if dict.keys.contains("CreatedTimeUTC") && dict["CreatedTimeUTC"] != nil {
                    self.createdTimeUTC = dict["CreatedTimeUTC"] as! String
                }
                if dict.keys.contains("Duration") && dict["Duration"] != nil {
                    self.duration = dict["Duration"] as! Int32
                }
                if dict.keys.contains("Engine") && dict["Engine"] != nil {
                    self.engine = dict["Engine"] as! String
                }
                if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
                    self.expireTime = dict["ExpireTime"] as! String
                }
                if dict.keys.contains("ExpireTimeUTC") && dict["ExpireTimeUTC"] != nil {
                    self.expireTimeUTC = dict["ExpireTimeUTC"] as! String
                }
                if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
                    self.instanceName = dict["InstanceName"] as! String
                }
                if dict.keys.contains("IsDeletionProtection") && dict["IsDeletionProtection"] != nil {
                    self.isDeletionProtection = dict["IsDeletionProtection"] as! Bool
                }
                if dict.keys.contains("IsHa") && dict["IsHa"] != nil {
                    self.isHa = dict["IsHa"] as! Bool
                }
                if dict.keys.contains("MajorVersion") && dict["MajorVersion"] != nil {
                    self.majorVersion = dict["MajorVersion"] as! String
                }
                if dict.keys.contains("MasterDiskSize") && dict["MasterDiskSize"] != nil {
                    self.masterDiskSize = dict["MasterDiskSize"] as! Int32
                }
                if dict.keys.contains("MasterDiskType") && dict["MasterDiskType"] != nil {
                    self.masterDiskType = dict["MasterDiskType"] as! String
                }
                if dict.keys.contains("MasterInstanceType") && dict["MasterInstanceType"] != nil {
                    self.masterInstanceType = dict["MasterInstanceType"] as! String
                }
                if dict.keys.contains("MasterNodeCount") && dict["MasterNodeCount"] != nil {
                    self.masterNodeCount = dict["MasterNodeCount"] as! Int32
                }
                if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
                    self.moduleId = dict["ModuleId"] as! Int32
                }
                if dict.keys.contains("ModuleStackVersion") && dict["ModuleStackVersion"] != nil {
                    self.moduleStackVersion = dict["ModuleStackVersion"] as! String
                }
                if dict.keys.contains("NetworkType") && dict["NetworkType"] != nil {
                    self.networkType = dict["NetworkType"] as! String
                }
                if dict.keys.contains("ParentId") && dict["ParentId"] != nil {
                    self.parentId = dict["ParentId"] as! String
                }
                if dict.keys.contains("PayType") && dict["PayType"] != nil {
                    self.payType = dict["PayType"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
                    self.resourceGroupId = dict["ResourceGroupId"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Tags") && dict["Tags"] != nil {
                    var model = DescribeInstancesResponseBody.Instances.Instance.Tags()
                    model.fromMap(dict["Tags"] as! [String: Any])
                    self.tags = model
                }
                if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                    self.vpcId = dict["VpcId"] as! String
                }
                if dict.keys.contains("VswitchId") && dict["VswitchId"] != nil {
                    self.vswitchId = dict["VswitchId"] as! String
                }
                if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                    self.zoneId = dict["ZoneId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Instance") && dict["Instance"] != nil {
                var tmp : [DescribeInstancesResponseBody.Instances.Instance] = []
                for v in dict["Instance"] as! [Any] {
                    var model = DescribeInstancesResponseBody.Instances.Instance()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Instances") && dict["Instances"] != nil {
            var model = DescribeInstancesResponseBody.Instances()
            model.fromMap(dict["Instances"] as! [String: Any])
            self.instances = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Ip") && dict["Ip"] != nil {
                        self.ip = dict["Ip"] as! [String]
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
                    self.groupName = dict["GroupName"] as! String
                }
                if dict.keys.contains("IpList") && dict["IpList"] != nil {
                    var model = DescribeIpWhitelistResponseBody.Groups.Group.IpList()
                    model.fromMap(dict["IpList"] as! [String: Any])
                    self.ipList = model
                }
                if dict.keys.contains("IpVersion") && dict["IpVersion"] != nil {
                    self.ipVersion = dict["IpVersion"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Group") && dict["Group"] != nil {
                var tmp : [DescribeIpWhitelistResponseBody.Groups.Group] = []
                for v in dict["Group"] as! [Any] {
                    var model = DescribeIpWhitelistResponseBody.Groups.Group()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Groups") && dict["Groups"] != nil {
            var model = DescribeIpWhitelistResponseBody.Groups()
            model.fromMap(dict["Groups"] as! [String: Any])
            self.groups = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeIpWhitelistResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceptLanguage") && dict["AcceptLanguage"] != nil {
            self.acceptLanguage = dict["AcceptLanguage"] as! String
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

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Zone") && dict["Zone"] != nil {
                                self.zone = dict["Zone"] as! [String]
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Id") && dict["Id"] != nil {
                            self.id = dict["Id"] as! String
                        }
                        if dict.keys.contains("Zones") && dict["Zones"] != nil {
                            var model = DescribeMultiZoneAvailableRegionsResponseBody.Regions.Region.AvailableCombines.AvailableCombine.Zones()
                            model.fromMap(dict["Zones"] as! [String: Any])
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AvailableCombine") && dict["AvailableCombine"] != nil {
                        var tmp : [DescribeMultiZoneAvailableRegionsResponseBody.Regions.Region.AvailableCombines.AvailableCombine] = []
                        for v in dict["AvailableCombine"] as! [Any] {
                            var model = DescribeMultiZoneAvailableRegionsResponseBody.Regions.Region.AvailableCombines.AvailableCombine()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AvailableCombines") && dict["AvailableCombines"] != nil {
                    var model = DescribeMultiZoneAvailableRegionsResponseBody.Regions.Region.AvailableCombines()
                    model.fromMap(dict["AvailableCombines"] as! [String: Any])
                    self.availableCombines = model
                }
                if dict.keys.contains("LocalName") && dict["LocalName"] != nil {
                    self.localName = dict["LocalName"] as! String
                }
                if dict.keys.contains("RegionEndpoint") && dict["RegionEndpoint"] != nil {
                    self.regionEndpoint = dict["RegionEndpoint"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Region") && dict["Region"] != nil {
                var tmp : [DescribeMultiZoneAvailableRegionsResponseBody.Regions.Region] = []
                for v in dict["Region"] as! [Any] {
                    var model = DescribeMultiZoneAvailableRegionsResponseBody.Regions.Region()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Regions") && dict["Regions"] != nil {
            var model = DescribeMultiZoneAvailableRegionsResponseBody.Regions()
            model.fromMap(dict["Regions"] as! [String: Any])
            self.regions = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeMultiZoneAvailableRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChargeType") && dict["ChargeType"] != nil {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ZoneCombination") && dict["ZoneCombination"] != nil {
            self.zoneCombination = dict["ZoneCombination"] as! String
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

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Cpu") && dict["Cpu"] != nil {
                                self.cpu = dict["Cpu"] as! Int32
                            }
                            if dict.keys.contains("Mem") && dict["Mem"] != nil {
                                self.mem = dict["Mem"] as! Int32
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
                            self.instanceType = dict["InstanceType"] as! String
                        }
                        if dict.keys.contains("InstanceTypeDetail") && dict["InstanceTypeDetail"] != nil {
                            var model = DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.MasterResources.MasterResource.InstanceTypeDetail()
                            model.fromMap(dict["InstanceTypeDetail"] as! [String: Any])
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("MasterResource") && dict["MasterResource"] != nil {
                        var tmp : [DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.MasterResources.MasterResource] = []
                        for v in dict["MasterResource"] as! [Any] {
                            var model = DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.MasterResources.MasterResource()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
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

                                                        public override func fromMap(_ dict: [String: Any]) -> Void {
                                                            if dict.keys.contains("MaxSize") && dict["MaxSize"] != nil {
                                                                self.maxSize = dict["MaxSize"] as! Int32
                                                            }
                                                            if dict.keys.contains("MinSize") && dict["MinSize"] != nil {
                                                                self.minSize = dict["MinSize"] as! Int32
                                                            }
                                                            if dict.keys.contains("StepSize") && dict["StepSize"] != nil {
                                                                self.stepSize = dict["StepSize"] as! Int32
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

                                                        public override func fromMap(_ dict: [String: Any]) -> Void {
                                                            if dict.keys.contains("Cpu") && dict["Cpu"] != nil {
                                                                self.cpu = dict["Cpu"] as! Int32
                                                            }
                                                            if dict.keys.contains("Mem") && dict["Mem"] != nil {
                                                                self.mem = dict["Mem"] as! Int32
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

                                                    public override func fromMap(_ dict: [String: Any]) -> Void {
                                                        if dict.keys.contains("DBInstanceStorageRange") && dict["DBInstanceStorageRange"] != nil {
                                                            var model = DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories.SupportedStorageTypes.SupportedStorageType.CoreResources.CoreResource.DBInstanceStorageRange()
                                                            model.fromMap(dict["DBInstanceStorageRange"] as! [String: Any])
                                                            self.DBInstanceStorageRange = model
                                                        }
                                                        if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
                                                            self.instanceType = dict["InstanceType"] as! String
                                                        }
                                                        if dict.keys.contains("InstanceTypeDetail") && dict["InstanceTypeDetail"] != nil {
                                                            var model = DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories.SupportedStorageTypes.SupportedStorageType.CoreResources.CoreResource.InstanceTypeDetail()
                                                            model.fromMap(dict["InstanceTypeDetail"] as! [String: Any])
                                                            self.instanceTypeDetail = model
                                                        }
                                                        if dict.keys.contains("MaxCoreCount") && dict["MaxCoreCount"] != nil {
                                                            self.maxCoreCount = dict["MaxCoreCount"] as! Int32
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

                                                public override func fromMap(_ dict: [String: Any]) -> Void {
                                                    if dict.keys.contains("CoreResource") && dict["CoreResource"] != nil {
                                                        var tmp : [DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories.SupportedStorageTypes.SupportedStorageType.CoreResources.CoreResource] = []
                                                        for v in dict["CoreResource"] as! [Any] {
                                                            var model = DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories.SupportedStorageTypes.SupportedStorageType.CoreResources.CoreResource()
                                                            if v != nil {
                                                                model.fromMap(v as! [String: Any])
                                                            }
                                                            tmp.append(model)
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

                                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                                if dict.keys.contains("CoreResources") && dict["CoreResources"] != nil {
                                                    var model = DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories.SupportedStorageTypes.SupportedStorageType.CoreResources()
                                                    model.fromMap(dict["CoreResources"] as! [String: Any])
                                                    self.coreResources = model
                                                }
                                                if dict.keys.contains("StorageType") && dict["StorageType"] != nil {
                                                    self.storageType = dict["StorageType"] as! String
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

                                        public override func fromMap(_ dict: [String: Any]) -> Void {
                                            if dict.keys.contains("SupportedStorageType") && dict["SupportedStorageType"] != nil {
                                                var tmp : [DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories.SupportedStorageTypes.SupportedStorageType] = []
                                                for v in dict["SupportedStorageType"] as! [Any] {
                                                    var model = DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories.SupportedStorageTypes.SupportedStorageType()
                                                    if v != nil {
                                                        model.fromMap(v as! [String: Any])
                                                    }
                                                    tmp.append(model)
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

                                    public override func fromMap(_ dict: [String: Any]) -> Void {
                                        if dict.keys.contains("Category") && dict["Category"] != nil {
                                            self.category = dict["Category"] as! String
                                        }
                                        if dict.keys.contains("SupportedStorageTypes") && dict["SupportedStorageTypes"] != nil {
                                            var model = DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories.SupportedStorageTypes()
                                            model.fromMap(dict["SupportedStorageTypes"] as! [String: Any])
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

                                public override func fromMap(_ dict: [String: Any]) -> Void {
                                    if dict.keys.contains("SupportedCategories") && dict["SupportedCategories"] != nil {
                                        var tmp : [DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories] = []
                                        for v in dict["SupportedCategories"] as! [Any] {
                                            var model = DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories.SupportedCategories()
                                            if v != nil {
                                                model.fromMap(v as! [String: Any])
                                            }
                                            tmp.append(model)
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

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("SupportedCategories") && dict["SupportedCategories"] != nil {
                                    var model = DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion.SupportedCategories()
                                    model.fromMap(dict["SupportedCategories"] as! [String: Any])
                                    self.supportedCategories = model
                                }
                                if dict.keys.contains("Version") && dict["Version"] != nil {
                                    self.version = dict["Version"] as! String
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

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("SupportedEngineVersion") && dict["SupportedEngineVersion"] != nil {
                                var tmp : [DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion] = []
                                for v in dict["SupportedEngineVersion"] as! [Any] {
                                    var model = DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions.SupportedEngineVersion()
                                    if v != nil {
                                        model.fromMap(v as! [String: Any])
                                    }
                                    tmp.append(model)
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Engine") && dict["Engine"] != nil {
                            self.engine = dict["Engine"] as! String
                        }
                        if dict.keys.contains("SupportedEngineVersions") && dict["SupportedEngineVersions"] != nil {
                            var model = DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine.SupportedEngineVersions()
                            model.fromMap(dict["SupportedEngineVersions"] as! [String: Any])
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("SupportedEngine") && dict["SupportedEngine"] != nil {
                        var tmp : [DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine] = []
                        for v in dict["SupportedEngine"] as! [Any] {
                            var model = DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines.SupportedEngine()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("MasterResources") && dict["MasterResources"] != nil {
                    var model = DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.MasterResources()
                    model.fromMap(dict["MasterResources"] as! [String: Any])
                    self.masterResources = model
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("SupportedEngines") && dict["SupportedEngines"] != nil {
                    var model = DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone.SupportedEngines()
                    model.fromMap(dict["SupportedEngines"] as! [String: Any])
                    self.supportedEngines = model
                }
                if dict.keys.contains("ZoneCombination") && dict["ZoneCombination"] != nil {
                    self.zoneCombination = dict["ZoneCombination"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AvailableZone") && dict["AvailableZone"] != nil {
                var tmp : [DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone] = []
                for v in dict["AvailableZone"] as! [Any] {
                    var model = DescribeMultiZoneAvailableResourceResponseBody.AvailableZones.AvailableZone()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AvailableZones") && dict["AvailableZones"] != nil {
            var model = DescribeMultiZoneAvailableResourceResponseBody.AvailableZones()
            model.fromMap(dict["AvailableZones"] as! [String: Any])
            self.availableZones = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeMultiZoneAvailableResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("HdfsMinorVersion") && dict["HdfsMinorVersion"] != nil {
                    self.hdfsMinorVersion = dict["HdfsMinorVersion"] as! String
                }
                if dict.keys.contains("InsName") && dict["InsName"] != nil {
                    self.insName = dict["InsName"] as! String
                }
                if dict.keys.contains("IsHdfsLatestVersion") && dict["IsHdfsLatestVersion"] != nil {
                    self.isHdfsLatestVersion = dict["IsHdfsLatestVersion"] as! String
                }
                if dict.keys.contains("IsLatestVersion") && dict["IsLatestVersion"] != nil {
                    self.isLatestVersion = dict["IsLatestVersion"] as! Bool
                }
                if dict.keys.contains("LatestHdfsMinorVersion") && dict["LatestHdfsMinorVersion"] != nil {
                    self.latestHdfsMinorVersion = dict["LatestHdfsMinorVersion"] as! String
                }
                if dict.keys.contains("LatestMinorVersion") && dict["LatestMinorVersion"] != nil {
                    self.latestMinorVersion = dict["LatestMinorVersion"] as! String
                }
                if dict.keys.contains("MinorVersion") && dict["MinorVersion"] != nil {
                    self.minorVersion = dict["MinorVersion"] as! String
                }
                if dict.keys.contains("Role") && dict["Role"] != nil {
                    self.role = dict["Role"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MultiZoneInstanceModel") && dict["MultiZoneInstanceModel"] != nil {
                var tmp : [DescribeMultiZoneClusterResponseBody.MultiZoneInstanceModels.MultiZoneInstanceModel] = []
                for v in dict["MultiZoneInstanceModel"] as! [Any] {
                    var model = DescribeMultiZoneClusterResponseBody.MultiZoneInstanceModels.MultiZoneInstanceModel()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") && dict["Key"] != nil {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Tag") && dict["Tag"] != nil {
                var tmp : [DescribeMultiZoneClusterResponseBody.Tags.Tag] = []
                for v in dict["Tag"] as! [Any] {
                    var model = DescribeMultiZoneClusterResponseBody.Tags.Tag()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ArbiterVSwitchIds") && dict["ArbiterVSwitchIds"] != nil {
            self.arbiterVSwitchIds = dict["ArbiterVSwitchIds"] as! String
        }
        if dict.keys.contains("ArbiterZoneId") && dict["ArbiterZoneId"] != nil {
            self.arbiterZoneId = dict["ArbiterZoneId"] as! String
        }
        if dict.keys.contains("AutoRenewal") && dict["AutoRenewal"] != nil {
            self.autoRenewal = dict["AutoRenewal"] as! Bool
        }
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ClusterName") && dict["ClusterName"] != nil {
            self.clusterName = dict["ClusterName"] as! String
        }
        if dict.keys.contains("ColdStorageSize") && dict["ColdStorageSize"] != nil {
            self.coldStorageSize = dict["ColdStorageSize"] as! Int32
        }
        if dict.keys.contains("CoreDiskCount") && dict["CoreDiskCount"] != nil {
            self.coreDiskCount = dict["CoreDiskCount"] as! String
        }
        if dict.keys.contains("CoreDiskSize") && dict["CoreDiskSize"] != nil {
            self.coreDiskSize = dict["CoreDiskSize"] as! Int32
        }
        if dict.keys.contains("CoreDiskType") && dict["CoreDiskType"] != nil {
            self.coreDiskType = dict["CoreDiskType"] as! String
        }
        if dict.keys.contains("CoreInstanceType") && dict["CoreInstanceType"] != nil {
            self.coreInstanceType = dict["CoreInstanceType"] as! String
        }
        if dict.keys.contains("CoreNodeCount") && dict["CoreNodeCount"] != nil {
            self.coreNodeCount = dict["CoreNodeCount"] as! Int32
        }
        if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
            self.createdTime = dict["CreatedTime"] as! String
        }
        if dict.keys.contains("CreatedTimeUTC") && dict["CreatedTimeUTC"] != nil {
            self.createdTimeUTC = dict["CreatedTimeUTC"] as! String
        }
        if dict.keys.contains("Duration") && dict["Duration"] != nil {
            self.duration = dict["Duration"] as! Int32
        }
        if dict.keys.contains("EncryptionKey") && dict["EncryptionKey"] != nil {
            self.encryptionKey = dict["EncryptionKey"] as! String
        }
        if dict.keys.contains("EncryptionType") && dict["EncryptionType"] != nil {
            self.encryptionType = dict["EncryptionType"] as! String
        }
        if dict.keys.contains("Engine") && dict["Engine"] != nil {
            self.engine = dict["Engine"] as! String
        }
        if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
            self.expireTime = dict["ExpireTime"] as! String
        }
        if dict.keys.contains("ExpireTimeUTC") && dict["ExpireTimeUTC"] != nil {
            self.expireTimeUTC = dict["ExpireTimeUTC"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("IsDeletionProtection") && dict["IsDeletionProtection"] != nil {
            self.isDeletionProtection = dict["IsDeletionProtection"] as! Bool
        }
        if dict.keys.contains("LogDiskCount") && dict["LogDiskCount"] != nil {
            self.logDiskCount = dict["LogDiskCount"] as! String
        }
        if dict.keys.contains("LogDiskSize") && dict["LogDiskSize"] != nil {
            self.logDiskSize = dict["LogDiskSize"] as! Int32
        }
        if dict.keys.contains("LogDiskType") && dict["LogDiskType"] != nil {
            self.logDiskType = dict["LogDiskType"] as! String
        }
        if dict.keys.contains("LogInstanceType") && dict["LogInstanceType"] != nil {
            self.logInstanceType = dict["LogInstanceType"] as! String
        }
        if dict.keys.contains("LogNodeCount") && dict["LogNodeCount"] != nil {
            self.logNodeCount = dict["LogNodeCount"] as! Int32
        }
        if dict.keys.contains("MaintainEndTime") && dict["MaintainEndTime"] != nil {
            self.maintainEndTime = dict["MaintainEndTime"] as! String
        }
        if dict.keys.contains("MaintainStartTime") && dict["MaintainStartTime"] != nil {
            self.maintainStartTime = dict["MaintainStartTime"] as! String
        }
        if dict.keys.contains("MajorVersion") && dict["MajorVersion"] != nil {
            self.majorVersion = dict["MajorVersion"] as! String
        }
        if dict.keys.contains("MasterDiskSize") && dict["MasterDiskSize"] != nil {
            self.masterDiskSize = dict["MasterDiskSize"] as! Int32
        }
        if dict.keys.contains("MasterDiskType") && dict["MasterDiskType"] != nil {
            self.masterDiskType = dict["MasterDiskType"] as! String
        }
        if dict.keys.contains("MasterInstanceType") && dict["MasterInstanceType"] != nil {
            self.masterInstanceType = dict["MasterInstanceType"] as! String
        }
        if dict.keys.contains("MasterNodeCount") && dict["MasterNodeCount"] != nil {
            self.masterNodeCount = dict["MasterNodeCount"] as! Int32
        }
        if dict.keys.contains("ModuleId") && dict["ModuleId"] != nil {
            self.moduleId = dict["ModuleId"] as! Int32
        }
        if dict.keys.contains("ModuleStackVersion") && dict["ModuleStackVersion"] != nil {
            self.moduleStackVersion = dict["ModuleStackVersion"] as! String
        }
        if dict.keys.contains("MultiZoneCombination") && dict["MultiZoneCombination"] != nil {
            self.multiZoneCombination = dict["MultiZoneCombination"] as! String
        }
        if dict.keys.contains("MultiZoneInstanceModels") && dict["MultiZoneInstanceModels"] != nil {
            var model = DescribeMultiZoneClusterResponseBody.MultiZoneInstanceModels()
            model.fromMap(dict["MultiZoneInstanceModels"] as! [String: Any])
            self.multiZoneInstanceModels = model
        }
        if dict.keys.contains("NetworkType") && dict["NetworkType"] != nil {
            self.networkType = dict["NetworkType"] as! String
        }
        if dict.keys.contains("ParentId") && dict["ParentId"] != nil {
            self.parentId = dict["ParentId"] as! String
        }
        if dict.keys.contains("PayType") && dict["PayType"] != nil {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("PrimaryVSwitchIds") && dict["PrimaryVSwitchIds"] != nil {
            self.primaryVSwitchIds = dict["PrimaryVSwitchIds"] as! String
        }
        if dict.keys.contains("PrimaryZoneId") && dict["PrimaryZoneId"] != nil {
            self.primaryZoneId = dict["PrimaryZoneId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("StandbyVSwitchIds") && dict["StandbyVSwitchIds"] != nil {
            self.standbyVSwitchIds = dict["StandbyVSwitchIds"] as! String
        }
        if dict.keys.contains("StandbyZoneId") && dict["StandbyZoneId"] != nil {
            self.standbyZoneId = dict["StandbyZoneId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            var model = DescribeMultiZoneClusterResponseBody.Tags()
            model.fromMap(dict["Tags"] as! [String: Any])
            self.tags = model
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeMultiZoneClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TimeBegin") && dict["TimeBegin"] != nil {
            self.timeBegin = dict["TimeBegin"] as! String
        }
        if dict.keys.contains("TimeEnd") && dict["TimeEnd"] != nil {
            self.timeEnd = dict["TimeEnd"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeRecoverableTimeRangeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceptLanguage") && dict["AcceptLanguage"] != nil {
            self.acceptLanguage = dict["AcceptLanguage"] as! String
        }
        if dict.keys.contains("Engine") && dict["Engine"] != nil {
            self.engine = dict["Engine"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Id") && dict["Id"] != nil {
                            self.id = dict["Id"] as! String
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
                    if dict.keys.contains("Zone") && dict["Zone"] != nil {
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("LocalName") && dict["LocalName"] != nil {
                    self.localName = dict["LocalName"] as! String
                }
                if dict.keys.contains("RegionEndpoint") && dict["RegionEndpoint"] != nil {
                    self.regionEndpoint = dict["RegionEndpoint"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("Zones") && dict["Zones"] != nil {
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
            if dict.keys.contains("Region") && dict["Region"] != nil {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Regions") && dict["Regions"] != nil {
            var model = DescribeRegionsResponseBody.Regions()
            model.fromMap(dict["Regions"] as! [String: Any])
            self.regions = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RestoreRecordId") && dict["RestoreRecordId"] != nil {
            self.restoreRecordId = dict["RestoreRecordId"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DataSize") && dict["DataSize"] != nil {
                        self.dataSize = dict["DataSize"] as! String
                    }
                    if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                        self.endTime = dict["EndTime"] as! String
                    }
                    if dict.keys.contains("Message") && dict["Message"] != nil {
                        self.message = dict["Message"] as! String
                    }
                    if dict.keys.contains("Process") && dict["Process"] != nil {
                        self.process = dict["Process"] as! String
                    }
                    if dict.keys.contains("Speed") && dict["Speed"] != nil {
                        self.speed = dict["Speed"] as! String
                    }
                    if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                        self.startTime = dict["StartTime"] as! String
                    }
                    if dict.keys.contains("State") && dict["State"] != nil {
                        self.state = dict["State"] as! String
                    }
                    if dict.keys.contains("Table") && dict["Table"] != nil {
                        self.table = dict["Table"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RestoreFullDetail") && dict["RestoreFullDetail"] != nil {
                    var tmp : [DescribeRestoreFullDetailsResponseBody.RestoreFull.RestoreFullDetails.RestoreFullDetail] = []
                    for v in dict["RestoreFullDetail"] as! [Any] {
                        var model = DescribeRestoreFullDetailsResponseBody.RestoreFull.RestoreFullDetails.RestoreFullDetail()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataSize") && dict["DataSize"] != nil {
                self.dataSize = dict["DataSize"] as! String
            }
            if dict.keys.contains("Fail") && dict["Fail"] != nil {
                self.fail = dict["Fail"] as! Int32
            }
            if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("RestoreFullDetails") && dict["RestoreFullDetails"] != nil {
                var model = DescribeRestoreFullDetailsResponseBody.RestoreFull.RestoreFullDetails()
                model.fromMap(dict["RestoreFullDetails"] as! [String: Any])
                self.restoreFullDetails = model
            }
            if dict.keys.contains("Speed") && dict["Speed"] != nil {
                self.speed = dict["Speed"] as! String
            }
            if dict.keys.contains("Succeed") && dict["Succeed"] != nil {
                self.succeed = dict["Succeed"] as! Int32
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RestoreFull") && dict["RestoreFull"] != nil {
            var model = DescribeRestoreFullDetailsResponseBody.RestoreFull()
            model.fromMap(dict["RestoreFull"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeRestoreFullDetailsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("RestoreRecordId") && dict["RestoreRecordId"] != nil {
            self.restoreRecordId = dict["RestoreRecordId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("Process") && dict["Process"] != nil {
                self.process = dict["Process"] as! String
            }
            if dict.keys.contains("RestoreDelay") && dict["RestoreDelay"] != nil {
                self.restoreDelay = dict["RestoreDelay"] as! String
            }
            if dict.keys.contains("RestoreStartTs") && dict["RestoreStartTs"] != nil {
                self.restoreStartTs = dict["RestoreStartTs"] as! String
            }
            if dict.keys.contains("RestoredTs") && dict["RestoredTs"] != nil {
                self.restoredTs = dict["RestoredTs"] as! String
            }
            if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("State") && dict["State"] != nil {
                self.state = dict["State"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RestoreIncrDetail") && dict["RestoreIncrDetail"] != nil {
            var model = DescribeRestoreIncrDetailResponseBody.RestoreIncrDetail()
            model.fromMap(dict["RestoreIncrDetail"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeRestoreIncrDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RestoreRecordId") && dict["RestoreRecordId"] != nil {
            self.restoreRecordId = dict["RestoreRecordId"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                        self.endTime = dict["EndTime"] as! String
                    }
                    if dict.keys.contains("Message") && dict["Message"] != nil {
                        self.message = dict["Message"] as! String
                    }
                    if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                        self.startTime = dict["StartTime"] as! String
                    }
                    if dict.keys.contains("State") && dict["State"] != nil {
                        self.state = dict["State"] as! String
                    }
                    if dict.keys.contains("Table") && dict["Table"] != nil {
                        self.table = dict["Table"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RestoreSchemaDetail") && dict["RestoreSchemaDetail"] != nil {
                    var tmp : [DescribeRestoreSchemaDetailsResponseBody.RestoreSchema.RestoreSchemaDetails.RestoreSchemaDetail] = []
                    for v in dict["RestoreSchemaDetail"] as! [Any] {
                        var model = DescribeRestoreSchemaDetailsResponseBody.RestoreSchema.RestoreSchemaDetails.RestoreSchemaDetail()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Fail") && dict["Fail"] != nil {
                self.fail = dict["Fail"] as! Int32
            }
            if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("RestoreSchemaDetails") && dict["RestoreSchemaDetails"] != nil {
                var model = DescribeRestoreSchemaDetailsResponseBody.RestoreSchema.RestoreSchemaDetails()
                model.fromMap(dict["RestoreSchemaDetails"] as! [String: Any])
                self.restoreSchemaDetails = model
            }
            if dict.keys.contains("Succeed") && dict["Succeed"] != nil {
                self.succeed = dict["Succeed"] as! Int32
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RestoreSchema") && dict["RestoreSchema"] != nil {
            var model = DescribeRestoreSchemaDetailsResponseBody.RestoreSchema()
            model.fromMap(dict["RestoreSchema"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeRestoreSchemaDetailsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BulkLoadProcess") && dict["BulkLoadProcess"] != nil {
                    self.bulkLoadProcess = dict["BulkLoadProcess"] as! String
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("FinishTime") && dict["FinishTime"] != nil {
                    self.finishTime = dict["FinishTime"] as! String
                }
                if dict.keys.contains("HfileRestoreProcess") && dict["HfileRestoreProcess"] != nil {
                    self.hfileRestoreProcess = dict["HfileRestoreProcess"] as! String
                }
                if dict.keys.contains("LogProcess") && dict["LogProcess"] != nil {
                    self.logProcess = dict["LogProcess"] as! String
                }
                if dict.keys.contains("RecordId") && dict["RecordId"] != nil {
                    self.recordId = dict["RecordId"] as! String
                }
                if dict.keys.contains("SchemaProcess") && dict["SchemaProcess"] != nil {
                    self.schemaProcess = dict["SchemaProcess"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Rescord") && dict["Rescord"] != nil {
                var tmp : [DescribeRestoreSummaryResponseBody.Rescords.Rescord] = []
                for v in dict["Rescord"] as! [Any] {
                    var model = DescribeRestoreSummaryResponseBody.Rescords.Rescord()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HasMoreRestoreRecord") && dict["HasMoreRestoreRecord"] != nil {
            self.hasMoreRestoreRecord = dict["HasMoreRestoreRecord"] as! Int32
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Rescords") && dict["Rescords"] != nil {
            var model = DescribeRestoreSummaryResponseBody.Rescords()
            model.fromMap(dict["Rescords"] as! [String: Any])
            self.rescords = model
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeRestoreSummaryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("RestoreRecordId") && dict["RestoreRecordId"] != nil {
            self.restoreRecordId = dict["RestoreRecordId"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DataSize") && dict["DataSize"] != nil {
                        self.dataSize = dict["DataSize"] as! String
                    }
                    if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                        self.endTime = dict["EndTime"] as! String
                    }
                    if dict.keys.contains("Message") && dict["Message"] != nil {
                        self.message = dict["Message"] as! String
                    }
                    if dict.keys.contains("Process") && dict["Process"] != nil {
                        self.process = dict["Process"] as! String
                    }
                    if dict.keys.contains("Speed") && dict["Speed"] != nil {
                        self.speed = dict["Speed"] as! String
                    }
                    if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                        self.startTime = dict["StartTime"] as! String
                    }
                    if dict.keys.contains("State") && dict["State"] != nil {
                        self.state = dict["State"] as! String
                    }
                    if dict.keys.contains("Table") && dict["Table"] != nil {
                        self.table = dict["Table"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RestoreFullDetail") && dict["RestoreFullDetail"] != nil {
                    var tmp : [DescribeRestoreTablesResponseBody.RestoreFull.RestoreFullDetails.RestoreFullDetail] = []
                    for v in dict["RestoreFullDetail"] as! [Any] {
                        var model = DescribeRestoreTablesResponseBody.RestoreFull.RestoreFullDetails.RestoreFullDetail()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataSize") && dict["DataSize"] != nil {
                self.dataSize = dict["DataSize"] as! String
            }
            if dict.keys.contains("Fail") && dict["Fail"] != nil {
                self.fail = dict["Fail"] as! Int32
            }
            if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("RestoreFullDetails") && dict["RestoreFullDetails"] != nil {
                var model = DescribeRestoreTablesResponseBody.RestoreFull.RestoreFullDetails()
                model.fromMap(dict["RestoreFullDetails"] as! [String: Any])
                self.restoreFullDetails = model
            }
            if dict.keys.contains("Speed") && dict["Speed"] != nil {
                self.speed = dict["Speed"] as! String
            }
            if dict.keys.contains("Succeed") && dict["Succeed"] != nil {
                self.succeed = dict["Succeed"] as! Int32
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("Process") && dict["Process"] != nil {
                self.process = dict["Process"] as! String
            }
            if dict.keys.contains("RestoreDelay") && dict["RestoreDelay"] != nil {
                self.restoreDelay = dict["RestoreDelay"] as! String
            }
            if dict.keys.contains("RestoreStartTs") && dict["RestoreStartTs"] != nil {
                self.restoreStartTs = dict["RestoreStartTs"] as! String
            }
            if dict.keys.contains("RestoredTs") && dict["RestoredTs"] != nil {
                self.restoredTs = dict["RestoredTs"] as! String
            }
            if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("State") && dict["State"] != nil {
                self.state = dict["State"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                        self.endTime = dict["EndTime"] as! String
                    }
                    if dict.keys.contains("Message") && dict["Message"] != nil {
                        self.message = dict["Message"] as! String
                    }
                    if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                        self.startTime = dict["StartTime"] as! String
                    }
                    if dict.keys.contains("State") && dict["State"] != nil {
                        self.state = dict["State"] as! String
                    }
                    if dict.keys.contains("Table") && dict["Table"] != nil {
                        self.table = dict["Table"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RestoreSchemaDetail") && dict["RestoreSchemaDetail"] != nil {
                    var tmp : [DescribeRestoreTablesResponseBody.RestoreSchema.RestoreSchemaDetails.RestoreSchemaDetail] = []
                    for v in dict["RestoreSchemaDetail"] as! [Any] {
                        var model = DescribeRestoreTablesResponseBody.RestoreSchema.RestoreSchemaDetails.RestoreSchemaDetail()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Fail") && dict["Fail"] != nil {
                self.fail = dict["Fail"] as! Int32
            }
            if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("RestoreSchemaDetails") && dict["RestoreSchemaDetails"] != nil {
                var model = DescribeRestoreTablesResponseBody.RestoreSchema.RestoreSchemaDetails()
                model.fromMap(dict["RestoreSchemaDetails"] as! [String: Any])
                self.restoreSchemaDetails = model
            }
            if dict.keys.contains("Succeed") && dict["Succeed"] != nil {
                self.succeed = dict["Succeed"] as! Int32
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("RecordId") && dict["RecordId"] != nil {
                self.recordId = dict["RecordId"] as! String
            }
            if dict.keys.contains("RestoreToDate") && dict["RestoreToDate"] != nil {
                self.restoreToDate = dict["RestoreToDate"] as! String
            }
            if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("State") && dict["State"] != nil {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("TargetCluster") && dict["TargetCluster"] != nil {
                self.targetCluster = dict["TargetCluster"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Table") && dict["Table"] != nil {
                self.table = dict["Table"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RestoreFull") && dict["RestoreFull"] != nil {
            var model = DescribeRestoreTablesResponseBody.RestoreFull()
            model.fromMap(dict["RestoreFull"] as! [String: Any])
            self.restoreFull = model
        }
        if dict.keys.contains("RestoreIncrDetail") && dict["RestoreIncrDetail"] != nil {
            var model = DescribeRestoreTablesResponseBody.RestoreIncrDetail()
            model.fromMap(dict["RestoreIncrDetail"] as! [String: Any])
            self.restoreIncrDetail = model
        }
        if dict.keys.contains("RestoreSchema") && dict["RestoreSchema"] != nil {
            var model = DescribeRestoreTablesResponseBody.RestoreSchema()
            model.fromMap(dict["RestoreSchema"] as! [String: Any])
            self.restoreSchema = model
        }
        if dict.keys.contains("RestoreSummary") && dict["RestoreSummary"] != nil {
            var model = DescribeRestoreTablesResponseBody.RestoreSummary()
            model.fromMap(dict["RestoreSummary"] as! [String: Any])
            self.restoreSummary = model
        }
        if dict.keys.contains("Tables") && dict["Tables"] != nil {
            var model = DescribeRestoreTablesResponseBody.Tables()
            model.fromMap(dict["Tables"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeRestoreTablesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SecurityGroupId") && dict["SecurityGroupId"] != nil {
                self.securityGroupId = dict["SecurityGroupId"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecurityGroupIds") && dict["SecurityGroupIds"] != nil {
            var model = DescribeSecurityGroupsResponseBody.SecurityGroupIds()
            model.fromMap(dict["SecurityGroupIds"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeSecurityGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoRenew") && dict["AutoRenew"] != nil {
            self.autoRenew = dict["AutoRenew"] as! String
        }
        if dict.keys.contains("ClusterType") && dict["ClusterType"] != nil {
            self.clusterType = dict["ClusterType"] as! String
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("CuSize") && dict["CuSize"] != nil {
            self.cuSize = dict["CuSize"] as! String
        }
        if dict.keys.contains("DiskSize") && dict["DiskSize"] != nil {
            self.diskSize = dict["DiskSize"] as! String
        }
        if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
            self.expireTime = dict["ExpireTime"] as! String
        }
        if dict.keys.contains("HaType") && dict["HaType"] != nil {
            self.haType = dict["HaType"] as! String
        }
        if dict.keys.contains("HasUser") && dict["HasUser"] != nil {
            self.hasUser = dict["HasUser"] as! String
        }
        if dict.keys.contains("InnerEndpoint") && dict["InnerEndpoint"] != nil {
            self.innerEndpoint = dict["InnerEndpoint"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("IsDeletionProtection") && dict["IsDeletionProtection"] != nil {
            self.isDeletionProtection = dict["IsDeletionProtection"] as! String
        }
        if dict.keys.contains("LockMode") && dict["LockMode"] != nil {
            self.lockMode = dict["LockMode"] as! String
        }
        if dict.keys.contains("MainVersion") && dict["MainVersion"] != nil {
            self.mainVersion = dict["MainVersion"] as! String
        }
        if dict.keys.contains("OuterEndpoint") && dict["OuterEndpoint"] != nil {
            self.outerEndpoint = dict["OuterEndpoint"] as! String
        }
        if dict.keys.contains("PayType") && dict["PayType"] != nil {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ReserverMaxQpsNum") && dict["ReserverMaxQpsNum"] != nil {
            self.reserverMaxQpsNum = dict["ReserverMaxQpsNum"] as! String
        }
        if dict.keys.contains("ReserverMinQpsNum") && dict["ReserverMinQpsNum"] != nil {
            self.reserverMinQpsNum = dict["ReserverMinQpsNum"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("UpdateStatus") && dict["UpdateStatus"] != nil {
            self.updateStatus = dict["UpdateStatus"] as! String
        }
        if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeServerlessClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubDomain") && dict["SubDomain"] != nil {
            self.subDomain = dict["SubDomain"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeSubDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ColdStorageSize") && dict["ColdStorageSize"] != nil {
            self.coldStorageSize = dict["ColdStorageSize"] as! Int32
        }
        if dict.keys.contains("HbaseueClusterId") && dict["HbaseueClusterId"] != nil {
            self.hbaseueClusterId = dict["HbaseueClusterId"] as! String
        }
        if dict.keys.contains("NodeCount") && dict["NodeCount"] != nil {
            self.nodeCount = dict["NodeCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = EnableHBaseueBackupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoRenewPeriod") && dict["AutoRenewPeriod"] != nil {
            self.autoRenewPeriod = dict["AutoRenewPeriod"] as! Int32
        }
        if dict.keys.contains("BdsId") && dict["BdsId"] != nil {
            self.bdsId = dict["BdsId"] as! String
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("CoreInstanceType") && dict["CoreInstanceType"] != nil {
            self.coreInstanceType = dict["CoreInstanceType"] as! String
        }
        if dict.keys.contains("DiskSize") && dict["DiskSize"] != nil {
            self.diskSize = dict["DiskSize"] as! Int32
        }
        if dict.keys.contains("DiskType") && dict["DiskType"] != nil {
            self.diskType = dict["DiskType"] as! String
        }
        if dict.keys.contains("HbaseueClusterId") && dict["HbaseueClusterId"] != nil {
            self.hbaseueClusterId = dict["HbaseueClusterId"] as! String
        }
        if dict.keys.contains("MasterInstanceType") && dict["MasterInstanceType"] != nil {
            self.masterInstanceType = dict["MasterInstanceType"] as! String
        }
        if dict.keys.contains("ModuleClusterName") && dict["ModuleClusterName"] != nil {
            self.moduleClusterName = dict["ModuleClusterName"] as! String
        }
        if dict.keys.contains("ModuleTypeName") && dict["ModuleTypeName"] != nil {
            self.moduleTypeName = dict["ModuleTypeName"] as! String
        }
        if dict.keys.contains("NodeCount") && dict["NodeCount"] != nil {
            self.nodeCount = dict["NodeCount"] as! Int32
        }
        if dict.keys.contains("PayType") && dict["PayType"] != nil {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("Period") && dict["Period"] != nil {
            self.period = dict["Period"] as! Int32
        }
        if dict.keys.contains("PeriodUnit") && dict["PeriodUnit"] != nil {
            self.periodUnit = dict["PeriodUnit"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("VswitchId") && dict["VswitchId"] != nil {
            self.vswitchId = dict["VswitchId"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = EnableHBaseueModuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ArbiterVSwitchId") && dict["ArbiterVSwitchId"] != nil {
            self.arbiterVSwitchId = dict["ArbiterVSwitchId"] as! String
        }
        if dict.keys.contains("ArbiterZoneId") && dict["ArbiterZoneId"] != nil {
            self.arbiterZoneId = dict["ArbiterZoneId"] as! String
        }
        if dict.keys.contains("ArchVersion") && dict["ArchVersion"] != nil {
            self.archVersion = dict["ArchVersion"] as! String
        }
        if dict.keys.contains("AutoRenewPeriod") && dict["AutoRenewPeriod"] != nil {
            self.autoRenewPeriod = dict["AutoRenewPeriod"] as! Int32
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ClusterName") && dict["ClusterName"] != nil {
            self.clusterName = dict["ClusterName"] as! String
        }
        if dict.keys.contains("CoreDiskSize") && dict["CoreDiskSize"] != nil {
            self.coreDiskSize = dict["CoreDiskSize"] as! Int32
        }
        if dict.keys.contains("CoreDiskType") && dict["CoreDiskType"] != nil {
            self.coreDiskType = dict["CoreDiskType"] as! String
        }
        if dict.keys.contains("CoreInstanceType") && dict["CoreInstanceType"] != nil {
            self.coreInstanceType = dict["CoreInstanceType"] as! String
        }
        if dict.keys.contains("CoreNodeCount") && dict["CoreNodeCount"] != nil {
            self.coreNodeCount = dict["CoreNodeCount"] as! Int32
        }
        if dict.keys.contains("Engine") && dict["Engine"] != nil {
            self.engine = dict["Engine"] as! String
        }
        if dict.keys.contains("EngineVersion") && dict["EngineVersion"] != nil {
            self.engineVersion = dict["EngineVersion"] as! String
        }
        if dict.keys.contains("LogDiskSize") && dict["LogDiskSize"] != nil {
            self.logDiskSize = dict["LogDiskSize"] as! Int32
        }
        if dict.keys.contains("LogDiskType") && dict["LogDiskType"] != nil {
            self.logDiskType = dict["LogDiskType"] as! String
        }
        if dict.keys.contains("LogInstanceType") && dict["LogInstanceType"] != nil {
            self.logInstanceType = dict["LogInstanceType"] as! String
        }
        if dict.keys.contains("LogNodeCount") && dict["LogNodeCount"] != nil {
            self.logNodeCount = dict["LogNodeCount"] as! Int32
        }
        if dict.keys.contains("MasterInstanceType") && dict["MasterInstanceType"] != nil {
            self.masterInstanceType = dict["MasterInstanceType"] as! String
        }
        if dict.keys.contains("MultiZoneCombination") && dict["MultiZoneCombination"] != nil {
            self.multiZoneCombination = dict["MultiZoneCombination"] as! String
        }
        if dict.keys.contains("PayType") && dict["PayType"] != nil {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("Period") && dict["Period"] != nil {
            self.period = dict["Period"] as! Int32
        }
        if dict.keys.contains("PeriodUnit") && dict["PeriodUnit"] != nil {
            self.periodUnit = dict["PeriodUnit"] as! String
        }
        if dict.keys.contains("PrimaryVSwitchId") && dict["PrimaryVSwitchId"] != nil {
            self.primaryVSwitchId = dict["PrimaryVSwitchId"] as! String
        }
        if dict.keys.contains("PrimaryZoneId") && dict["PrimaryZoneId"] != nil {
            self.primaryZoneId = dict["PrimaryZoneId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SecurityIPList") && dict["SecurityIPList"] != nil {
            self.securityIPList = dict["SecurityIPList"] as! String
        }
        if dict.keys.contains("StandbyVSwitchId") && dict["StandbyVSwitchId"] != nil {
            self.standbyVSwitchId = dict["StandbyVSwitchId"] as! String
        }
        if dict.keys.contains("StandbyZoneId") && dict["StandbyZoneId"] != nil {
            self.standbyZoneId = dict["StandbyZoneId"] as! String
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = EvaluateMultiZoneResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("MultimodCmsUrl") && dict["MultimodCmsUrl"] != nil {
            self.multimodCmsUrl = dict["MultimodCmsUrl"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetMultimodeCmsUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountName") && dict["AccountName"] != nil {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("AclActions") && dict["AclActions"] != nil {
            self.aclActions = dict["AclActions"] as! String
        }
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Namespace") && dict["Namespace"] != nil {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("TableName") && dict["TableName"] != nil {
            self.tableName = dict["TableName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GrantResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
                    self.instanceName = dict["InstanceName"] as! String
                }
                if dict.keys.contains("IsDefault") && dict["IsDefault"] != nil {
                    self.isDefault = dict["IsDefault"] as! Bool
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Instance") && dict["Instance"] != nil {
                var tmp : [ListHBaseInstancesResponseBody.Instances.Instance] = []
                for v in dict["Instance"] as! [Any] {
                    var model = ListHBaseInstancesResponseBody.Instances.Instance()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Instances") && dict["Instances"] != nil {
            var model = ListHBaseInstancesResponseBody.Instances()
            model.fromMap(dict["Instances"] as! [String: Any])
            self.instances = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListHBaseInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConfigureName") && dict["ConfigureName"] != nil {
                    self.configureName = dict["ConfigureName"] as! String
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Effective") && dict["Effective"] != nil {
                    self.effective = dict["Effective"] as! String
                }
                if dict.keys.contains("NewValue") && dict["NewValue"] != nil {
                    self.newValue = dict["NewValue"] as! String
                }
                if dict.keys.contains("OldValue") && dict["OldValue"] != nil {
                    self.oldValue = dict["OldValue"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Config") && dict["Config"] != nil {
                var tmp : [ListInstanceServiceConfigHistoriesResponseBody.ConfigureHistoryList.Config] = []
                for v in dict["Config"] as! [Any] {
                    var model = ListInstanceServiceConfigHistoriesResponseBody.ConfigureHistoryList.Config()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigureHistoryList") && dict["ConfigureHistoryList"] != nil {
            var model = ListInstanceServiceConfigHistoriesResponseBody.ConfigureHistoryList()
            model.fromMap(dict["ConfigureHistoryList"] as! [String: Any])
            self.configureHistoryList = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageRecordCount") && dict["PageRecordCount"] != nil {
            self.pageRecordCount = dict["PageRecordCount"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalRecordCount") && dict["TotalRecordCount"] != nil {
            self.totalRecordCount = dict["TotalRecordCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListInstanceServiceConfigHistoriesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConfigureName") && dict["ConfigureName"] != nil {
                    self.configureName = dict["ConfigureName"] as! String
                }
                if dict.keys.contains("ConfigureUnit") && dict["ConfigureUnit"] != nil {
                    self.configureUnit = dict["ConfigureUnit"] as! String
                }
                if dict.keys.contains("DefaultValue") && dict["DefaultValue"] != nil {
                    self.defaultValue = dict["DefaultValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("NeedRestart") && dict["NeedRestart"] != nil {
                    self.needRestart = dict["NeedRestart"] as! String
                }
                if dict.keys.contains("RunningValue") && dict["RunningValue"] != nil {
                    self.runningValue = dict["RunningValue"] as! String
                }
                if dict.keys.contains("ValueRange") && dict["ValueRange"] != nil {
                    self.valueRange = dict["ValueRange"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Config") && dict["Config"] != nil {
                var tmp : [ListInstanceServiceConfigurationsResponseBody.ConfigureList.Config] = []
                for v in dict["Config"] as! [Any] {
                    var model = ListInstanceServiceConfigurationsResponseBody.ConfigureList.Config()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigureList") && dict["ConfigureList"] != nil {
            var model = ListInstanceServiceConfigurationsResponseBody.ConfigureList()
            model.fromMap(dict["ConfigureList"] as! [String: Any])
            self.configureList = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageRecordCount") && dict["PageRecordCount"] != nil {
            self.pageRecordCount = dict["PageRecordCount"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalRecordCount") && dict["TotalRecordCount"] != nil {
            self.totalRecordCount = dict["TotalRecordCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListInstanceServiceConfigurationsResponseBody()
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
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
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
                if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
                    self.resourceId = dict["ResourceId"] as! String
                }
                if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                    self.resourceType = dict["ResourceType"] as! String
                }
                if dict.keys.contains("TagKey") && dict["TagKey"] != nil {
                    self.tagKey = dict["TagKey"] as! String
                }
                if dict.keys.contains("TagValue") && dict["TagValue"] != nil {
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
            if dict.keys.contains("TagResource") && dict["TagResource"] != nil {
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
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TagResources") && dict["TagResources"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListTagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TagKey") && dict["TagKey"] != nil {
                    self.tagKey = dict["TagKey"] as! String
                }
                if dict.keys.contains("TagValue") && dict["TagValue"] != nil {
                    self.tagValue = dict["TagValue"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Tag") && dict["Tag"] != nil {
                var tmp : [ListTagsResponseBody.Tags.Tag] = []
                for v in dict["Tag"] as! [Any] {
                    var model = ListTagsResponseBody.Tags.Tag()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            var model = ListTagsResponseBody.Tags()
            model.fromMap(dict["Tags"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListTagsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountName") && dict["AccountName"] != nil {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("NewAccountPassword") && dict["NewAccountPassword"] != nil {
            self.newAccountPassword = dict["NewAccountPassword"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifyAccountPasswordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ids") && dict["Ids"] != nil {
            self.ids = dict["Ids"] as! String
        }
        if dict.keys.contains("ImmediateStart") && dict["ImmediateStart"] != nil {
            self.immediateStart = dict["ImmediateStart"] as! Int32
        }
        if dict.keys.contains("OwnerAccount") && dict["OwnerAccount"] != nil {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("SwitchTime") && dict["SwitchTime"] != nil {
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
        if dict.keys.contains("Ids") && dict["Ids"] != nil {
            self.ids = dict["Ids"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifyActiveOperationTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("FullBackupCycle") && dict["FullBackupCycle"] != nil {
            self.fullBackupCycle = dict["FullBackupCycle"] as! String
        }
        if dict.keys.contains("MinHFileBackupCount") && dict["MinHFileBackupCount"] != nil {
            self.minHFileBackupCount = dict["MinHFileBackupCount"] as! String
        }
        if dict.keys.contains("NextFullBackupDate") && dict["NextFullBackupDate"] != nil {
            self.nextFullBackupDate = dict["NextFullBackupDate"] as! String
        }
        if dict.keys.contains("Tables") && dict["Tables"] != nil {
            self.tables = dict["Tables"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifyBackupPlanConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("PreferredBackupEndTimeUTC") && dict["PreferredBackupEndTimeUTC"] != nil {
            self.preferredBackupEndTimeUTC = dict["PreferredBackupEndTimeUTC"] as! String
        }
        if dict.keys.contains("PreferredBackupPeriod") && dict["PreferredBackupPeriod"] != nil {
            self.preferredBackupPeriod = dict["PreferredBackupPeriod"] as! String
        }
        if dict.keys.contains("PreferredBackupStartTimeUTC") && dict["PreferredBackupStartTimeUTC"] != nil {
            self.preferredBackupStartTimeUTC = dict["PreferredBackupStartTimeUTC"] as! String
        }
        if dict.keys.contains("PreferredBackupTime") && dict["PreferredBackupTime"] != nil {
            self.preferredBackupTime = dict["PreferredBackupTime"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifyBackupPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Protection") && dict["Protection"] != nil {
            self.protection = dict["Protection"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifyClusterDeletionProtectionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("WarningLine") && dict["WarningLine"] != nil {
            self.warningLine = dict["WarningLine"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifyDiskWarningLineResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("MaintainEndTime") && dict["MaintainEndTime"] != nil {
            self.maintainEndTime = dict["MaintainEndTime"] as! String
        }
        if dict.keys.contains("MaintainStartTime") && dict["MaintainStartTime"] != nil {
            self.maintainStartTime = dict["MaintainStartTime"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifyInstanceMaintainTimeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ClusterName") && dict["ClusterName"] != nil {
            self.clusterName = dict["ClusterName"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifyInstanceNameResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ConfigureName") && dict["ConfigureName"] != nil {
            self.configureName = dict["ConfigureName"] as! String
        }
        if dict.keys.contains("ConfigureValue") && dict["ConfigureValue"] != nil {
            self.configureValue = dict["ConfigureValue"] as! String
        }
        if dict.keys.contains("Parameters") && dict["Parameters"] != nil {
            self.parameters = dict["Parameters"] as! String
        }
        if dict.keys.contains("Restart") && dict["Restart"] != nil {
            self.restart = dict["Restart"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifyInstanceServiceConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("CoreInstanceType") && dict["CoreInstanceType"] != nil {
            self.coreInstanceType = dict["CoreInstanceType"] as! String
        }
        if dict.keys.contains("MasterInstanceType") && dict["MasterInstanceType"] != nil {
            self.masterInstanceType = dict["MasterInstanceType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifyInstanceTypeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("IpList") && dict["IpList"] != nil {
            self.ipList = dict["IpList"] as! String
        }
        if dict.keys.contains("IpVersion") && dict["IpVersion"] != nil {
            self.ipVersion = dict["IpVersion"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifyIpWhitelistResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("CoreInstanceType") && dict["CoreInstanceType"] != nil {
            self.coreInstanceType = dict["CoreInstanceType"] as! String
        }
        if dict.keys.contains("LogInstanceType") && dict["LogInstanceType"] != nil {
            self.logInstanceType = dict["LogInstanceType"] as! String
        }
        if dict.keys.contains("MasterInstanceType") && dict["MasterInstanceType"] != nil {
            self.masterInstanceType = dict["MasterInstanceType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifyMultiZoneClusterNodeTypeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("SecurityGroupIds") && dict["SecurityGroupIds"] != nil {
            self.securityGroupIds = dict["SecurityGroupIds"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifySecurityGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountName") && dict["AccountName"] != nil {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("AccountPassword") && dict["AccountPassword"] != nil {
            self.accountPassword = dict["AccountPassword"] as! String
        }
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifyUIAccountPasswordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("NewResourceGroupId") && dict["NewResourceGroupId"] != nil {
            self.newResourceGroupId = dict["NewResourceGroupId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = MoveResourceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = OpenBackupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = PurgeInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BdsId") && dict["BdsId"] != nil {
            self.bdsId = dict["BdsId"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("HbaseType") && dict["HbaseType"] != nil {
                            self.hbaseType = dict["HbaseType"] as! String
                        }
                        if dict.keys.contains("SlbConnAddr") && dict["SlbConnAddr"] != nil {
                            self.slbConnAddr = dict["SlbConnAddr"] as! String
                        }
                        if dict.keys.contains("SlbType") && dict["SlbType"] != nil {
                            self.slbType = dict["SlbType"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("HaSlbConn") && dict["HaSlbConn"] != nil {
                        var tmp : [QueryHBaseHaDBResponseBody.ClusterList.Cluster.HaSlbConnList.HaSlbConn] = []
                        for v in dict["HaSlbConn"] as! [Any] {
                            var model = QueryHBaseHaDBResponseBody.ClusterList.Cluster.HaSlbConnList.HaSlbConn()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ActiveName") && dict["ActiveName"] != nil {
                    self.activeName = dict["ActiveName"] as! String
                }
                if dict.keys.contains("BdsName") && dict["BdsName"] != nil {
                    self.bdsName = dict["BdsName"] as! String
                }
                if dict.keys.contains("HaName") && dict["HaName"] != nil {
                    self.haName = dict["HaName"] as! String
                }
                if dict.keys.contains("HaSlbConnList") && dict["HaSlbConnList"] != nil {
                    var model = QueryHBaseHaDBResponseBody.ClusterList.Cluster.HaSlbConnList()
                    model.fromMap(dict["HaSlbConnList"] as! [String: Any])
                    self.haSlbConnList = model
                }
                if dict.keys.contains("StandbyName") && dict["StandbyName"] != nil {
                    self.standbyName = dict["StandbyName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Cluster") && dict["Cluster"] != nil {
                var tmp : [QueryHBaseHaDBResponseBody.ClusterList.Cluster] = []
                for v in dict["Cluster"] as! [Any] {
                    var model = QueryHBaseHaDBResponseBody.ClusterList.Cluster()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterList") && dict["ClusterList"] != nil {
            var model = QueryHBaseHaDBResponseBody.ClusterList()
            model.fromMap(dict["ClusterList"] as! [String: Any])
            self.clusterList = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryHBaseHaDBResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("HasSingleNode") && dict["HasSingleNode"] != nil {
            self.hasSingleNode = dict["HasSingleNode"] as! Bool
        }
        if dict.keys.contains("RelateDbType") && dict["RelateDbType"] != nil {
            self.relateDbType = dict["RelateDbType"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
                    self.clusterId = dict["ClusterId"] as! String
                }
                if dict.keys.contains("ClusterName") && dict["ClusterName"] != nil {
                    self.clusterName = dict["ClusterName"] as! String
                }
                if dict.keys.contains("DBType") && dict["DBType"] != nil {
                    self.DBType = dict["DBType"] as! String
                }
                if dict.keys.contains("DBVersion") && dict["DBVersion"] != nil {
                    self.DBVersion = dict["DBVersion"] as! String
                }
                if dict.keys.contains("IsRelated") && dict["IsRelated"] != nil {
                    self.isRelated = dict["IsRelated"] as! Bool
                }
                if dict.keys.contains("LockMode") && dict["LockMode"] != nil {
                    self.lockMode = dict["LockMode"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Cluster") && dict["Cluster"] != nil {
                var tmp : [QueryXpackRelateDBResponseBody.ClusterList.Cluster] = []
                for v in dict["Cluster"] as! [Any] {
                    var model = QueryXpackRelateDBResponseBody.ClusterList.Cluster()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterList") && dict["ClusterList"] != nil {
            var model = QueryXpackRelateDBResponseBody.ClusterList()
            model.fromMap(dict["ClusterList"] as! [String: Any])
            self.clusterList = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryXpackRelateDBResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("HaActive") && dict["HaActive"] != nil {
            self.haActive = dict["HaActive"] as! String
        }
        if dict.keys.contains("HaActiveClusterKey") && dict["HaActiveClusterKey"] != nil {
            self.haActiveClusterKey = dict["HaActiveClusterKey"] as! String
        }
        if dict.keys.contains("HaActiveDBType") && dict["HaActiveDBType"] != nil {
            self.haActiveDBType = dict["HaActiveDBType"] as! String
        }
        if dict.keys.contains("HaActiveHbaseFsDir") && dict["HaActiveHbaseFsDir"] != nil {
            self.haActiveHbaseFsDir = dict["HaActiveHbaseFsDir"] as! String
        }
        if dict.keys.contains("HaActiveHdfsUri") && dict["HaActiveHdfsUri"] != nil {
            self.haActiveHdfsUri = dict["HaActiveHdfsUri"] as! String
        }
        if dict.keys.contains("HaActivePassword") && dict["HaActivePassword"] != nil {
            self.haActivePassword = dict["HaActivePassword"] as! String
        }
        if dict.keys.contains("HaActiveUser") && dict["HaActiveUser"] != nil {
            self.haActiveUser = dict["HaActiveUser"] as! String
        }
        if dict.keys.contains("HaActiveVersion") && dict["HaActiveVersion"] != nil {
            self.haActiveVersion = dict["HaActiveVersion"] as! String
        }
        if dict.keys.contains("HaMigrateType") && dict["HaMigrateType"] != nil {
            self.haMigrateType = dict["HaMigrateType"] as! String
        }
        if dict.keys.contains("HaStandby") && dict["HaStandby"] != nil {
            self.haStandby = dict["HaStandby"] as! String
        }
        if dict.keys.contains("HaStandbyClusterKey") && dict["HaStandbyClusterKey"] != nil {
            self.haStandbyClusterKey = dict["HaStandbyClusterKey"] as! String
        }
        if dict.keys.contains("HaStandbyDBType") && dict["HaStandbyDBType"] != nil {
            self.haStandbyDBType = dict["HaStandbyDBType"] as! String
        }
        if dict.keys.contains("HaStandbyHbaseFsDir") && dict["HaStandbyHbaseFsDir"] != nil {
            self.haStandbyHbaseFsDir = dict["HaStandbyHbaseFsDir"] as! String
        }
        if dict.keys.contains("HaStandbyHdfsUri") && dict["HaStandbyHdfsUri"] != nil {
            self.haStandbyHdfsUri = dict["HaStandbyHdfsUri"] as! String
        }
        if dict.keys.contains("HaStandbyPassword") && dict["HaStandbyPassword"] != nil {
            self.haStandbyPassword = dict["HaStandbyPassword"] as! String
        }
        if dict.keys.contains("HaStandbyUser") && dict["HaStandbyUser"] != nil {
            self.haStandbyUser = dict["HaStandbyUser"] as! String
        }
        if dict.keys.contains("HaStandbyVersion") && dict["HaStandbyVersion"] != nil {
            self.haStandbyVersion = dict["HaStandbyVersion"] as! String
        }
        if dict.keys.contains("HaTables") && dict["HaTables"] != nil {
            self.haTables = dict["HaTables"] as! String
        }
        if dict.keys.contains("IsActiveStandard") && dict["IsActiveStandard"] != nil {
            self.isActiveStandard = dict["IsActiveStandard"] as! Bool
        }
        if dict.keys.contains("IsStandbyStandard") && dict["IsStandbyStandard"] != nil {
            self.isStandbyStandard = dict["IsStandbyStandard"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RelateDbForHBaseHaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ReleasePublicNetworkAddressResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Duration") && dict["Duration"] != nil {
            self.duration = dict["Duration"] as! Int32
        }
        if dict.keys.contains("PricingCycle") && dict["PricingCycle"] != nil {
            self.pricingCycle = dict["PricingCycle"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RenewInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ColdStorageSize") && dict["ColdStorageSize"] != nil {
            self.coldStorageSize = dict["ColdStorageSize"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ResizeColdStorageSizeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("NodeDiskSize") && dict["NodeDiskSize"] != nil {
            self.nodeDiskSize = dict["NodeDiskSize"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ResizeDiskSizeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("CoreDiskSize") && dict["CoreDiskSize"] != nil {
            self.coreDiskSize = dict["CoreDiskSize"] as! Int32
        }
        if dict.keys.contains("LogDiskSize") && dict["LogDiskSize"] != nil {
            self.logDiskSize = dict["LogDiskSize"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ResizeMultiZoneClusterDiskSizeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ArbiterVSwitchId") && dict["ArbiterVSwitchId"] != nil {
            self.arbiterVSwitchId = dict["ArbiterVSwitchId"] as! String
        }
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("CoreNodeCount") && dict["CoreNodeCount"] != nil {
            self.coreNodeCount = dict["CoreNodeCount"] as! Int32
        }
        if dict.keys.contains("LogNodeCount") && dict["LogNodeCount"] != nil {
            self.logNodeCount = dict["LogNodeCount"] as! Int32
        }
        if dict.keys.contains("PrimaryCoreNodeCount") && dict["PrimaryCoreNodeCount"] != nil {
            self.primaryCoreNodeCount = dict["PrimaryCoreNodeCount"] as! Int32
        }
        if dict.keys.contains("PrimaryVSwitchId") && dict["PrimaryVSwitchId"] != nil {
            self.primaryVSwitchId = dict["PrimaryVSwitchId"] as! String
        }
        if dict.keys.contains("StandbyCoreNodeCount") && dict["StandbyCoreNodeCount"] != nil {
            self.standbyCoreNodeCount = dict["StandbyCoreNodeCount"] as! Int32
        }
        if dict.keys.contains("StandbyVSwitchId") && dict["StandbyVSwitchId"] != nil {
            self.standbyVSwitchId = dict["StandbyVSwitchId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ResizeMultiZoneClusterNodeCountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("NodeCount") && dict["NodeCount"] != nil {
            self.nodeCount = dict["NodeCount"] as! Int32
        }
        if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ResizeNodeCountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Components") && dict["Components"] != nil {
            self.components = dict["Components"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RestartInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountName") && dict["AccountName"] != nil {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("AclActions") && dict["AclActions"] != nil {
            self.aclActions = dict["AclActions"] as! String
        }
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Namespace") && dict["Namespace"] != nil {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("TableName") && dict["TableName"] != nil {
            self.tableName = dict["TableName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RevokeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BdsId") && dict["BdsId"] != nil {
            self.bdsId = dict["BdsId"] as! String
        }
        if dict.keys.contains("HaId") && dict["HaId"] != nil {
            self.haId = dict["HaId"] as! String
        }
        if dict.keys.contains("HaTypes") && dict["HaTypes"] != nil {
            self.haTypes = dict["HaTypes"] as! String
        }
        if dict.keys.contains("HbaseType") && dict["HbaseType"] != nil {
            self.hbaseType = dict["HbaseType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SwitchHbaseHaSlbResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Operate") && dict["Operate"] != nil {
            self.operate = dict["Operate"] as! String
        }
        if dict.keys.contains("ServiceName") && dict["ServiceName"] != nil {
            self.serviceName = dict["ServiceName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SwitchServiceResponseBody()
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
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = TagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("All") && dict["All"] != nil {
            self.all = dict["All"] as! Bool
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("TagKey") && dict["TagKey"] != nil {
            self.tagKey = dict["TagKey"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UnTagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Components") && dict["Components"] != nil {
            self.components = dict["Components"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UpgradingComponents") && dict["UpgradingComponents"] != nil {
            self.upgradingComponents = dict["UpgradingComponents"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpgradeMinorVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Components") && dict["Components"] != nil {
            self.components = dict["Components"] as! String
        }
        if dict.keys.contains("RestartComponents") && dict["RestartComponents"] != nil {
            self.restartComponents = dict["RestartComponents"] as! String
        }
        if dict.keys.contains("RunMode") && dict["RunMode"] != nil {
            self.runMode = dict["RunMode"] as! String
        }
        if dict.keys.contains("UpgradeInsName") && dict["UpgradeInsName"] != nil {
            self.upgradeInsName = dict["UpgradeInsName"] as! String
        }
        if dict.keys.contains("Versions") && dict["Versions"] != nil {
            self.versions = dict["Versions"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UpgradingComponents") && dict["UpgradingComponents"] != nil {
            self.upgradingComponents = dict["UpgradingComponents"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpgradeMultiZoneClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("DbClusterIds") && dict["DbClusterIds"] != nil {
            self.dbClusterIds = dict["DbClusterIds"] as! String
        }
        if dict.keys.contains("RelateDbType") && dict["RelateDbType"] != nil {
            self.relateDbType = dict["RelateDbType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = XpackRelateDBResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
