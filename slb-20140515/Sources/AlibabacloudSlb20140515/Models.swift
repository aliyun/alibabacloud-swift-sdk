import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddAccessControlListEntryRequest : Tea.TeaModel {
    public var aclEntrys: String?

    public var aclId: String?

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
        if self.aclEntrys != nil {
            map["AclEntrys"] = self.aclEntrys!
        }
        if self.aclId != nil {
            map["AclId"] = self.aclId!
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
        if dict.keys.contains("AclEntrys") {
            self.aclEntrys = dict["AclEntrys"] as! String
        }
        if dict.keys.contains("AclId") {
            self.aclId = dict["AclId"] as! String
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

public class AddAccessControlListEntryResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class AddAccessControlListEntryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddAccessControlListEntryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AddAccessControlListEntryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddBackendServersRequest : Tea.TeaModel {
    public var backendServers: String?

    public var loadBalancerId: String?

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
        if self.backendServers != nil {
            map["BackendServers"] = self.backendServers!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
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
        if dict.keys.contains("BackendServers") {
            self.backendServers = dict["BackendServers"] as! String
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
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

public class AddBackendServersResponseBody : Tea.TeaModel {
    public class BackendServers : Tea.TeaModel {
        public class BackendServer : Tea.TeaModel {
            public var description_: String?

            public var serverId: String?

            public var type: String?

            public var weight: String?

            public override init() {
                super.init()
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
                if self.serverId != nil {
                    map["ServerId"] = self.serverId!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.weight != nil {
                    map["Weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("ServerId") {
                    self.serverId = dict["ServerId"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Weight") {
                    self.weight = dict["Weight"] as! String
                }
            }
        }
        public var backendServer: [AddBackendServersResponseBody.BackendServers.BackendServer]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backendServer != nil {
                var tmp : [Any] = []
                for k in self.backendServer! {
                    tmp.append(k.toMap())
                }
                map["BackendServer"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BackendServer") {
                var tmp : [AddBackendServersResponseBody.BackendServers.BackendServer] = []
                for v in dict["BackendServer"] as! [Any] {
                    var model = AddBackendServersResponseBody.BackendServers.BackendServer()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.backendServer = tmp
            }
        }
    }
    public var backendServers: AddBackendServersResponseBody.BackendServers?

    public var loadBalancerId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.backendServers?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backendServers != nil {
            map["BackendServers"] = self.backendServers?.toMap()
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackendServers") {
            var model = AddBackendServersResponseBody.BackendServers()
            model.fromMap(dict["BackendServers"] as! [String: Any])
            self.backendServers = model
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AddBackendServersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddBackendServersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AddBackendServersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddListenerWhiteListItemRequest : Tea.TeaModel {
    public var listenerPort: Int32?

    public var listenerProtocol: String?

    public var loadBalancerId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var sourceItems: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.listenerPort != nil {
            map["ListenerPort"] = self.listenerPort!
        }
        if self.listenerProtocol != nil {
            map["ListenerProtocol"] = self.listenerProtocol!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
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
        if self.sourceItems != nil {
            map["SourceItems"] = self.sourceItems!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ListenerPort") {
            self.listenerPort = dict["ListenerPort"] as! Int32
        }
        if dict.keys.contains("ListenerProtocol") {
            self.listenerProtocol = dict["ListenerProtocol"] as! String
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
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
        if dict.keys.contains("SourceItems") {
            self.sourceItems = dict["SourceItems"] as! String
        }
    }
}

public class AddListenerWhiteListItemResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class AddListenerWhiteListItemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddListenerWhiteListItemResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AddListenerWhiteListItemResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddTagsRequest : Tea.TeaModel {
    public var loadBalancerId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
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
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
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
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! String
        }
    }
}

public class AddTagsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class AddTagsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddTagsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AddTagsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddVServerGroupBackendServersRequest : Tea.TeaModel {
    public var backendServers: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var VServerGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backendServers != nil {
            map["BackendServers"] = self.backendServers!
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
        if self.VServerGroupId != nil {
            map["VServerGroupId"] = self.VServerGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackendServers") {
            self.backendServers = dict["BackendServers"] as! String
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
        if dict.keys.contains("VServerGroupId") {
            self.VServerGroupId = dict["VServerGroupId"] as! String
        }
    }
}

public class AddVServerGroupBackendServersResponseBody : Tea.TeaModel {
    public class BackendServers : Tea.TeaModel {
        public class BackendServer : Tea.TeaModel {
            public var description_: String?

            public var port: Int32?

            public var serverId: String?

            public var type: String?

            public var weight: Int32?

            public override init() {
                super.init()
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
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.serverId != nil {
                    map["ServerId"] = self.serverId!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.weight != nil {
                    map["Weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Port") {
                    self.port = dict["Port"] as! Int32
                }
                if dict.keys.contains("ServerId") {
                    self.serverId = dict["ServerId"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Weight") {
                    self.weight = dict["Weight"] as! Int32
                }
            }
        }
        public var backendServer: [AddVServerGroupBackendServersResponseBody.BackendServers.BackendServer]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backendServer != nil {
                var tmp : [Any] = []
                for k in self.backendServer! {
                    tmp.append(k.toMap())
                }
                map["BackendServer"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BackendServer") {
                var tmp : [AddVServerGroupBackendServersResponseBody.BackendServers.BackendServer] = []
                for v in dict["BackendServer"] as! [Any] {
                    var model = AddVServerGroupBackendServersResponseBody.BackendServers.BackendServer()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.backendServer = tmp
            }
        }
    }
    public var backendServers: AddVServerGroupBackendServersResponseBody.BackendServers?

    public var requestId: String?

    public var VServerGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.backendServers?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backendServers != nil {
            map["BackendServers"] = self.backendServers?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.VServerGroupId != nil {
            map["VServerGroupId"] = self.VServerGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackendServers") {
            var model = AddVServerGroupBackendServersResponseBody.BackendServers()
            model.fromMap(dict["BackendServers"] as! [String: Any])
            self.backendServers = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("VServerGroupId") {
            self.VServerGroupId = dict["VServerGroupId"] as! String
        }
    }
}

public class AddVServerGroupBackendServersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddVServerGroupBackendServersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AddVServerGroupBackendServersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAccessControlListRequest : Tea.TeaModel {
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
    public var aclName: String?

    public var addressIPVersion: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tag: [CreateAccessControlListRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclName != nil {
            map["AclName"] = self.aclName!
        }
        if self.addressIPVersion != nil {
            map["AddressIPVersion"] = self.addressIPVersion!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclName") {
            self.aclName = dict["AclName"] as! String
        }
        if dict.keys.contains("AddressIPVersion") {
            self.addressIPVersion = dict["AddressIPVersion"] as! String
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
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Tag") {
            var tmp : [CreateAccessControlListRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = CreateAccessControlListRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class CreateAccessControlListResponseBody : Tea.TeaModel {
    public var aclId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclId != nil {
            map["AclId"] = self.aclId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclId") {
            self.aclId = dict["AclId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateAccessControlListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAccessControlListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateAccessControlListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDomainExtensionRequest : Tea.TeaModel {
    public var domain: String?

    public var listenerPort: Int32?

    public var loadBalancerId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var serverCertificateId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.listenerPort != nil {
            map["ListenerPort"] = self.listenerPort!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
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
        if self.serverCertificateId != nil {
            map["ServerCertificateId"] = self.serverCertificateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("ListenerPort") {
            self.listenerPort = dict["ListenerPort"] as! Int32
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
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
        if dict.keys.contains("ServerCertificateId") {
            self.serverCertificateId = dict["ServerCertificateId"] as! String
        }
    }
}

public class CreateDomainExtensionResponseBody : Tea.TeaModel {
    public var domainExtensionId: String?

    public var listenerPort: Int32?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainExtensionId != nil {
            map["DomainExtensionId"] = self.domainExtensionId!
        }
        if self.listenerPort != nil {
            map["ListenerPort"] = self.listenerPort!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainExtensionId") {
            self.domainExtensionId = dict["DomainExtensionId"] as! String
        }
        if dict.keys.contains("ListenerPort") {
            self.listenerPort = dict["ListenerPort"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateDomainExtensionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDomainExtensionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateDomainExtensionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateLoadBalancerRequest : Tea.TeaModel {
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
    public var address: String?

    public var addressIPVersion: String?

    public var addressType: String?

    public var autoPay: Bool?

    public var bandwidth: Int32?

    public var clientToken: String?

    public var deleteProtection: String?

    public var duration: Int32?

    public var instanceChargeType: String?

    public var internetChargeType: String?

    public var loadBalancerName: String?

    public var loadBalancerSpec: String?

    public var masterZoneId: String?

    public var modificationProtectionReason: String?

    public var modificationProtectionStatus: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var payType: String?

    public var pricingCycle: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var slaveZoneId: String?

    public var tag: [CreateLoadBalancerRequest.Tag]?

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
        if self.address != nil {
            map["Address"] = self.address!
        }
        if self.addressIPVersion != nil {
            map["AddressIPVersion"] = self.addressIPVersion!
        }
        if self.addressType != nil {
            map["AddressType"] = self.addressType!
        }
        if self.autoPay != nil {
            map["AutoPay"] = self.autoPay!
        }
        if self.bandwidth != nil {
            map["Bandwidth"] = self.bandwidth!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.deleteProtection != nil {
            map["DeleteProtection"] = self.deleteProtection!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.instanceChargeType != nil {
            map["InstanceChargeType"] = self.instanceChargeType!
        }
        if self.internetChargeType != nil {
            map["InternetChargeType"] = self.internetChargeType!
        }
        if self.loadBalancerName != nil {
            map["LoadBalancerName"] = self.loadBalancerName!
        }
        if self.loadBalancerSpec != nil {
            map["LoadBalancerSpec"] = self.loadBalancerSpec!
        }
        if self.masterZoneId != nil {
            map["MasterZoneId"] = self.masterZoneId!
        }
        if self.modificationProtectionReason != nil {
            map["ModificationProtectionReason"] = self.modificationProtectionReason!
        }
        if self.modificationProtectionStatus != nil {
            map["ModificationProtectionStatus"] = self.modificationProtectionStatus!
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
        if self.pricingCycle != nil {
            map["PricingCycle"] = self.pricingCycle!
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
        if self.slaveZoneId != nil {
            map["SlaveZoneId"] = self.slaveZoneId!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
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
        if dict.keys.contains("Address") {
            self.address = dict["Address"] as! String
        }
        if dict.keys.contains("AddressIPVersion") {
            self.addressIPVersion = dict["AddressIPVersion"] as! String
        }
        if dict.keys.contains("AddressType") {
            self.addressType = dict["AddressType"] as! String
        }
        if dict.keys.contains("AutoPay") {
            self.autoPay = dict["AutoPay"] as! Bool
        }
        if dict.keys.contains("Bandwidth") {
            self.bandwidth = dict["Bandwidth"] as! Int32
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DeleteProtection") {
            self.deleteProtection = dict["DeleteProtection"] as! String
        }
        if dict.keys.contains("Duration") {
            self.duration = dict["Duration"] as! Int32
        }
        if dict.keys.contains("InstanceChargeType") {
            self.instanceChargeType = dict["InstanceChargeType"] as! String
        }
        if dict.keys.contains("InternetChargeType") {
            self.internetChargeType = dict["InternetChargeType"] as! String
        }
        if dict.keys.contains("LoadBalancerName") {
            self.loadBalancerName = dict["LoadBalancerName"] as! String
        }
        if dict.keys.contains("LoadBalancerSpec") {
            self.loadBalancerSpec = dict["LoadBalancerSpec"] as! String
        }
        if dict.keys.contains("MasterZoneId") {
            self.masterZoneId = dict["MasterZoneId"] as! String
        }
        if dict.keys.contains("ModificationProtectionReason") {
            self.modificationProtectionReason = dict["ModificationProtectionReason"] as! String
        }
        if dict.keys.contains("ModificationProtectionStatus") {
            self.modificationProtectionStatus = dict["ModificationProtectionStatus"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PayType") {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("PricingCycle") {
            self.pricingCycle = dict["PricingCycle"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SlaveZoneId") {
            self.slaveZoneId = dict["SlaveZoneId"] as! String
        }
        if dict.keys.contains("Tag") {
            var tmp : [CreateLoadBalancerRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = CreateLoadBalancerRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("VSwitchId") {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
        }
    }
}

public class CreateLoadBalancerResponseBody : Tea.TeaModel {
    public var address: String?

    public var addressIPVersion: String?

    public var loadBalancerId: String?

    public var loadBalancerName: String?

    public var networkType: String?

    public var orderId: Int64?

    public var requestId: String?

    public var resourceGroupId: String?

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
        if self.address != nil {
            map["Address"] = self.address!
        }
        if self.addressIPVersion != nil {
            map["AddressIPVersion"] = self.addressIPVersion!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.loadBalancerName != nil {
            map["LoadBalancerName"] = self.loadBalancerName!
        }
        if self.networkType != nil {
            map["NetworkType"] = self.networkType!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
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
        if dict.keys.contains("Address") {
            self.address = dict["Address"] as! String
        }
        if dict.keys.contains("AddressIPVersion") {
            self.addressIPVersion = dict["AddressIPVersion"] as! String
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("LoadBalancerName") {
            self.loadBalancerName = dict["LoadBalancerName"] as! String
        }
        if dict.keys.contains("NetworkType") {
            self.networkType = dict["NetworkType"] as! String
        }
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("VSwitchId") {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
        }
    }
}

public class CreateLoadBalancerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateLoadBalancerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateLoadBalancerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateLoadBalancerHTTPListenerRequest : Tea.TeaModel {
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
    public var aclId: String?

    public var aclStatus: String?

    public var aclType: String?

    public var backendServerPort: Int32?

    public var bandwidth: Int32?

    public var cookie: String?

    public var cookieTimeout: Int32?

    public var description_: String?

    public var forwardPort: Int32?

    public var gzip: String?

    public var healthCheck: String?

    public var healthCheckConnectPort: Int32?

    public var healthCheckDomain: String?

    public var healthCheckHttpCode: String?

    public var healthCheckInterval: Int32?

    public var healthCheckMethod: String?

    public var healthCheckTimeout: Int32?

    public var healthCheckURI: String?

    public var healthyThreshold: Int32?

    public var idleTimeout: Int32?

    public var listenerForward: String?

    public var listenerPort: Int32?

    public var loadBalancerId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var requestTimeout: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var scheduler: String?

    public var stickySession: String?

    public var stickySessionType: String?

    public var tag: [CreateLoadBalancerHTTPListenerRequest.Tag]?

    public var unhealthyThreshold: Int32?

    public var VServerGroupId: String?

    public var XForwardedFor: String?

    public var XForwardedFor_ClientSrcPort: String?

    public var XForwardedFor_SLBID: String?

    public var XForwardedFor_SLBIP: String?

    public var XForwardedFor_SLBPORT: String?

    public var XForwardedFor_proto: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclId != nil {
            map["AclId"] = self.aclId!
        }
        if self.aclStatus != nil {
            map["AclStatus"] = self.aclStatus!
        }
        if self.aclType != nil {
            map["AclType"] = self.aclType!
        }
        if self.backendServerPort != nil {
            map["BackendServerPort"] = self.backendServerPort!
        }
        if self.bandwidth != nil {
            map["Bandwidth"] = self.bandwidth!
        }
        if self.cookie != nil {
            map["Cookie"] = self.cookie!
        }
        if self.cookieTimeout != nil {
            map["CookieTimeout"] = self.cookieTimeout!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.forwardPort != nil {
            map["ForwardPort"] = self.forwardPort!
        }
        if self.gzip != nil {
            map["Gzip"] = self.gzip!
        }
        if self.healthCheck != nil {
            map["HealthCheck"] = self.healthCheck!
        }
        if self.healthCheckConnectPort != nil {
            map["HealthCheckConnectPort"] = self.healthCheckConnectPort!
        }
        if self.healthCheckDomain != nil {
            map["HealthCheckDomain"] = self.healthCheckDomain!
        }
        if self.healthCheckHttpCode != nil {
            map["HealthCheckHttpCode"] = self.healthCheckHttpCode!
        }
        if self.healthCheckInterval != nil {
            map["HealthCheckInterval"] = self.healthCheckInterval!
        }
        if self.healthCheckMethod != nil {
            map["HealthCheckMethod"] = self.healthCheckMethod!
        }
        if self.healthCheckTimeout != nil {
            map["HealthCheckTimeout"] = self.healthCheckTimeout!
        }
        if self.healthCheckURI != nil {
            map["HealthCheckURI"] = self.healthCheckURI!
        }
        if self.healthyThreshold != nil {
            map["HealthyThreshold"] = self.healthyThreshold!
        }
        if self.idleTimeout != nil {
            map["IdleTimeout"] = self.idleTimeout!
        }
        if self.listenerForward != nil {
            map["ListenerForward"] = self.listenerForward!
        }
        if self.listenerPort != nil {
            map["ListenerPort"] = self.listenerPort!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
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
        if self.requestTimeout != nil {
            map["RequestTimeout"] = self.requestTimeout!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.scheduler != nil {
            map["Scheduler"] = self.scheduler!
        }
        if self.stickySession != nil {
            map["StickySession"] = self.stickySession!
        }
        if self.stickySessionType != nil {
            map["StickySessionType"] = self.stickySessionType!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.unhealthyThreshold != nil {
            map["UnhealthyThreshold"] = self.unhealthyThreshold!
        }
        if self.VServerGroupId != nil {
            map["VServerGroupId"] = self.VServerGroupId!
        }
        if self.XForwardedFor != nil {
            map["XForwardedFor"] = self.XForwardedFor!
        }
        if self.XForwardedFor_ClientSrcPort != nil {
            map["XForwardedFor_ClientSrcPort"] = self.XForwardedFor_ClientSrcPort!
        }
        if self.XForwardedFor_SLBID != nil {
            map["XForwardedFor_SLBID"] = self.XForwardedFor_SLBID!
        }
        if self.XForwardedFor_SLBIP != nil {
            map["XForwardedFor_SLBIP"] = self.XForwardedFor_SLBIP!
        }
        if self.XForwardedFor_SLBPORT != nil {
            map["XForwardedFor_SLBPORT"] = self.XForwardedFor_SLBPORT!
        }
        if self.XForwardedFor_proto != nil {
            map["XForwardedFor_proto"] = self.XForwardedFor_proto!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclId") {
            self.aclId = dict["AclId"] as! String
        }
        if dict.keys.contains("AclStatus") {
            self.aclStatus = dict["AclStatus"] as! String
        }
        if dict.keys.contains("AclType") {
            self.aclType = dict["AclType"] as! String
        }
        if dict.keys.contains("BackendServerPort") {
            self.backendServerPort = dict["BackendServerPort"] as! Int32
        }
        if dict.keys.contains("Bandwidth") {
            self.bandwidth = dict["Bandwidth"] as! Int32
        }
        if dict.keys.contains("Cookie") {
            self.cookie = dict["Cookie"] as! String
        }
        if dict.keys.contains("CookieTimeout") {
            self.cookieTimeout = dict["CookieTimeout"] as! Int32
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ForwardPort") {
            self.forwardPort = dict["ForwardPort"] as! Int32
        }
        if dict.keys.contains("Gzip") {
            self.gzip = dict["Gzip"] as! String
        }
        if dict.keys.contains("HealthCheck") {
            self.healthCheck = dict["HealthCheck"] as! String
        }
        if dict.keys.contains("HealthCheckConnectPort") {
            self.healthCheckConnectPort = dict["HealthCheckConnectPort"] as! Int32
        }
        if dict.keys.contains("HealthCheckDomain") {
            self.healthCheckDomain = dict["HealthCheckDomain"] as! String
        }
        if dict.keys.contains("HealthCheckHttpCode") {
            self.healthCheckHttpCode = dict["HealthCheckHttpCode"] as! String
        }
        if dict.keys.contains("HealthCheckInterval") {
            self.healthCheckInterval = dict["HealthCheckInterval"] as! Int32
        }
        if dict.keys.contains("HealthCheckMethod") {
            self.healthCheckMethod = dict["HealthCheckMethod"] as! String
        }
        if dict.keys.contains("HealthCheckTimeout") {
            self.healthCheckTimeout = dict["HealthCheckTimeout"] as! Int32
        }
        if dict.keys.contains("HealthCheckURI") {
            self.healthCheckURI = dict["HealthCheckURI"] as! String
        }
        if dict.keys.contains("HealthyThreshold") {
            self.healthyThreshold = dict["HealthyThreshold"] as! Int32
        }
        if dict.keys.contains("IdleTimeout") {
            self.idleTimeout = dict["IdleTimeout"] as! Int32
        }
        if dict.keys.contains("ListenerForward") {
            self.listenerForward = dict["ListenerForward"] as! String
        }
        if dict.keys.contains("ListenerPort") {
            self.listenerPort = dict["ListenerPort"] as! Int32
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
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
        if dict.keys.contains("RequestTimeout") {
            self.requestTimeout = dict["RequestTimeout"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Scheduler") {
            self.scheduler = dict["Scheduler"] as! String
        }
        if dict.keys.contains("StickySession") {
            self.stickySession = dict["StickySession"] as! String
        }
        if dict.keys.contains("StickySessionType") {
            self.stickySessionType = dict["StickySessionType"] as! String
        }
        if dict.keys.contains("Tag") {
            var tmp : [CreateLoadBalancerHTTPListenerRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = CreateLoadBalancerHTTPListenerRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("UnhealthyThreshold") {
            self.unhealthyThreshold = dict["UnhealthyThreshold"] as! Int32
        }
        if dict.keys.contains("VServerGroupId") {
            self.VServerGroupId = dict["VServerGroupId"] as! String
        }
        if dict.keys.contains("XForwardedFor") {
            self.XForwardedFor = dict["XForwardedFor"] as! String
        }
        if dict.keys.contains("XForwardedFor_ClientSrcPort") {
            self.XForwardedFor_ClientSrcPort = dict["XForwardedFor_ClientSrcPort"] as! String
        }
        if dict.keys.contains("XForwardedFor_SLBID") {
            self.XForwardedFor_SLBID = dict["XForwardedFor_SLBID"] as! String
        }
        if dict.keys.contains("XForwardedFor_SLBIP") {
            self.XForwardedFor_SLBIP = dict["XForwardedFor_SLBIP"] as! String
        }
        if dict.keys.contains("XForwardedFor_SLBPORT") {
            self.XForwardedFor_SLBPORT = dict["XForwardedFor_SLBPORT"] as! String
        }
        if dict.keys.contains("XForwardedFor_proto") {
            self.XForwardedFor_proto = dict["XForwardedFor_proto"] as! String
        }
    }
}

public class CreateLoadBalancerHTTPListenerResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class CreateLoadBalancerHTTPListenerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateLoadBalancerHTTPListenerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateLoadBalancerHTTPListenerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateLoadBalancerHTTPSListenerRequest : Tea.TeaModel {
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
    public var aclId: String?

    public var aclStatus: String?

    public var aclType: String?

    public var backendServerPort: Int32?

    public var bandwidth: Int32?

    public var CACertificateId: String?

    public var cookie: String?

    public var cookieTimeout: Int32?

    public var description_: String?

    public var enableHttp2: String?

    public var gzip: String?

    public var healthCheck: String?

    public var healthCheckConnectPort: Int32?

    public var healthCheckDomain: String?

    public var healthCheckHttpCode: String?

    public var healthCheckInterval: Int32?

    public var healthCheckMethod: String?

    public var healthCheckTimeout: Int32?

    public var healthCheckURI: String?

    public var healthyThreshold: Int32?

    public var idleTimeout: Int32?

    public var listenerPort: Int32?

    public var loadBalancerId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var requestTimeout: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var scheduler: String?

    public var serverCertificateId: String?

    public var stickySession: String?

    public var stickySessionType: String?

    public var TLSCipherPolicy: String?

    public var tag: [CreateLoadBalancerHTTPSListenerRequest.Tag]?

    public var unhealthyThreshold: Int32?

    public var VServerGroupId: String?

    public var XForwardedFor: String?

    public var XForwardedFor_ClientSrcPort: String?

    public var XForwardedFor_SLBID: String?

    public var XForwardedFor_SLBIP: String?

    public var XForwardedFor_SLBPORT: String?

    public var XForwardedFor_proto: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclId != nil {
            map["AclId"] = self.aclId!
        }
        if self.aclStatus != nil {
            map["AclStatus"] = self.aclStatus!
        }
        if self.aclType != nil {
            map["AclType"] = self.aclType!
        }
        if self.backendServerPort != nil {
            map["BackendServerPort"] = self.backendServerPort!
        }
        if self.bandwidth != nil {
            map["Bandwidth"] = self.bandwidth!
        }
        if self.CACertificateId != nil {
            map["CACertificateId"] = self.CACertificateId!
        }
        if self.cookie != nil {
            map["Cookie"] = self.cookie!
        }
        if self.cookieTimeout != nil {
            map["CookieTimeout"] = self.cookieTimeout!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.enableHttp2 != nil {
            map["EnableHttp2"] = self.enableHttp2!
        }
        if self.gzip != nil {
            map["Gzip"] = self.gzip!
        }
        if self.healthCheck != nil {
            map["HealthCheck"] = self.healthCheck!
        }
        if self.healthCheckConnectPort != nil {
            map["HealthCheckConnectPort"] = self.healthCheckConnectPort!
        }
        if self.healthCheckDomain != nil {
            map["HealthCheckDomain"] = self.healthCheckDomain!
        }
        if self.healthCheckHttpCode != nil {
            map["HealthCheckHttpCode"] = self.healthCheckHttpCode!
        }
        if self.healthCheckInterval != nil {
            map["HealthCheckInterval"] = self.healthCheckInterval!
        }
        if self.healthCheckMethod != nil {
            map["HealthCheckMethod"] = self.healthCheckMethod!
        }
        if self.healthCheckTimeout != nil {
            map["HealthCheckTimeout"] = self.healthCheckTimeout!
        }
        if self.healthCheckURI != nil {
            map["HealthCheckURI"] = self.healthCheckURI!
        }
        if self.healthyThreshold != nil {
            map["HealthyThreshold"] = self.healthyThreshold!
        }
        if self.idleTimeout != nil {
            map["IdleTimeout"] = self.idleTimeout!
        }
        if self.listenerPort != nil {
            map["ListenerPort"] = self.listenerPort!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
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
        if self.requestTimeout != nil {
            map["RequestTimeout"] = self.requestTimeout!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.scheduler != nil {
            map["Scheduler"] = self.scheduler!
        }
        if self.serverCertificateId != nil {
            map["ServerCertificateId"] = self.serverCertificateId!
        }
        if self.stickySession != nil {
            map["StickySession"] = self.stickySession!
        }
        if self.stickySessionType != nil {
            map["StickySessionType"] = self.stickySessionType!
        }
        if self.TLSCipherPolicy != nil {
            map["TLSCipherPolicy"] = self.TLSCipherPolicy!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.unhealthyThreshold != nil {
            map["UnhealthyThreshold"] = self.unhealthyThreshold!
        }
        if self.VServerGroupId != nil {
            map["VServerGroupId"] = self.VServerGroupId!
        }
        if self.XForwardedFor != nil {
            map["XForwardedFor"] = self.XForwardedFor!
        }
        if self.XForwardedFor_ClientSrcPort != nil {
            map["XForwardedFor_ClientSrcPort"] = self.XForwardedFor_ClientSrcPort!
        }
        if self.XForwardedFor_SLBID != nil {
            map["XForwardedFor_SLBID"] = self.XForwardedFor_SLBID!
        }
        if self.XForwardedFor_SLBIP != nil {
            map["XForwardedFor_SLBIP"] = self.XForwardedFor_SLBIP!
        }
        if self.XForwardedFor_SLBPORT != nil {
            map["XForwardedFor_SLBPORT"] = self.XForwardedFor_SLBPORT!
        }
        if self.XForwardedFor_proto != nil {
            map["XForwardedFor_proto"] = self.XForwardedFor_proto!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclId") {
            self.aclId = dict["AclId"] as! String
        }
        if dict.keys.contains("AclStatus") {
            self.aclStatus = dict["AclStatus"] as! String
        }
        if dict.keys.contains("AclType") {
            self.aclType = dict["AclType"] as! String
        }
        if dict.keys.contains("BackendServerPort") {
            self.backendServerPort = dict["BackendServerPort"] as! Int32
        }
        if dict.keys.contains("Bandwidth") {
            self.bandwidth = dict["Bandwidth"] as! Int32
        }
        if dict.keys.contains("CACertificateId") {
            self.CACertificateId = dict["CACertificateId"] as! String
        }
        if dict.keys.contains("Cookie") {
            self.cookie = dict["Cookie"] as! String
        }
        if dict.keys.contains("CookieTimeout") {
            self.cookieTimeout = dict["CookieTimeout"] as! Int32
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EnableHttp2") {
            self.enableHttp2 = dict["EnableHttp2"] as! String
        }
        if dict.keys.contains("Gzip") {
            self.gzip = dict["Gzip"] as! String
        }
        if dict.keys.contains("HealthCheck") {
            self.healthCheck = dict["HealthCheck"] as! String
        }
        if dict.keys.contains("HealthCheckConnectPort") {
            self.healthCheckConnectPort = dict["HealthCheckConnectPort"] as! Int32
        }
        if dict.keys.contains("HealthCheckDomain") {
            self.healthCheckDomain = dict["HealthCheckDomain"] as! String
        }
        if dict.keys.contains("HealthCheckHttpCode") {
            self.healthCheckHttpCode = dict["HealthCheckHttpCode"] as! String
        }
        if dict.keys.contains("HealthCheckInterval") {
            self.healthCheckInterval = dict["HealthCheckInterval"] as! Int32
        }
        if dict.keys.contains("HealthCheckMethod") {
            self.healthCheckMethod = dict["HealthCheckMethod"] as! String
        }
        if dict.keys.contains("HealthCheckTimeout") {
            self.healthCheckTimeout = dict["HealthCheckTimeout"] as! Int32
        }
        if dict.keys.contains("HealthCheckURI") {
            self.healthCheckURI = dict["HealthCheckURI"] as! String
        }
        if dict.keys.contains("HealthyThreshold") {
            self.healthyThreshold = dict["HealthyThreshold"] as! Int32
        }
        if dict.keys.contains("IdleTimeout") {
            self.idleTimeout = dict["IdleTimeout"] as! Int32
        }
        if dict.keys.contains("ListenerPort") {
            self.listenerPort = dict["ListenerPort"] as! Int32
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
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
        if dict.keys.contains("RequestTimeout") {
            self.requestTimeout = dict["RequestTimeout"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Scheduler") {
            self.scheduler = dict["Scheduler"] as! String
        }
        if dict.keys.contains("ServerCertificateId") {
            self.serverCertificateId = dict["ServerCertificateId"] as! String
        }
        if dict.keys.contains("StickySession") {
            self.stickySession = dict["StickySession"] as! String
        }
        if dict.keys.contains("StickySessionType") {
            self.stickySessionType = dict["StickySessionType"] as! String
        }
        if dict.keys.contains("TLSCipherPolicy") {
            self.TLSCipherPolicy = dict["TLSCipherPolicy"] as! String
        }
        if dict.keys.contains("Tag") {
            var tmp : [CreateLoadBalancerHTTPSListenerRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = CreateLoadBalancerHTTPSListenerRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("UnhealthyThreshold") {
            self.unhealthyThreshold = dict["UnhealthyThreshold"] as! Int32
        }
        if dict.keys.contains("VServerGroupId") {
            self.VServerGroupId = dict["VServerGroupId"] as! String
        }
        if dict.keys.contains("XForwardedFor") {
            self.XForwardedFor = dict["XForwardedFor"] as! String
        }
        if dict.keys.contains("XForwardedFor_ClientSrcPort") {
            self.XForwardedFor_ClientSrcPort = dict["XForwardedFor_ClientSrcPort"] as! String
        }
        if dict.keys.contains("XForwardedFor_SLBID") {
            self.XForwardedFor_SLBID = dict["XForwardedFor_SLBID"] as! String
        }
        if dict.keys.contains("XForwardedFor_SLBIP") {
            self.XForwardedFor_SLBIP = dict["XForwardedFor_SLBIP"] as! String
        }
        if dict.keys.contains("XForwardedFor_SLBPORT") {
            self.XForwardedFor_SLBPORT = dict["XForwardedFor_SLBPORT"] as! String
        }
        if dict.keys.contains("XForwardedFor_proto") {
            self.XForwardedFor_proto = dict["XForwardedFor_proto"] as! String
        }
    }
}

public class CreateLoadBalancerHTTPSListenerResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class CreateLoadBalancerHTTPSListenerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateLoadBalancerHTTPSListenerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateLoadBalancerHTTPSListenerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateLoadBalancerTCPListenerRequest : Tea.TeaModel {
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
    public var aclId: String?

    public var aclStatus: String?

    public var aclType: String?

    public var backendServerPort: Int32?

    public var bandwidth: Int32?

    public var connectionDrain: String?

    public var connectionDrainTimeout: Int32?

    public var description_: String?

    public var establishedTimeout: Int32?

    public var healthCheckConnectPort: Int32?

    public var healthCheckConnectTimeout: Int32?

    public var healthCheckDomain: String?

    public var healthCheckHttpCode: String?

    public var healthCheckSwitch: String?

    public var healthCheckType: String?

    public var healthCheckURI: String?

    public var healthyThreshold: Int32?

    public var listenerPort: Int32?

    public var loadBalancerId: String?

    public var masterSlaveServerGroupId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var persistenceTimeout: Int32?

    public var proxyProtocolV2Enabled: Bool?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var scheduler: String?

    public var tag: [CreateLoadBalancerTCPListenerRequest.Tag]?

    public var unhealthyThreshold: Int32?

    public var VServerGroupId: String?

    public var healthCheckInterval: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclId != nil {
            map["AclId"] = self.aclId!
        }
        if self.aclStatus != nil {
            map["AclStatus"] = self.aclStatus!
        }
        if self.aclType != nil {
            map["AclType"] = self.aclType!
        }
        if self.backendServerPort != nil {
            map["BackendServerPort"] = self.backendServerPort!
        }
        if self.bandwidth != nil {
            map["Bandwidth"] = self.bandwidth!
        }
        if self.connectionDrain != nil {
            map["ConnectionDrain"] = self.connectionDrain!
        }
        if self.connectionDrainTimeout != nil {
            map["ConnectionDrainTimeout"] = self.connectionDrainTimeout!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.establishedTimeout != nil {
            map["EstablishedTimeout"] = self.establishedTimeout!
        }
        if self.healthCheckConnectPort != nil {
            map["HealthCheckConnectPort"] = self.healthCheckConnectPort!
        }
        if self.healthCheckConnectTimeout != nil {
            map["HealthCheckConnectTimeout"] = self.healthCheckConnectTimeout!
        }
        if self.healthCheckDomain != nil {
            map["HealthCheckDomain"] = self.healthCheckDomain!
        }
        if self.healthCheckHttpCode != nil {
            map["HealthCheckHttpCode"] = self.healthCheckHttpCode!
        }
        if self.healthCheckSwitch != nil {
            map["HealthCheckSwitch"] = self.healthCheckSwitch!
        }
        if self.healthCheckType != nil {
            map["HealthCheckType"] = self.healthCheckType!
        }
        if self.healthCheckURI != nil {
            map["HealthCheckURI"] = self.healthCheckURI!
        }
        if self.healthyThreshold != nil {
            map["HealthyThreshold"] = self.healthyThreshold!
        }
        if self.listenerPort != nil {
            map["ListenerPort"] = self.listenerPort!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.masterSlaveServerGroupId != nil {
            map["MasterSlaveServerGroupId"] = self.masterSlaveServerGroupId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.persistenceTimeout != nil {
            map["PersistenceTimeout"] = self.persistenceTimeout!
        }
        if self.proxyProtocolV2Enabled != nil {
            map["ProxyProtocolV2Enabled"] = self.proxyProtocolV2Enabled!
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
        if self.scheduler != nil {
            map["Scheduler"] = self.scheduler!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.unhealthyThreshold != nil {
            map["UnhealthyThreshold"] = self.unhealthyThreshold!
        }
        if self.VServerGroupId != nil {
            map["VServerGroupId"] = self.VServerGroupId!
        }
        if self.healthCheckInterval != nil {
            map["healthCheckInterval"] = self.healthCheckInterval!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclId") {
            self.aclId = dict["AclId"] as! String
        }
        if dict.keys.contains("AclStatus") {
            self.aclStatus = dict["AclStatus"] as! String
        }
        if dict.keys.contains("AclType") {
            self.aclType = dict["AclType"] as! String
        }
        if dict.keys.contains("BackendServerPort") {
            self.backendServerPort = dict["BackendServerPort"] as! Int32
        }
        if dict.keys.contains("Bandwidth") {
            self.bandwidth = dict["Bandwidth"] as! Int32
        }
        if dict.keys.contains("ConnectionDrain") {
            self.connectionDrain = dict["ConnectionDrain"] as! String
        }
        if dict.keys.contains("ConnectionDrainTimeout") {
            self.connectionDrainTimeout = dict["ConnectionDrainTimeout"] as! Int32
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EstablishedTimeout") {
            self.establishedTimeout = dict["EstablishedTimeout"] as! Int32
        }
        if dict.keys.contains("HealthCheckConnectPort") {
            self.healthCheckConnectPort = dict["HealthCheckConnectPort"] as! Int32
        }
        if dict.keys.contains("HealthCheckConnectTimeout") {
            self.healthCheckConnectTimeout = dict["HealthCheckConnectTimeout"] as! Int32
        }
        if dict.keys.contains("HealthCheckDomain") {
            self.healthCheckDomain = dict["HealthCheckDomain"] as! String
        }
        if dict.keys.contains("HealthCheckHttpCode") {
            self.healthCheckHttpCode = dict["HealthCheckHttpCode"] as! String
        }
        if dict.keys.contains("HealthCheckSwitch") {
            self.healthCheckSwitch = dict["HealthCheckSwitch"] as! String
        }
        if dict.keys.contains("HealthCheckType") {
            self.healthCheckType = dict["HealthCheckType"] as! String
        }
        if dict.keys.contains("HealthCheckURI") {
            self.healthCheckURI = dict["HealthCheckURI"] as! String
        }
        if dict.keys.contains("HealthyThreshold") {
            self.healthyThreshold = dict["HealthyThreshold"] as! Int32
        }
        if dict.keys.contains("ListenerPort") {
            self.listenerPort = dict["ListenerPort"] as! Int32
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("MasterSlaveServerGroupId") {
            self.masterSlaveServerGroupId = dict["MasterSlaveServerGroupId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PersistenceTimeout") {
            self.persistenceTimeout = dict["PersistenceTimeout"] as! Int32
        }
        if dict.keys.contains("ProxyProtocolV2Enabled") {
            self.proxyProtocolV2Enabled = dict["ProxyProtocolV2Enabled"] as! Bool
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
        if dict.keys.contains("Scheduler") {
            self.scheduler = dict["Scheduler"] as! String
        }
        if dict.keys.contains("Tag") {
            var tmp : [CreateLoadBalancerTCPListenerRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = CreateLoadBalancerTCPListenerRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("UnhealthyThreshold") {
            self.unhealthyThreshold = dict["UnhealthyThreshold"] as! Int32
        }
        if dict.keys.contains("VServerGroupId") {
            self.VServerGroupId = dict["VServerGroupId"] as! String
        }
        if dict.keys.contains("healthCheckInterval") {
            self.healthCheckInterval = dict["healthCheckInterval"] as! Int32
        }
    }
}

public class CreateLoadBalancerTCPListenerResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class CreateLoadBalancerTCPListenerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateLoadBalancerTCPListenerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateLoadBalancerTCPListenerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateLoadBalancerUDPListenerRequest : Tea.TeaModel {
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
    public var aclId: String?

    public var aclStatus: String?

    public var aclType: String?

    public var backendServerPort: Int32?

    public var bandwidth: Int32?

    public var description_: String?

    public var healthCheckConnectPort: Int32?

    public var healthCheckConnectTimeout: Int32?

    public var healthCheckSwitch: String?

    public var healthyThreshold: Int32?

    public var listenerPort: Int32?

    public var loadBalancerId: String?

    public var masterSlaveServerGroupId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var proxyProtocolV2Enabled: Bool?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var scheduler: String?

    public var tag: [CreateLoadBalancerUDPListenerRequest.Tag]?

    public var unhealthyThreshold: Int32?

    public var VServerGroupId: String?

    public var healthCheckExp: String?

    public var healthCheckInterval: Int32?

    public var healthCheckReq: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclId != nil {
            map["AclId"] = self.aclId!
        }
        if self.aclStatus != nil {
            map["AclStatus"] = self.aclStatus!
        }
        if self.aclType != nil {
            map["AclType"] = self.aclType!
        }
        if self.backendServerPort != nil {
            map["BackendServerPort"] = self.backendServerPort!
        }
        if self.bandwidth != nil {
            map["Bandwidth"] = self.bandwidth!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.healthCheckConnectPort != nil {
            map["HealthCheckConnectPort"] = self.healthCheckConnectPort!
        }
        if self.healthCheckConnectTimeout != nil {
            map["HealthCheckConnectTimeout"] = self.healthCheckConnectTimeout!
        }
        if self.healthCheckSwitch != nil {
            map["HealthCheckSwitch"] = self.healthCheckSwitch!
        }
        if self.healthyThreshold != nil {
            map["HealthyThreshold"] = self.healthyThreshold!
        }
        if self.listenerPort != nil {
            map["ListenerPort"] = self.listenerPort!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.masterSlaveServerGroupId != nil {
            map["MasterSlaveServerGroupId"] = self.masterSlaveServerGroupId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.proxyProtocolV2Enabled != nil {
            map["ProxyProtocolV2Enabled"] = self.proxyProtocolV2Enabled!
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
        if self.scheduler != nil {
            map["Scheduler"] = self.scheduler!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.unhealthyThreshold != nil {
            map["UnhealthyThreshold"] = self.unhealthyThreshold!
        }
        if self.VServerGroupId != nil {
            map["VServerGroupId"] = self.VServerGroupId!
        }
        if self.healthCheckExp != nil {
            map["healthCheckExp"] = self.healthCheckExp!
        }
        if self.healthCheckInterval != nil {
            map["healthCheckInterval"] = self.healthCheckInterval!
        }
        if self.healthCheckReq != nil {
            map["healthCheckReq"] = self.healthCheckReq!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclId") {
            self.aclId = dict["AclId"] as! String
        }
        if dict.keys.contains("AclStatus") {
            self.aclStatus = dict["AclStatus"] as! String
        }
        if dict.keys.contains("AclType") {
            self.aclType = dict["AclType"] as! String
        }
        if dict.keys.contains("BackendServerPort") {
            self.backendServerPort = dict["BackendServerPort"] as! Int32
        }
        if dict.keys.contains("Bandwidth") {
            self.bandwidth = dict["Bandwidth"] as! Int32
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("HealthCheckConnectPort") {
            self.healthCheckConnectPort = dict["HealthCheckConnectPort"] as! Int32
        }
        if dict.keys.contains("HealthCheckConnectTimeout") {
            self.healthCheckConnectTimeout = dict["HealthCheckConnectTimeout"] as! Int32
        }
        if dict.keys.contains("HealthCheckSwitch") {
            self.healthCheckSwitch = dict["HealthCheckSwitch"] as! String
        }
        if dict.keys.contains("HealthyThreshold") {
            self.healthyThreshold = dict["HealthyThreshold"] as! Int32
        }
        if dict.keys.contains("ListenerPort") {
            self.listenerPort = dict["ListenerPort"] as! Int32
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("MasterSlaveServerGroupId") {
            self.masterSlaveServerGroupId = dict["MasterSlaveServerGroupId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProxyProtocolV2Enabled") {
            self.proxyProtocolV2Enabled = dict["ProxyProtocolV2Enabled"] as! Bool
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
        if dict.keys.contains("Scheduler") {
            self.scheduler = dict["Scheduler"] as! String
        }
        if dict.keys.contains("Tag") {
            var tmp : [CreateLoadBalancerUDPListenerRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = CreateLoadBalancerUDPListenerRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("UnhealthyThreshold") {
            self.unhealthyThreshold = dict["UnhealthyThreshold"] as! Int32
        }
        if dict.keys.contains("VServerGroupId") {
            self.VServerGroupId = dict["VServerGroupId"] as! String
        }
        if dict.keys.contains("healthCheckExp") {
            self.healthCheckExp = dict["healthCheckExp"] as! String
        }
        if dict.keys.contains("healthCheckInterval") {
            self.healthCheckInterval = dict["healthCheckInterval"] as! Int32
        }
        if dict.keys.contains("healthCheckReq") {
            self.healthCheckReq = dict["healthCheckReq"] as! String
        }
    }
}

public class CreateLoadBalancerUDPListenerResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class CreateLoadBalancerUDPListenerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateLoadBalancerUDPListenerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateLoadBalancerUDPListenerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateMasterSlaveServerGroupRequest : Tea.TeaModel {
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
    public var loadBalancerId: String?

    public var masterSlaveBackendServers: String?

    public var masterSlaveServerGroupName: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tag: [CreateMasterSlaveServerGroupRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.masterSlaveBackendServers != nil {
            map["MasterSlaveBackendServers"] = self.masterSlaveBackendServers!
        }
        if self.masterSlaveServerGroupName != nil {
            map["MasterSlaveServerGroupName"] = self.masterSlaveServerGroupName!
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
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("MasterSlaveBackendServers") {
            self.masterSlaveBackendServers = dict["MasterSlaveBackendServers"] as! String
        }
        if dict.keys.contains("MasterSlaveServerGroupName") {
            self.masterSlaveServerGroupName = dict["MasterSlaveServerGroupName"] as! String
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
        if dict.keys.contains("Tag") {
            var tmp : [CreateMasterSlaveServerGroupRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = CreateMasterSlaveServerGroupRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class CreateMasterSlaveServerGroupResponseBody : Tea.TeaModel {
    public class MasterSlaveBackendServers : Tea.TeaModel {
        public class MasterSlaveBackendServer : Tea.TeaModel {
            public var description_: String?

            public var port: Int32?

            public var serverId: String?

            public var serverType: String?

            public var type: String?

            public var weight: Int32?

            public override init() {
                super.init()
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
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.serverId != nil {
                    map["ServerId"] = self.serverId!
                }
                if self.serverType != nil {
                    map["ServerType"] = self.serverType!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.weight != nil {
                    map["Weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Port") {
                    self.port = dict["Port"] as! Int32
                }
                if dict.keys.contains("ServerId") {
                    self.serverId = dict["ServerId"] as! String
                }
                if dict.keys.contains("ServerType") {
                    self.serverType = dict["ServerType"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Weight") {
                    self.weight = dict["Weight"] as! Int32
                }
            }
        }
        public var masterSlaveBackendServer: [CreateMasterSlaveServerGroupResponseBody.MasterSlaveBackendServers.MasterSlaveBackendServer]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.masterSlaveBackendServer != nil {
                var tmp : [Any] = []
                for k in self.masterSlaveBackendServer! {
                    tmp.append(k.toMap())
                }
                map["MasterSlaveBackendServer"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MasterSlaveBackendServer") {
                var tmp : [CreateMasterSlaveServerGroupResponseBody.MasterSlaveBackendServers.MasterSlaveBackendServer] = []
                for v in dict["MasterSlaveBackendServer"] as! [Any] {
                    var model = CreateMasterSlaveServerGroupResponseBody.MasterSlaveBackendServers.MasterSlaveBackendServer()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.masterSlaveBackendServer = tmp
            }
        }
    }
    public var masterSlaveBackendServers: CreateMasterSlaveServerGroupResponseBody.MasterSlaveBackendServers?

    public var masterSlaveServerGroupId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.masterSlaveBackendServers?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.masterSlaveBackendServers != nil {
            map["MasterSlaveBackendServers"] = self.masterSlaveBackendServers?.toMap()
        }
        if self.masterSlaveServerGroupId != nil {
            map["MasterSlaveServerGroupId"] = self.masterSlaveServerGroupId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MasterSlaveBackendServers") {
            var model = CreateMasterSlaveServerGroupResponseBody.MasterSlaveBackendServers()
            model.fromMap(dict["MasterSlaveBackendServers"] as! [String: Any])
            self.masterSlaveBackendServers = model
        }
        if dict.keys.contains("MasterSlaveServerGroupId") {
            self.masterSlaveServerGroupId = dict["MasterSlaveServerGroupId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateMasterSlaveServerGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMasterSlaveServerGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateMasterSlaveServerGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateRulesRequest : Tea.TeaModel {
    public var listenerPort: Int32?

    public var listenerProtocol: String?

    public var loadBalancerId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var ruleList: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.listenerPort != nil {
            map["ListenerPort"] = self.listenerPort!
        }
        if self.listenerProtocol != nil {
            map["ListenerProtocol"] = self.listenerProtocol!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
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
        if self.ruleList != nil {
            map["RuleList"] = self.ruleList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ListenerPort") {
            self.listenerPort = dict["ListenerPort"] as! Int32
        }
        if dict.keys.contains("ListenerProtocol") {
            self.listenerProtocol = dict["ListenerProtocol"] as! String
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
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
        if dict.keys.contains("RuleList") {
            self.ruleList = dict["RuleList"] as! String
        }
    }
}

public class CreateRulesResponseBody : Tea.TeaModel {
    public class Rules : Tea.TeaModel {
        public class Rule : Tea.TeaModel {
            public var ruleId: String?

            public var ruleName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ruleId != nil {
                    map["RuleId"] = self.ruleId!
                }
                if self.ruleName != nil {
                    map["RuleName"] = self.ruleName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RuleId") {
                    self.ruleId = dict["RuleId"] as! String
                }
                if dict.keys.contains("RuleName") {
                    self.ruleName = dict["RuleName"] as! String
                }
            }
        }
        public var rule: [CreateRulesResponseBody.Rules.Rule]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.rule != nil {
                var tmp : [Any] = []
                for k in self.rule! {
                    tmp.append(k.toMap())
                }
                map["Rule"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Rule") {
                var tmp : [CreateRulesResponseBody.Rules.Rule] = []
                for v in dict["Rule"] as! [Any] {
                    var model = CreateRulesResponseBody.Rules.Rule()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.rule = tmp
            }
        }
    }
    public var requestId: String?

    public var rules: CreateRulesResponseBody.Rules?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.rules?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rules != nil {
            map["Rules"] = self.rules?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Rules") {
            var model = CreateRulesResponseBody.Rules()
            model.fromMap(dict["Rules"] as! [String: Any])
            self.rules = model
        }
    }
}

public class CreateRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRulesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTLSCipherPolicyRequest : Tea.TeaModel {
    public var ciphers: [String]?

    public var name: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var TLSVersions: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ciphers != nil {
            map["Ciphers"] = self.ciphers!
        }
        if self.name != nil {
            map["Name"] = self.name!
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
        if self.TLSVersions != nil {
            map["TLSVersions"] = self.TLSVersions!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ciphers") {
            self.ciphers = dict["Ciphers"] as! [String]
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
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
        if dict.keys.contains("TLSVersions") {
            self.TLSVersions = dict["TLSVersions"] as! [String]
        }
    }
}

public class CreateTLSCipherPolicyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var TLSCipherPolicyId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.TLSCipherPolicyId != nil {
            map["TLSCipherPolicyId"] = self.TLSCipherPolicyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TLSCipherPolicyId") {
            self.TLSCipherPolicyId = dict["TLSCipherPolicyId"] as! String
        }
    }
}

public class CreateTLSCipherPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTLSCipherPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateTLSCipherPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateVServerGroupRequest : Tea.TeaModel {
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
    public var backendServers: String?

    public var loadBalancerId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tag: [CreateVServerGroupRequest.Tag]?

    public var VServerGroupName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backendServers != nil {
            map["BackendServers"] = self.backendServers!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
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
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.VServerGroupName != nil {
            map["VServerGroupName"] = self.VServerGroupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackendServers") {
            self.backendServers = dict["BackendServers"] as! String
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
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
        if dict.keys.contains("Tag") {
            var tmp : [CreateVServerGroupRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = CreateVServerGroupRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("VServerGroupName") {
            self.VServerGroupName = dict["VServerGroupName"] as! String
        }
    }
}

public class CreateVServerGroupResponseBody : Tea.TeaModel {
    public class BackendServers : Tea.TeaModel {
        public class BackendServer : Tea.TeaModel {
            public var description_: String?

            public var port: Int32?

            public var serverId: String?

            public var type: String?

            public var weight: Int32?

            public override init() {
                super.init()
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
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.serverId != nil {
                    map["ServerId"] = self.serverId!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.weight != nil {
                    map["Weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Port") {
                    self.port = dict["Port"] as! Int32
                }
                if dict.keys.contains("ServerId") {
                    self.serverId = dict["ServerId"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Weight") {
                    self.weight = dict["Weight"] as! Int32
                }
            }
        }
        public var backendServer: [CreateVServerGroupResponseBody.BackendServers.BackendServer]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backendServer != nil {
                var tmp : [Any] = []
                for k in self.backendServer! {
                    tmp.append(k.toMap())
                }
                map["BackendServer"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BackendServer") {
                var tmp : [CreateVServerGroupResponseBody.BackendServers.BackendServer] = []
                for v in dict["BackendServer"] as! [Any] {
                    var model = CreateVServerGroupResponseBody.BackendServers.BackendServer()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.backendServer = tmp
            }
        }
    }
    public var backendServers: CreateVServerGroupResponseBody.BackendServers?

    public var requestId: String?

    public var VServerGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.backendServers?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backendServers != nil {
            map["BackendServers"] = self.backendServers?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.VServerGroupId != nil {
            map["VServerGroupId"] = self.VServerGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackendServers") {
            var model = CreateVServerGroupResponseBody.BackendServers()
            model.fromMap(dict["BackendServers"] as! [String: Any])
            self.backendServers = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("VServerGroupId") {
            self.VServerGroupId = dict["VServerGroupId"] as! String
        }
    }
}

public class CreateVServerGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateVServerGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateVServerGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAccessControlListRequest : Tea.TeaModel {
    public var aclId: String?

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
        if self.aclId != nil {
            map["AclId"] = self.aclId!
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
        if dict.keys.contains("AclId") {
            self.aclId = dict["AclId"] as! String
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

public class DeleteAccessControlListResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteAccessControlListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAccessControlListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteAccessControlListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAccessLogsDownloadAttributeRequest : Tea.TeaModel {
    public var loadBalancerId: String?

    public var logsDownloadAttributes: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.logsDownloadAttributes != nil {
            map["LogsDownloadAttributes"] = self.logsDownloadAttributes!
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
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("LogsDownloadAttributes") {
            self.logsDownloadAttributes = dict["LogsDownloadAttributes"] as! String
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
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! String
        }
    }
}

public class DeleteAccessLogsDownloadAttributeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteAccessLogsDownloadAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAccessLogsDownloadAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteAccessLogsDownloadAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteCACertificateRequest : Tea.TeaModel {
    public var CACertificateId: String?

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
        if self.CACertificateId != nil {
            map["CACertificateId"] = self.CACertificateId!
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
        if dict.keys.contains("CACertificateId") {
            self.CACertificateId = dict["CACertificateId"] as! String
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

public class DeleteCACertificateResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteCACertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCACertificateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteCACertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDomainExtensionRequest : Tea.TeaModel {
    public var domainExtensionId: String?

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
        if self.domainExtensionId != nil {
            map["DomainExtensionId"] = self.domainExtensionId!
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
        if dict.keys.contains("DomainExtensionId") {
            self.domainExtensionId = dict["DomainExtensionId"] as! String
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

public class DeleteDomainExtensionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteDomainExtensionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDomainExtensionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteDomainExtensionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteLoadBalancerRequest : Tea.TeaModel {
    public var loadBalancerId: String?

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
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
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
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
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

public class DeleteLoadBalancerResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteLoadBalancerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteLoadBalancerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteLoadBalancerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteLoadBalancerListenerRequest : Tea.TeaModel {
    public var listenerPort: Int32?

    public var listenerProtocol: String?

    public var loadBalancerId: String?

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
        if self.listenerPort != nil {
            map["ListenerPort"] = self.listenerPort!
        }
        if self.listenerProtocol != nil {
            map["ListenerProtocol"] = self.listenerProtocol!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
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
        if dict.keys.contains("ListenerPort") {
            self.listenerPort = dict["ListenerPort"] as! Int32
        }
        if dict.keys.contains("ListenerProtocol") {
            self.listenerProtocol = dict["ListenerProtocol"] as! String
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
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

public class DeleteLoadBalancerListenerResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteLoadBalancerListenerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteLoadBalancerListenerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteLoadBalancerListenerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteMasterSlaveServerGroupRequest : Tea.TeaModel {
    public var masterSlaveServerGroupId: String?

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
        if self.masterSlaveServerGroupId != nil {
            map["MasterSlaveServerGroupId"] = self.masterSlaveServerGroupId!
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
        if dict.keys.contains("MasterSlaveServerGroupId") {
            self.masterSlaveServerGroupId = dict["MasterSlaveServerGroupId"] as! String
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

public class DeleteMasterSlaveServerGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteMasterSlaveServerGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteMasterSlaveServerGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteMasterSlaveServerGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteRulesRequest : Tea.TeaModel {
    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var ruleIds: String?

    public override init() {
        super.init()
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
        if self.ruleIds != nil {
            map["RuleIds"] = self.ruleIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
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
        if dict.keys.contains("RuleIds") {
            self.ruleIds = dict["RuleIds"] as! String
        }
    }
}

public class DeleteRulesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRulesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteServerCertificateRequest : Tea.TeaModel {
    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var serverCertificateId: String?

    public override init() {
        super.init()
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
        if self.serverCertificateId != nil {
            map["ServerCertificateId"] = self.serverCertificateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
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
        if dict.keys.contains("ServerCertificateId") {
            self.serverCertificateId = dict["ServerCertificateId"] as! String
        }
    }
}

public class DeleteServerCertificateResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteServerCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteServerCertificateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteServerCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteTLSCipherPolicyRequest : Tea.TeaModel {
    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var TLSCipherPolicyId: String?

    public override init() {
        super.init()
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
        if self.TLSCipherPolicyId != nil {
            map["TLSCipherPolicyId"] = self.TLSCipherPolicyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
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
        if dict.keys.contains("TLSCipherPolicyId") {
            self.TLSCipherPolicyId = dict["TLSCipherPolicyId"] as! String
        }
    }
}

public class DeleteTLSCipherPolicyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteTLSCipherPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTLSCipherPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteTLSCipherPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteVServerGroupRequest : Tea.TeaModel {
    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var VServerGroupId: String?

    public override init() {
        super.init()
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
        if self.VServerGroupId != nil {
            map["VServerGroupId"] = self.VServerGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
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
        if dict.keys.contains("VServerGroupId") {
            self.VServerGroupId = dict["VServerGroupId"] as! String
        }
    }
}

public class DeleteVServerGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class DeleteVServerGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVServerGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteVServerGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAccessControlListAttributeRequest : Tea.TeaModel {
    public var aclEntryComment: String?

    public var aclId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var page: Int32?

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
        if self.aclEntryComment != nil {
            map["AclEntryComment"] = self.aclEntryComment!
        }
        if self.aclId != nil {
            map["AclId"] = self.aclId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclEntryComment") {
            self.aclEntryComment = dict["AclEntryComment"] as! String
        }
        if dict.keys.contains("AclId") {
            self.aclId = dict["AclId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
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
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeAccessControlListAttributeResponseBody : Tea.TeaModel {
    public class AclEntrys : Tea.TeaModel {
        public class AclEntry : Tea.TeaModel {
            public var aclEntryComment: String?

            public var aclEntryIP: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.aclEntryComment != nil {
                    map["AclEntryComment"] = self.aclEntryComment!
                }
                if self.aclEntryIP != nil {
                    map["AclEntryIP"] = self.aclEntryIP!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AclEntryComment") {
                    self.aclEntryComment = dict["AclEntryComment"] as! String
                }
                if dict.keys.contains("AclEntryIP") {
                    self.aclEntryIP = dict["AclEntryIP"] as! String
                }
            }
        }
        public var aclEntry: [DescribeAccessControlListAttributeResponseBody.AclEntrys.AclEntry]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aclEntry != nil {
                var tmp : [Any] = []
                for k in self.aclEntry! {
                    tmp.append(k.toMap())
                }
                map["AclEntry"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AclEntry") {
                var tmp : [DescribeAccessControlListAttributeResponseBody.AclEntrys.AclEntry] = []
                for v in dict["AclEntry"] as! [Any] {
                    var model = DescribeAccessControlListAttributeResponseBody.AclEntrys.AclEntry()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.aclEntry = tmp
            }
        }
    }
    public class RelatedListeners : Tea.TeaModel {
        public class RelatedListener : Tea.TeaModel {
            public var aclType: String?

            public var listenerPort: Int32?

            public var loadBalancerId: String?

            public var protocol_: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.aclType != nil {
                    map["AclType"] = self.aclType!
                }
                if self.listenerPort != nil {
                    map["ListenerPort"] = self.listenerPort!
                }
                if self.loadBalancerId != nil {
                    map["LoadBalancerId"] = self.loadBalancerId!
                }
                if self.protocol_ != nil {
                    map["Protocol"] = self.protocol_!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AclType") {
                    self.aclType = dict["AclType"] as! String
                }
                if dict.keys.contains("ListenerPort") {
                    self.listenerPort = dict["ListenerPort"] as! Int32
                }
                if dict.keys.contains("LoadBalancerId") {
                    self.loadBalancerId = dict["LoadBalancerId"] as! String
                }
                if dict.keys.contains("Protocol") {
                    self.protocol_ = dict["Protocol"] as! String
                }
            }
        }
        public var relatedListener: [DescribeAccessControlListAttributeResponseBody.RelatedListeners.RelatedListener]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.relatedListener != nil {
                var tmp : [Any] = []
                for k in self.relatedListener! {
                    tmp.append(k.toMap())
                }
                map["RelatedListener"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RelatedListener") {
                var tmp : [DescribeAccessControlListAttributeResponseBody.RelatedListeners.RelatedListener] = []
                for v in dict["RelatedListener"] as! [Any] {
                    var model = DescribeAccessControlListAttributeResponseBody.RelatedListeners.RelatedListener()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.relatedListener = tmp
            }
        }
    }
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
                if dict.keys.contains("TagKey") {
                    self.tagKey = dict["TagKey"] as! String
                }
                if dict.keys.contains("TagValue") {
                    self.tagValue = dict["TagValue"] as! String
                }
            }
        }
        public var tag: [DescribeAccessControlListAttributeResponseBody.Tags.Tag]?

        public override init() {
            super.init()
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
            if dict.keys.contains("Tag") {
                var tmp : [DescribeAccessControlListAttributeResponseBody.Tags.Tag] = []
                for v in dict["Tag"] as! [Any] {
                    var model = DescribeAccessControlListAttributeResponseBody.Tags.Tag()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tag = tmp
            }
        }
    }
    public var aclEntrys: DescribeAccessControlListAttributeResponseBody.AclEntrys?

    public var aclId: String?

    public var aclName: String?

    public var addressIPVersion: String?

    public var createTime: String?

    public var relatedListeners: DescribeAccessControlListAttributeResponseBody.RelatedListeners?

    public var requestId: String?

    public var resourceGroupId: String?

    public var tags: DescribeAccessControlListAttributeResponseBody.Tags?

    public var totalAclEntry: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.aclEntrys?.validate()
        try self.relatedListeners?.validate()
        try self.tags?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclEntrys != nil {
            map["AclEntrys"] = self.aclEntrys?.toMap()
        }
        if self.aclId != nil {
            map["AclId"] = self.aclId!
        }
        if self.aclName != nil {
            map["AclName"] = self.aclName!
        }
        if self.addressIPVersion != nil {
            map["AddressIPVersion"] = self.addressIPVersion!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.relatedListeners != nil {
            map["RelatedListeners"] = self.relatedListeners?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.tags != nil {
            map["Tags"] = self.tags?.toMap()
        }
        if self.totalAclEntry != nil {
            map["TotalAclEntry"] = self.totalAclEntry!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclEntrys") {
            var model = DescribeAccessControlListAttributeResponseBody.AclEntrys()
            model.fromMap(dict["AclEntrys"] as! [String: Any])
            self.aclEntrys = model
        }
        if dict.keys.contains("AclId") {
            self.aclId = dict["AclId"] as! String
        }
        if dict.keys.contains("AclName") {
            self.aclName = dict["AclName"] as! String
        }
        if dict.keys.contains("AddressIPVersion") {
            self.addressIPVersion = dict["AddressIPVersion"] as! String
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("RelatedListeners") {
            var model = DescribeAccessControlListAttributeResponseBody.RelatedListeners()
            model.fromMap(dict["RelatedListeners"] as! [String: Any])
            self.relatedListeners = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Tags") {
            var model = DescribeAccessControlListAttributeResponseBody.Tags()
            model.fromMap(dict["Tags"] as! [String: Any])
            self.tags = model
        }
        if dict.keys.contains("TotalAclEntry") {
            self.totalAclEntry = dict["TotalAclEntry"] as! Int32
        }
    }
}

public class DescribeAccessControlListAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAccessControlListAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeAccessControlListAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAccessControlListsRequest : Tea.TeaModel {
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
    public var aclName: String?

    public var addressIPVersion: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tag: [DescribeAccessControlListsRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclName != nil {
            map["AclName"] = self.aclName!
        }
        if self.addressIPVersion != nil {
            map["AddressIPVersion"] = self.addressIPVersion!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclName") {
            self.aclName = dict["AclName"] as! String
        }
        if dict.keys.contains("AddressIPVersion") {
            self.addressIPVersion = dict["AddressIPVersion"] as! String
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
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Tag") {
            var tmp : [DescribeAccessControlListsRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = DescribeAccessControlListsRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class DescribeAccessControlListsResponseBody : Tea.TeaModel {
    public class Acls : Tea.TeaModel {
        public class Acl : Tea.TeaModel {
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
                        if dict.keys.contains("TagKey") {
                            self.tagKey = dict["TagKey"] as! String
                        }
                        if dict.keys.contains("TagValue") {
                            self.tagValue = dict["TagValue"] as! String
                        }
                    }
                }
                public var tag: [DescribeAccessControlListsResponseBody.Acls.Acl.Tags.Tag]?

                public override init() {
                    super.init()
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
                    if dict.keys.contains("Tag") {
                        var tmp : [DescribeAccessControlListsResponseBody.Acls.Acl.Tags.Tag] = []
                        for v in dict["Tag"] as! [Any] {
                            var model = DescribeAccessControlListsResponseBody.Acls.Acl.Tags.Tag()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.tag = tmp
                    }
                }
            }
            public var aclId: String?

            public var aclName: String?

            public var addressIPVersion: String?

            public var createTime: String?

            public var resourceGroupId: String?

            public var tags: DescribeAccessControlListsResponseBody.Acls.Acl.Tags?

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
                if self.aclId != nil {
                    map["AclId"] = self.aclId!
                }
                if self.aclName != nil {
                    map["AclName"] = self.aclName!
                }
                if self.addressIPVersion != nil {
                    map["AddressIPVersion"] = self.addressIPVersion!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AclId") {
                    self.aclId = dict["AclId"] as! String
                }
                if dict.keys.contains("AclName") {
                    self.aclName = dict["AclName"] as! String
                }
                if dict.keys.contains("AddressIPVersion") {
                    self.addressIPVersion = dict["AddressIPVersion"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("ResourceGroupId") {
                    self.resourceGroupId = dict["ResourceGroupId"] as! String
                }
                if dict.keys.contains("Tags") {
                    var model = DescribeAccessControlListsResponseBody.Acls.Acl.Tags()
                    model.fromMap(dict["Tags"] as! [String: Any])
                    self.tags = model
                }
            }
        }
        public var acl: [DescribeAccessControlListsResponseBody.Acls.Acl]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.acl != nil {
                var tmp : [Any] = []
                for k in self.acl! {
                    tmp.append(k.toMap())
                }
                map["Acl"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Acl") {
                var tmp : [DescribeAccessControlListsResponseBody.Acls.Acl] = []
                for v in dict["Acl"] as! [Any] {
                    var model = DescribeAccessControlListsResponseBody.Acls.Acl()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.acl = tmp
            }
        }
    }
    public var acls: DescribeAccessControlListsResponseBody.Acls?

    public var count: Int32?

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
        try self.acls?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acls != nil {
            map["Acls"] = self.acls?.toMap()
        }
        if self.count != nil {
            map["Count"] = self.count!
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
        if dict.keys.contains("Acls") {
            var model = DescribeAccessControlListsResponseBody.Acls()
            model.fromMap(dict["Acls"] as! [String: Any])
            self.acls = model
        }
        if dict.keys.contains("Count") {
            self.count = dict["Count"] as! Int32
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
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeAccessControlListsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAccessControlListsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeAccessControlListsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAccessLogsDownloadAttributeRequest : Tea.TeaModel {
    public var loadBalancerId: String?

    public var logType: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.logType != nil {
            map["LogType"] = self.logType!
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
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("LogType") {
            self.logType = dict["LogType"] as! String
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
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! String
        }
    }
}

public class DescribeAccessLogsDownloadAttributeResponseBody : Tea.TeaModel {
    public class LogsDownloadAttributes : Tea.TeaModel {
        public class LogsDownloadAttribute : Tea.TeaModel {
            public var loadBalancerId: String?

            public var logProject: String?

            public var logStore: String?

            public var logType: String?

            public var region: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.loadBalancerId != nil {
                    map["LoadBalancerId"] = self.loadBalancerId!
                }
                if self.logProject != nil {
                    map["LogProject"] = self.logProject!
                }
                if self.logStore != nil {
                    map["LogStore"] = self.logStore!
                }
                if self.logType != nil {
                    map["LogType"] = self.logType!
                }
                if self.region != nil {
                    map["Region"] = self.region!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("LoadBalancerId") {
                    self.loadBalancerId = dict["LoadBalancerId"] as! String
                }
                if dict.keys.contains("LogProject") {
                    self.logProject = dict["LogProject"] as! String
                }
                if dict.keys.contains("LogStore") {
                    self.logStore = dict["LogStore"] as! String
                }
                if dict.keys.contains("LogType") {
                    self.logType = dict["LogType"] as! String
                }
                if dict.keys.contains("Region") {
                    self.region = dict["Region"] as! String
                }
            }
        }
        public var logsDownloadAttribute: [DescribeAccessLogsDownloadAttributeResponseBody.LogsDownloadAttributes.LogsDownloadAttribute]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.logsDownloadAttribute != nil {
                var tmp : [Any] = []
                for k in self.logsDownloadAttribute! {
                    tmp.append(k.toMap())
                }
                map["LogsDownloadAttribute"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LogsDownloadAttribute") {
                var tmp : [DescribeAccessLogsDownloadAttributeResponseBody.LogsDownloadAttributes.LogsDownloadAttribute] = []
                for v in dict["LogsDownloadAttribute"] as! [Any] {
                    var model = DescribeAccessLogsDownloadAttributeResponseBody.LogsDownloadAttributes.LogsDownloadAttribute()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.logsDownloadAttribute = tmp
            }
        }
    }
    public var logsDownloadAttributes: DescribeAccessLogsDownloadAttributeResponseBody.LogsDownloadAttributes?

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
        try self.logsDownloadAttributes?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.logsDownloadAttributes != nil {
            map["LogsDownloadAttributes"] = self.logsDownloadAttributes?.toMap()
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
        if dict.keys.contains("LogsDownloadAttributes") {
            var model = DescribeAccessLogsDownloadAttributeResponseBody.LogsDownloadAttributes()
            model.fromMap(dict["LogsDownloadAttributes"] as! [String: Any])
            self.logsDownloadAttributes = model
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
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeAccessLogsDownloadAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAccessLogsDownloadAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeAccessLogsDownloadAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAvailableResourceRequest : Tea.TeaModel {
    public var addressIPVersion: String?

    public var addressType: String?

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
        if self.addressIPVersion != nil {
            map["AddressIPVersion"] = self.addressIPVersion!
        }
        if self.addressType != nil {
            map["AddressType"] = self.addressType!
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
        if dict.keys.contains("AddressIPVersion") {
            self.addressIPVersion = dict["AddressIPVersion"] as! String
        }
        if dict.keys.contains("AddressType") {
            self.addressType = dict["AddressType"] as! String
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

public class DescribeAvailableResourceResponseBody : Tea.TeaModel {
    public class AvailableResources : Tea.TeaModel {
        public class AvailableResource : Tea.TeaModel {
            public class SupportResources : Tea.TeaModel {
                public class SupportResource : Tea.TeaModel {
                    public var addressIPVersion: String?

                    public var addressType: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.addressIPVersion != nil {
                            map["AddressIPVersion"] = self.addressIPVersion!
                        }
                        if self.addressType != nil {
                            map["AddressType"] = self.addressType!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("AddressIPVersion") {
                            self.addressIPVersion = dict["AddressIPVersion"] as! String
                        }
                        if dict.keys.contains("AddressType") {
                            self.addressType = dict["AddressType"] as! String
                        }
                    }
                }
                public var supportResource: [DescribeAvailableResourceResponseBody.AvailableResources.AvailableResource.SupportResources.SupportResource]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.supportResource != nil {
                        var tmp : [Any] = []
                        for k in self.supportResource! {
                            tmp.append(k.toMap())
                        }
                        map["SupportResource"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("SupportResource") {
                        var tmp : [DescribeAvailableResourceResponseBody.AvailableResources.AvailableResource.SupportResources.SupportResource] = []
                        for v in dict["SupportResource"] as! [Any] {
                            var model = DescribeAvailableResourceResponseBody.AvailableResources.AvailableResource.SupportResources.SupportResource()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.supportResource = tmp
                    }
                }
            }
            public var masterZoneId: String?

            public var slaveZoneId: String?

            public var supportResources: DescribeAvailableResourceResponseBody.AvailableResources.AvailableResource.SupportResources?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.supportResources?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.masterZoneId != nil {
                    map["MasterZoneId"] = self.masterZoneId!
                }
                if self.slaveZoneId != nil {
                    map["SlaveZoneId"] = self.slaveZoneId!
                }
                if self.supportResources != nil {
                    map["SupportResources"] = self.supportResources?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("MasterZoneId") {
                    self.masterZoneId = dict["MasterZoneId"] as! String
                }
                if dict.keys.contains("SlaveZoneId") {
                    self.slaveZoneId = dict["SlaveZoneId"] as! String
                }
                if dict.keys.contains("SupportResources") {
                    var model = DescribeAvailableResourceResponseBody.AvailableResources.AvailableResource.SupportResources()
                    model.fromMap(dict["SupportResources"] as! [String: Any])
                    self.supportResources = model
                }
            }
        }
        public var availableResource: [DescribeAvailableResourceResponseBody.AvailableResources.AvailableResource]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.availableResource != nil {
                var tmp : [Any] = []
                for k in self.availableResource! {
                    tmp.append(k.toMap())
                }
                map["AvailableResource"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AvailableResource") {
                var tmp : [DescribeAvailableResourceResponseBody.AvailableResources.AvailableResource] = []
                for v in dict["AvailableResource"] as! [Any] {
                    var model = DescribeAvailableResourceResponseBody.AvailableResources.AvailableResource()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.availableResource = tmp
            }
        }
    }
    public var availableResources: DescribeAvailableResourceResponseBody.AvailableResources?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.availableResources?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.availableResources != nil {
            map["AvailableResources"] = self.availableResources?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AvailableResources") {
            var model = DescribeAvailableResourceResponseBody.AvailableResources()
            model.fromMap(dict["AvailableResources"] as! [String: Any])
            self.availableResources = model
        }
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAvailableResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCACertificatesRequest : Tea.TeaModel {
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
    public var CACertificateId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tag: [DescribeCACertificatesRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.CACertificateId != nil {
            map["CACertificateId"] = self.CACertificateId!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CACertificateId") {
            self.CACertificateId = dict["CACertificateId"] as! String
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
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Tag") {
            var tmp : [DescribeCACertificatesRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = DescribeCACertificatesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class DescribeCACertificatesResponseBody : Tea.TeaModel {
    public class CACertificates : Tea.TeaModel {
        public class CACertificate : Tea.TeaModel {
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
                        if dict.keys.contains("TagKey") {
                            self.tagKey = dict["TagKey"] as! String
                        }
                        if dict.keys.contains("TagValue") {
                            self.tagValue = dict["TagValue"] as! String
                        }
                    }
                }
                public var tag: [DescribeCACertificatesResponseBody.CACertificates.CACertificate.Tags.Tag]?

                public override init() {
                    super.init()
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
                    if dict.keys.contains("Tag") {
                        var tmp : [DescribeCACertificatesResponseBody.CACertificates.CACertificate.Tags.Tag] = []
                        for v in dict["Tag"] as! [Any] {
                            var model = DescribeCACertificatesResponseBody.CACertificates.CACertificate.Tags.Tag()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.tag = tmp
                    }
                }
            }
            public var CACertificateId: String?

            public var CACertificateName: String?

            public var commonName: String?

            public var createTime: String?

            public var createTimeStamp: Int64?

            public var expireTime: String?

            public var expireTimeStamp: Int64?

            public var fingerprint: String?

            public var regionId: String?

            public var resourceGroupId: String?

            public var tags: DescribeCACertificatesResponseBody.CACertificates.CACertificate.Tags?

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
                if self.CACertificateId != nil {
                    map["CACertificateId"] = self.CACertificateId!
                }
                if self.CACertificateName != nil {
                    map["CACertificateName"] = self.CACertificateName!
                }
                if self.commonName != nil {
                    map["CommonName"] = self.commonName!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.createTimeStamp != nil {
                    map["CreateTimeStamp"] = self.createTimeStamp!
                }
                if self.expireTime != nil {
                    map["ExpireTime"] = self.expireTime!
                }
                if self.expireTimeStamp != nil {
                    map["ExpireTimeStamp"] = self.expireTimeStamp!
                }
                if self.fingerprint != nil {
                    map["Fingerprint"] = self.fingerprint!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CACertificateId") {
                    self.CACertificateId = dict["CACertificateId"] as! String
                }
                if dict.keys.contains("CACertificateName") {
                    self.CACertificateName = dict["CACertificateName"] as! String
                }
                if dict.keys.contains("CommonName") {
                    self.commonName = dict["CommonName"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("CreateTimeStamp") {
                    self.createTimeStamp = dict["CreateTimeStamp"] as! Int64
                }
                if dict.keys.contains("ExpireTime") {
                    self.expireTime = dict["ExpireTime"] as! String
                }
                if dict.keys.contains("ExpireTimeStamp") {
                    self.expireTimeStamp = dict["ExpireTimeStamp"] as! Int64
                }
                if dict.keys.contains("Fingerprint") {
                    self.fingerprint = dict["Fingerprint"] as! String
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("ResourceGroupId") {
                    self.resourceGroupId = dict["ResourceGroupId"] as! String
                }
                if dict.keys.contains("Tags") {
                    var model = DescribeCACertificatesResponseBody.CACertificates.CACertificate.Tags()
                    model.fromMap(dict["Tags"] as! [String: Any])
                    self.tags = model
                }
            }
        }
        public var CACertificate: [DescribeCACertificatesResponseBody.CACertificates.CACertificate]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.CACertificate != nil {
                var tmp : [Any] = []
                for k in self.CACertificate! {
                    tmp.append(k.toMap())
                }
                map["CACertificate"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CACertificate") {
                var tmp : [DescribeCACertificatesResponseBody.CACertificates.CACertificate] = []
                for v in dict["CACertificate"] as! [Any] {
                    var model = DescribeCACertificatesResponseBody.CACertificates.CACertificate()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.CACertificate = tmp
            }
        }
    }
    public var CACertificates: DescribeCACertificatesResponseBody.CACertificates?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.CACertificates?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.CACertificates != nil {
            map["CACertificates"] = self.CACertificates?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CACertificates") {
            var model = DescribeCACertificatesResponseBody.CACertificates()
            model.fromMap(dict["CACertificates"] as! [String: Any])
            self.CACertificates = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeCACertificatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCACertificatesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeCACertificatesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDomainExtensionAttributeRequest : Tea.TeaModel {
    public var domainExtensionId: String?

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
        if self.domainExtensionId != nil {
            map["DomainExtensionId"] = self.domainExtensionId!
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
        if dict.keys.contains("DomainExtensionId") {
            self.domainExtensionId = dict["DomainExtensionId"] as! String
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

public class DescribeDomainExtensionAttributeResponseBody : Tea.TeaModel {
    public var domain: String?

    public var domainExtensionId: String?

    public var listenerPort: Int32?

    public var loadBalancerId: String?

    public var requestId: String?

    public var serverCertificateId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.domainExtensionId != nil {
            map["DomainExtensionId"] = self.domainExtensionId!
        }
        if self.listenerPort != nil {
            map["ListenerPort"] = self.listenerPort!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serverCertificateId != nil {
            map["ServerCertificateId"] = self.serverCertificateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("DomainExtensionId") {
            self.domainExtensionId = dict["DomainExtensionId"] as! String
        }
        if dict.keys.contains("ListenerPort") {
            self.listenerPort = dict["ListenerPort"] as! Int32
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServerCertificateId") {
            self.serverCertificateId = dict["ServerCertificateId"] as! String
        }
    }
}

public class DescribeDomainExtensionAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDomainExtensionAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeDomainExtensionAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDomainExtensionsRequest : Tea.TeaModel {
    public var domainExtensionId: String?

    public var listenerPort: Int32?

    public var loadBalancerId: String?

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
        if self.domainExtensionId != nil {
            map["DomainExtensionId"] = self.domainExtensionId!
        }
        if self.listenerPort != nil {
            map["ListenerPort"] = self.listenerPort!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
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
        if dict.keys.contains("DomainExtensionId") {
            self.domainExtensionId = dict["DomainExtensionId"] as! String
        }
        if dict.keys.contains("ListenerPort") {
            self.listenerPort = dict["ListenerPort"] as! Int32
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
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

public class DescribeDomainExtensionsResponseBody : Tea.TeaModel {
    public class DomainExtensions : Tea.TeaModel {
        public class DomainExtension : Tea.TeaModel {
            public var domain: String?

            public var domainExtensionId: String?

            public var serverCertificateId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.domain != nil {
                    map["Domain"] = self.domain!
                }
                if self.domainExtensionId != nil {
                    map["DomainExtensionId"] = self.domainExtensionId!
                }
                if self.serverCertificateId != nil {
                    map["ServerCertificateId"] = self.serverCertificateId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Domain") {
                    self.domain = dict["Domain"] as! String
                }
                if dict.keys.contains("DomainExtensionId") {
                    self.domainExtensionId = dict["DomainExtensionId"] as! String
                }
                if dict.keys.contains("ServerCertificateId") {
                    self.serverCertificateId = dict["ServerCertificateId"] as! String
                }
            }
        }
        public var domainExtension: [DescribeDomainExtensionsResponseBody.DomainExtensions.DomainExtension]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.domainExtension != nil {
                var tmp : [Any] = []
                for k in self.domainExtension! {
                    tmp.append(k.toMap())
                }
                map["DomainExtension"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DomainExtension") {
                var tmp : [DescribeDomainExtensionsResponseBody.DomainExtensions.DomainExtension] = []
                for v in dict["DomainExtension"] as! [Any] {
                    var model = DescribeDomainExtensionsResponseBody.DomainExtensions.DomainExtension()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.domainExtension = tmp
            }
        }
    }
    public var domainExtensions: DescribeDomainExtensionsResponseBody.DomainExtensions?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.domainExtensions?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainExtensions != nil {
            map["DomainExtensions"] = self.domainExtensions?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainExtensions") {
            var model = DescribeDomainExtensionsResponseBody.DomainExtensions()
            model.fromMap(dict["DomainExtensions"] as! [String: Any])
            self.domainExtensions = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDomainExtensionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDomainExtensionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeDomainExtensionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeHealthStatusRequest : Tea.TeaModel {
    public var listenerPort: Int32?

    public var listenerProtocol: String?

    public var loadBalancerId: String?

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
        if self.listenerPort != nil {
            map["ListenerPort"] = self.listenerPort!
        }
        if self.listenerProtocol != nil {
            map["ListenerProtocol"] = self.listenerProtocol!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
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
        if dict.keys.contains("ListenerPort") {
            self.listenerPort = dict["ListenerPort"] as! Int32
        }
        if dict.keys.contains("ListenerProtocol") {
            self.listenerProtocol = dict["ListenerProtocol"] as! String
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
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

public class DescribeHealthStatusResponseBody : Tea.TeaModel {
    public class BackendServers : Tea.TeaModel {
        public class BackendServer : Tea.TeaModel {
            public var listenerPort: Int32?

            public var port: Int32?

            public var protocol_: String?

            public var serverHealthStatus: String?

            public var serverId: String?

            public var serverIp: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.listenerPort != nil {
                    map["ListenerPort"] = self.listenerPort!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.protocol_ != nil {
                    map["Protocol"] = self.protocol_!
                }
                if self.serverHealthStatus != nil {
                    map["ServerHealthStatus"] = self.serverHealthStatus!
                }
                if self.serverId != nil {
                    map["ServerId"] = self.serverId!
                }
                if self.serverIp != nil {
                    map["ServerIp"] = self.serverIp!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ListenerPort") {
                    self.listenerPort = dict["ListenerPort"] as! Int32
                }
                if dict.keys.contains("Port") {
                    self.port = dict["Port"] as! Int32
                }
                if dict.keys.contains("Protocol") {
                    self.protocol_ = dict["Protocol"] as! String
                }
                if dict.keys.contains("ServerHealthStatus") {
                    self.serverHealthStatus = dict["ServerHealthStatus"] as! String
                }
                if dict.keys.contains("ServerId") {
                    self.serverId = dict["ServerId"] as! String
                }
                if dict.keys.contains("ServerIp") {
                    self.serverIp = dict["ServerIp"] as! String
                }
            }
        }
        public var backendServer: [DescribeHealthStatusResponseBody.BackendServers.BackendServer]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backendServer != nil {
                var tmp : [Any] = []
                for k in self.backendServer! {
                    tmp.append(k.toMap())
                }
                map["BackendServer"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BackendServer") {
                var tmp : [DescribeHealthStatusResponseBody.BackendServers.BackendServer] = []
                for v in dict["BackendServer"] as! [Any] {
                    var model = DescribeHealthStatusResponseBody.BackendServers.BackendServer()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.backendServer = tmp
            }
        }
    }
    public var backendServers: DescribeHealthStatusResponseBody.BackendServers?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.backendServers?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backendServers != nil {
            map["BackendServers"] = self.backendServers?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackendServers") {
            var model = DescribeHealthStatusResponseBody.BackendServers()
            model.fromMap(dict["BackendServers"] as! [String: Any])
            self.backendServers = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeHealthStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeHealthStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeHealthStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeHighDefinationMonitorRequest : Tea.TeaModel {
    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
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
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! String
        }
    }
}

public class DescribeHighDefinationMonitorResponseBody : Tea.TeaModel {
    public var logProject: String?

    public var logStore: String?

    public var requestId: String?

    public var success: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.logProject != nil {
            map["LogProject"] = self.logProject!
        }
        if self.logStore != nil {
            map["LogStore"] = self.logStore!
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
        if dict.keys.contains("LogProject") {
            self.logProject = dict["LogProject"] as! String
        }
        if dict.keys.contains("LogStore") {
            self.logStore = dict["LogStore"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
    }
}

public class DescribeHighDefinationMonitorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeHighDefinationMonitorResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeHighDefinationMonitorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeListenerAccessControlAttributeRequest : Tea.TeaModel {
    public var listenerPort: Int32?

    public var listenerProtocol: String?

    public var loadBalancerId: String?

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
        if self.listenerPort != nil {
            map["ListenerPort"] = self.listenerPort!
        }
        if self.listenerProtocol != nil {
            map["ListenerProtocol"] = self.listenerProtocol!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
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
        if dict.keys.contains("ListenerPort") {
            self.listenerPort = dict["ListenerPort"] as! Int32
        }
        if dict.keys.contains("ListenerProtocol") {
            self.listenerProtocol = dict["ListenerProtocol"] as! String
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
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

public class DescribeListenerAccessControlAttributeResponseBody : Tea.TeaModel {
    public var accessControlStatus: String?

    public var requestId: String?

    public var sourceItems: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessControlStatus != nil {
            map["AccessControlStatus"] = self.accessControlStatus!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sourceItems != nil {
            map["SourceItems"] = self.sourceItems!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessControlStatus") {
            self.accessControlStatus = dict["AccessControlStatus"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SourceItems") {
            self.sourceItems = dict["SourceItems"] as! String
        }
    }
}

public class DescribeListenerAccessControlAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeListenerAccessControlAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeListenerAccessControlAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeLoadBalancerAttributeRequest : Tea.TeaModel {
    public var loadBalancerId: String?

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
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
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
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
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

public class DescribeLoadBalancerAttributeResponseBody : Tea.TeaModel {
    public class BackendServers : Tea.TeaModel {
        public class BackendServer : Tea.TeaModel {
            public var description_: String?

            public var serverId: String?

            public var serverIp: String?

            public var type: String?

            public var weight: Int32?

            public override init() {
                super.init()
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
                if self.serverId != nil {
                    map["ServerId"] = self.serverId!
                }
                if self.serverIp != nil {
                    map["ServerIp"] = self.serverIp!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.weight != nil {
                    map["Weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("ServerId") {
                    self.serverId = dict["ServerId"] as! String
                }
                if dict.keys.contains("ServerIp") {
                    self.serverIp = dict["ServerIp"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Weight") {
                    self.weight = dict["Weight"] as! Int32
                }
            }
        }
        public var backendServer: [DescribeLoadBalancerAttributeResponseBody.BackendServers.BackendServer]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backendServer != nil {
                var tmp : [Any] = []
                for k in self.backendServer! {
                    tmp.append(k.toMap())
                }
                map["BackendServer"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BackendServer") {
                var tmp : [DescribeLoadBalancerAttributeResponseBody.BackendServers.BackendServer] = []
                for v in dict["BackendServer"] as! [Any] {
                    var model = DescribeLoadBalancerAttributeResponseBody.BackendServers.BackendServer()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.backendServer = tmp
            }
        }
    }
    public class ListenerPorts : Tea.TeaModel {
        public var listenerPort: [Int32]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.listenerPort != nil {
                map["ListenerPort"] = self.listenerPort!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ListenerPort") {
                self.listenerPort = dict["ListenerPort"] as! [Int32]
            }
        }
    }
    public class ListenerPortsAndProtocal : Tea.TeaModel {
        public class ListenerPortAndProtocal : Tea.TeaModel {
            public var listenerPort: Int32?

            public var listenerProtocal: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.listenerPort != nil {
                    map["ListenerPort"] = self.listenerPort!
                }
                if self.listenerProtocal != nil {
                    map["ListenerProtocal"] = self.listenerProtocal!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ListenerPort") {
                    self.listenerPort = dict["ListenerPort"] as! Int32
                }
                if dict.keys.contains("ListenerProtocal") {
                    self.listenerProtocal = dict["ListenerProtocal"] as! String
                }
            }
        }
        public var listenerPortAndProtocal: [DescribeLoadBalancerAttributeResponseBody.ListenerPortsAndProtocal.ListenerPortAndProtocal]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.listenerPortAndProtocal != nil {
                var tmp : [Any] = []
                for k in self.listenerPortAndProtocal! {
                    tmp.append(k.toMap())
                }
                map["ListenerPortAndProtocal"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ListenerPortAndProtocal") {
                var tmp : [DescribeLoadBalancerAttributeResponseBody.ListenerPortsAndProtocal.ListenerPortAndProtocal] = []
                for v in dict["ListenerPortAndProtocal"] as! [Any] {
                    var model = DescribeLoadBalancerAttributeResponseBody.ListenerPortsAndProtocal.ListenerPortAndProtocal()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.listenerPortAndProtocal = tmp
            }
        }
    }
    public class ListenerPortsAndProtocol : Tea.TeaModel {
        public class ListenerPortAndProtocol : Tea.TeaModel {
            public var description_: String?

            public var forwardPort: Int32?

            public var listenerForward: String?

            public var listenerPort: Int32?

            public var listenerProtocol: String?

            public override init() {
                super.init()
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
                if self.forwardPort != nil {
                    map["ForwardPort"] = self.forwardPort!
                }
                if self.listenerForward != nil {
                    map["ListenerForward"] = self.listenerForward!
                }
                if self.listenerPort != nil {
                    map["ListenerPort"] = self.listenerPort!
                }
                if self.listenerProtocol != nil {
                    map["ListenerProtocol"] = self.listenerProtocol!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("ForwardPort") {
                    self.forwardPort = dict["ForwardPort"] as! Int32
                }
                if dict.keys.contains("ListenerForward") {
                    self.listenerForward = dict["ListenerForward"] as! String
                }
                if dict.keys.contains("ListenerPort") {
                    self.listenerPort = dict["ListenerPort"] as! Int32
                }
                if dict.keys.contains("ListenerProtocol") {
                    self.listenerProtocol = dict["ListenerProtocol"] as! String
                }
            }
        }
        public var listenerPortAndProtocol: [DescribeLoadBalancerAttributeResponseBody.ListenerPortsAndProtocol.ListenerPortAndProtocol]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.listenerPortAndProtocol != nil {
                var tmp : [Any] = []
                for k in self.listenerPortAndProtocol! {
                    tmp.append(k.toMap())
                }
                map["ListenerPortAndProtocol"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ListenerPortAndProtocol") {
                var tmp : [DescribeLoadBalancerAttributeResponseBody.ListenerPortsAndProtocol.ListenerPortAndProtocol] = []
                for v in dict["ListenerPortAndProtocol"] as! [Any] {
                    var model = DescribeLoadBalancerAttributeResponseBody.ListenerPortsAndProtocol.ListenerPortAndProtocol()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.listenerPortAndProtocol = tmp
            }
        }
    }
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
                if dict.keys.contains("TagKey") {
                    self.tagKey = dict["TagKey"] as! String
                }
                if dict.keys.contains("TagValue") {
                    self.tagValue = dict["TagValue"] as! String
                }
            }
        }
        public var tag: [DescribeLoadBalancerAttributeResponseBody.Tags.Tag]?

        public override init() {
            super.init()
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
            if dict.keys.contains("Tag") {
                var tmp : [DescribeLoadBalancerAttributeResponseBody.Tags.Tag] = []
                for v in dict["Tag"] as! [Any] {
                    var model = DescribeLoadBalancerAttributeResponseBody.Tags.Tag()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tag = tmp
            }
        }
    }
    public var address: String?

    public var addressIPVersion: String?

    public var addressType: String?

    public var autoReleaseTime: Int64?

    public var backendServers: DescribeLoadBalancerAttributeResponseBody.BackendServers?

    public var bandwidth: Int32?

    public var createTime: String?

    public var createTimeStamp: Int64?

    public var deleteProtection: String?

    public var endTime: String?

    public var endTimeStamp: Int64?

    public var instanceChargeType: String?

    public var internetChargeType: String?

    public var listenerPorts: DescribeLoadBalancerAttributeResponseBody.ListenerPorts?

    public var listenerPortsAndProtocal: DescribeLoadBalancerAttributeResponseBody.ListenerPortsAndProtocal?

    public var listenerPortsAndProtocol: DescribeLoadBalancerAttributeResponseBody.ListenerPortsAndProtocol?

    public var loadBalancerId: String?

    public var loadBalancerName: String?

    public var loadBalancerSpec: String?

    public var loadBalancerStatus: String?

    public var masterZoneId: String?

    public var modificationProtectionReason: String?

    public var modificationProtectionStatus: String?

    public var networkType: String?

    public var payType: String?

    public var regionId: String?

    public var regionIdAlias: String?

    public var renewalCycUnit: String?

    public var renewalDuration: Int32?

    public var renewalStatus: String?

    public var requestId: String?

    public var resourceGroupId: String?

    public var slaveZoneId: String?

    public var tags: DescribeLoadBalancerAttributeResponseBody.Tags?

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
        try self.backendServers?.validate()
        try self.listenerPorts?.validate()
        try self.listenerPortsAndProtocal?.validate()
        try self.listenerPortsAndProtocol?.validate()
        try self.tags?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.address != nil {
            map["Address"] = self.address!
        }
        if self.addressIPVersion != nil {
            map["AddressIPVersion"] = self.addressIPVersion!
        }
        if self.addressType != nil {
            map["AddressType"] = self.addressType!
        }
        if self.autoReleaseTime != nil {
            map["AutoReleaseTime"] = self.autoReleaseTime!
        }
        if self.backendServers != nil {
            map["BackendServers"] = self.backendServers?.toMap()
        }
        if self.bandwidth != nil {
            map["Bandwidth"] = self.bandwidth!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.createTimeStamp != nil {
            map["CreateTimeStamp"] = self.createTimeStamp!
        }
        if self.deleteProtection != nil {
            map["DeleteProtection"] = self.deleteProtection!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.endTimeStamp != nil {
            map["EndTimeStamp"] = self.endTimeStamp!
        }
        if self.instanceChargeType != nil {
            map["InstanceChargeType"] = self.instanceChargeType!
        }
        if self.internetChargeType != nil {
            map["InternetChargeType"] = self.internetChargeType!
        }
        if self.listenerPorts != nil {
            map["ListenerPorts"] = self.listenerPorts?.toMap()
        }
        if self.listenerPortsAndProtocal != nil {
            map["ListenerPortsAndProtocal"] = self.listenerPortsAndProtocal?.toMap()
        }
        if self.listenerPortsAndProtocol != nil {
            map["ListenerPortsAndProtocol"] = self.listenerPortsAndProtocol?.toMap()
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.loadBalancerName != nil {
            map["LoadBalancerName"] = self.loadBalancerName!
        }
        if self.loadBalancerSpec != nil {
            map["LoadBalancerSpec"] = self.loadBalancerSpec!
        }
        if self.loadBalancerStatus != nil {
            map["LoadBalancerStatus"] = self.loadBalancerStatus!
        }
        if self.masterZoneId != nil {
            map["MasterZoneId"] = self.masterZoneId!
        }
        if self.modificationProtectionReason != nil {
            map["ModificationProtectionReason"] = self.modificationProtectionReason!
        }
        if self.modificationProtectionStatus != nil {
            map["ModificationProtectionStatus"] = self.modificationProtectionStatus!
        }
        if self.networkType != nil {
            map["NetworkType"] = self.networkType!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.regionIdAlias != nil {
            map["RegionIdAlias"] = self.regionIdAlias!
        }
        if self.renewalCycUnit != nil {
            map["RenewalCycUnit"] = self.renewalCycUnit!
        }
        if self.renewalDuration != nil {
            map["RenewalDuration"] = self.renewalDuration!
        }
        if self.renewalStatus != nil {
            map["RenewalStatus"] = self.renewalStatus!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.slaveZoneId != nil {
            map["SlaveZoneId"] = self.slaveZoneId!
        }
        if self.tags != nil {
            map["Tags"] = self.tags?.toMap()
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
        if dict.keys.contains("Address") {
            self.address = dict["Address"] as! String
        }
        if dict.keys.contains("AddressIPVersion") {
            self.addressIPVersion = dict["AddressIPVersion"] as! String
        }
        if dict.keys.contains("AddressType") {
            self.addressType = dict["AddressType"] as! String
        }
        if dict.keys.contains("AutoReleaseTime") {
            self.autoReleaseTime = dict["AutoReleaseTime"] as! Int64
        }
        if dict.keys.contains("BackendServers") {
            var model = DescribeLoadBalancerAttributeResponseBody.BackendServers()
            model.fromMap(dict["BackendServers"] as! [String: Any])
            self.backendServers = model
        }
        if dict.keys.contains("Bandwidth") {
            self.bandwidth = dict["Bandwidth"] as! Int32
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("CreateTimeStamp") {
            self.createTimeStamp = dict["CreateTimeStamp"] as! Int64
        }
        if dict.keys.contains("DeleteProtection") {
            self.deleteProtection = dict["DeleteProtection"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("EndTimeStamp") {
            self.endTimeStamp = dict["EndTimeStamp"] as! Int64
        }
        if dict.keys.contains("InstanceChargeType") {
            self.instanceChargeType = dict["InstanceChargeType"] as! String
        }
        if dict.keys.contains("InternetChargeType") {
            self.internetChargeType = dict["InternetChargeType"] as! String
        }
        if dict.keys.contains("ListenerPorts") {
            var model = DescribeLoadBalancerAttributeResponseBody.ListenerPorts()
            model.fromMap(dict["ListenerPorts"] as! [String: Any])
            self.listenerPorts = model
        }
        if dict.keys.contains("ListenerPortsAndProtocal") {
            var model = DescribeLoadBalancerAttributeResponseBody.ListenerPortsAndProtocal()
            model.fromMap(dict["ListenerPortsAndProtocal"] as! [String: Any])
            self.listenerPortsAndProtocal = model
        }
        if dict.keys.contains("ListenerPortsAndProtocol") {
            var model = DescribeLoadBalancerAttributeResponseBody.ListenerPortsAndProtocol()
            model.fromMap(dict["ListenerPortsAndProtocol"] as! [String: Any])
            self.listenerPortsAndProtocol = model
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("LoadBalancerName") {
            self.loadBalancerName = dict["LoadBalancerName"] as! String
        }
        if dict.keys.contains("LoadBalancerSpec") {
            self.loadBalancerSpec = dict["LoadBalancerSpec"] as! String
        }
        if dict.keys.contains("LoadBalancerStatus") {
            self.loadBalancerStatus = dict["LoadBalancerStatus"] as! String
        }
        if dict.keys.contains("MasterZoneId") {
            self.masterZoneId = dict["MasterZoneId"] as! String
        }
        if dict.keys.contains("ModificationProtectionReason") {
            self.modificationProtectionReason = dict["ModificationProtectionReason"] as! String
        }
        if dict.keys.contains("ModificationProtectionStatus") {
            self.modificationProtectionStatus = dict["ModificationProtectionStatus"] as! String
        }
        if dict.keys.contains("NetworkType") {
            self.networkType = dict["NetworkType"] as! String
        }
        if dict.keys.contains("PayType") {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RegionIdAlias") {
            self.regionIdAlias = dict["RegionIdAlias"] as! String
        }
        if dict.keys.contains("RenewalCycUnit") {
            self.renewalCycUnit = dict["RenewalCycUnit"] as! String
        }
        if dict.keys.contains("RenewalDuration") {
            self.renewalDuration = dict["RenewalDuration"] as! Int32
        }
        if dict.keys.contains("RenewalStatus") {
            self.renewalStatus = dict["RenewalStatus"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SlaveZoneId") {
            self.slaveZoneId = dict["SlaveZoneId"] as! String
        }
        if dict.keys.contains("Tags") {
            var model = DescribeLoadBalancerAttributeResponseBody.Tags()
            model.fromMap(dict["Tags"] as! [String: Any])
            self.tags = model
        }
        if dict.keys.contains("VSwitchId") {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
        }
    }
}

public class DescribeLoadBalancerAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeLoadBalancerAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeLoadBalancerAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeLoadBalancerHTTPListenerAttributeRequest : Tea.TeaModel {
    public var listenerPort: Int32?

    public var loadBalancerId: String?

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
        if self.listenerPort != nil {
            map["ListenerPort"] = self.listenerPort!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
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
        if dict.keys.contains("ListenerPort") {
            self.listenerPort = dict["ListenerPort"] as! Int32
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
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

public class DescribeLoadBalancerHTTPListenerAttributeResponseBody : Tea.TeaModel {
    public class Rules : Tea.TeaModel {
        public class Rule : Tea.TeaModel {
            public var domain: String?

            public var ruleId: String?

            public var ruleName: String?

            public var url: String?

            public var VServerGroupId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.domain != nil {
                    map["Domain"] = self.domain!
                }
                if self.ruleId != nil {
                    map["RuleId"] = self.ruleId!
                }
                if self.ruleName != nil {
                    map["RuleName"] = self.ruleName!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                if self.VServerGroupId != nil {
                    map["VServerGroupId"] = self.VServerGroupId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Domain") {
                    self.domain = dict["Domain"] as! String
                }
                if dict.keys.contains("RuleId") {
                    self.ruleId = dict["RuleId"] as! String
                }
                if dict.keys.contains("RuleName") {
                    self.ruleName = dict["RuleName"] as! String
                }
                if dict.keys.contains("Url") {
                    self.url = dict["Url"] as! String
                }
                if dict.keys.contains("VServerGroupId") {
                    self.VServerGroupId = dict["VServerGroupId"] as! String
                }
            }
        }
        public var rule: [DescribeLoadBalancerHTTPListenerAttributeResponseBody.Rules.Rule]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.rule != nil {
                var tmp : [Any] = []
                for k in self.rule! {
                    tmp.append(k.toMap())
                }
                map["Rule"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Rule") {
                var tmp : [DescribeLoadBalancerHTTPListenerAttributeResponseBody.Rules.Rule] = []
                for v in dict["Rule"] as! [Any] {
                    var model = DescribeLoadBalancerHTTPListenerAttributeResponseBody.Rules.Rule()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.rule = tmp
            }
        }
    }
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
                if dict.keys.contains("TagKey") {
                    self.tagKey = dict["TagKey"] as! String
                }
                if dict.keys.contains("TagValue") {
                    self.tagValue = dict["TagValue"] as! String
                }
            }
        }
        public var tag: [DescribeLoadBalancerHTTPListenerAttributeResponseBody.Tags.Tag]?

        public override init() {
            super.init()
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
            if dict.keys.contains("Tag") {
                var tmp : [DescribeLoadBalancerHTTPListenerAttributeResponseBody.Tags.Tag] = []
                for v in dict["Tag"] as! [Any] {
                    var model = DescribeLoadBalancerHTTPListenerAttributeResponseBody.Tags.Tag()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tag = tmp
            }
        }
    }
    public var aclId: String?

    public var aclStatus: String?

    public var aclType: String?

    public var backendServerPort: Int32?

    public var bandwidth: Int32?

    public var cookie: String?

    public var cookieTimeout: Int32?

    public var description_: String?

    public var forwardPort: Int32?

    public var gzip: String?

    public var healthCheck: String?

    public var healthCheckConnectPort: Int32?

    public var healthCheckDomain: String?

    public var healthCheckHttpCode: String?

    public var healthCheckInterval: Int32?

    public var healthCheckMethod: String?

    public var healthCheckTimeout: Int32?

    public var healthCheckURI: String?

    public var healthyThreshold: Int32?

    public var idleTimeout: Int32?

    public var listenerForward: String?

    public var listenerPort: Int32?

    public var loadBalancerId: String?

    public var requestId: String?

    public var requestTimeout: Int32?

    public var rules: DescribeLoadBalancerHTTPListenerAttributeResponseBody.Rules?

    public var scheduler: String?

    public var securityStatus: String?

    public var status: String?

    public var stickySession: String?

    public var stickySessionType: String?

    public var tags: DescribeLoadBalancerHTTPListenerAttributeResponseBody.Tags?

    public var unhealthyThreshold: Int32?

    public var VServerGroupId: String?

    public var XForwardedFor: String?

    public var XForwardedFor_ClientSrcPort: String?

    public var XForwardedFor_SLBID: String?

    public var XForwardedFor_SLBIP: String?

    public var XForwardedFor_SLBPORT: String?

    public var XForwardedFor_proto: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.rules?.validate()
        try self.tags?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclId != nil {
            map["AclId"] = self.aclId!
        }
        if self.aclStatus != nil {
            map["AclStatus"] = self.aclStatus!
        }
        if self.aclType != nil {
            map["AclType"] = self.aclType!
        }
        if self.backendServerPort != nil {
            map["BackendServerPort"] = self.backendServerPort!
        }
        if self.bandwidth != nil {
            map["Bandwidth"] = self.bandwidth!
        }
        if self.cookie != nil {
            map["Cookie"] = self.cookie!
        }
        if self.cookieTimeout != nil {
            map["CookieTimeout"] = self.cookieTimeout!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.forwardPort != nil {
            map["ForwardPort"] = self.forwardPort!
        }
        if self.gzip != nil {
            map["Gzip"] = self.gzip!
        }
        if self.healthCheck != nil {
            map["HealthCheck"] = self.healthCheck!
        }
        if self.healthCheckConnectPort != nil {
            map["HealthCheckConnectPort"] = self.healthCheckConnectPort!
        }
        if self.healthCheckDomain != nil {
            map["HealthCheckDomain"] = self.healthCheckDomain!
        }
        if self.healthCheckHttpCode != nil {
            map["HealthCheckHttpCode"] = self.healthCheckHttpCode!
        }
        if self.healthCheckInterval != nil {
            map["HealthCheckInterval"] = self.healthCheckInterval!
        }
        if self.healthCheckMethod != nil {
            map["HealthCheckMethod"] = self.healthCheckMethod!
        }
        if self.healthCheckTimeout != nil {
            map["HealthCheckTimeout"] = self.healthCheckTimeout!
        }
        if self.healthCheckURI != nil {
            map["HealthCheckURI"] = self.healthCheckURI!
        }
        if self.healthyThreshold != nil {
            map["HealthyThreshold"] = self.healthyThreshold!
        }
        if self.idleTimeout != nil {
            map["IdleTimeout"] = self.idleTimeout!
        }
        if self.listenerForward != nil {
            map["ListenerForward"] = self.listenerForward!
        }
        if self.listenerPort != nil {
            map["ListenerPort"] = self.listenerPort!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.requestTimeout != nil {
            map["RequestTimeout"] = self.requestTimeout!
        }
        if self.rules != nil {
            map["Rules"] = self.rules?.toMap()
        }
        if self.scheduler != nil {
            map["Scheduler"] = self.scheduler!
        }
        if self.securityStatus != nil {
            map["SecurityStatus"] = self.securityStatus!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.stickySession != nil {
            map["StickySession"] = self.stickySession!
        }
        if self.stickySessionType != nil {
            map["StickySessionType"] = self.stickySessionType!
        }
        if self.tags != nil {
            map["Tags"] = self.tags?.toMap()
        }
        if self.unhealthyThreshold != nil {
            map["UnhealthyThreshold"] = self.unhealthyThreshold!
        }
        if self.VServerGroupId != nil {
            map["VServerGroupId"] = self.VServerGroupId!
        }
        if self.XForwardedFor != nil {
            map["XForwardedFor"] = self.XForwardedFor!
        }
        if self.XForwardedFor_ClientSrcPort != nil {
            map["XForwardedFor_ClientSrcPort"] = self.XForwardedFor_ClientSrcPort!
        }
        if self.XForwardedFor_SLBID != nil {
            map["XForwardedFor_SLBID"] = self.XForwardedFor_SLBID!
        }
        if self.XForwardedFor_SLBIP != nil {
            map["XForwardedFor_SLBIP"] = self.XForwardedFor_SLBIP!
        }
        if self.XForwardedFor_SLBPORT != nil {
            map["XForwardedFor_SLBPORT"] = self.XForwardedFor_SLBPORT!
        }
        if self.XForwardedFor_proto != nil {
            map["XForwardedFor_proto"] = self.XForwardedFor_proto!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclId") {
            self.aclId = dict["AclId"] as! String
        }
        if dict.keys.contains("AclStatus") {
            self.aclStatus = dict["AclStatus"] as! String
        }
        if dict.keys.contains("AclType") {
            self.aclType = dict["AclType"] as! String
        }
        if dict.keys.contains("BackendServerPort") {
            self.backendServerPort = dict["BackendServerPort"] as! Int32
        }
        if dict.keys.contains("Bandwidth") {
            self.bandwidth = dict["Bandwidth"] as! Int32
        }
        if dict.keys.contains("Cookie") {
            self.cookie = dict["Cookie"] as! String
        }
        if dict.keys.contains("CookieTimeout") {
            self.cookieTimeout = dict["CookieTimeout"] as! Int32
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ForwardPort") {
            self.forwardPort = dict["ForwardPort"] as! Int32
        }
        if dict.keys.contains("Gzip") {
            self.gzip = dict["Gzip"] as! String
        }
        if dict.keys.contains("HealthCheck") {
            self.healthCheck = dict["HealthCheck"] as! String
        }
        if dict.keys.contains("HealthCheckConnectPort") {
            self.healthCheckConnectPort = dict["HealthCheckConnectPort"] as! Int32
        }
        if dict.keys.contains("HealthCheckDomain") {
            self.healthCheckDomain = dict["HealthCheckDomain"] as! String
        }
        if dict.keys.contains("HealthCheckHttpCode") {
            self.healthCheckHttpCode = dict["HealthCheckHttpCode"] as! String
        }
        if dict.keys.contains("HealthCheckInterval") {
            self.healthCheckInterval = dict["HealthCheckInterval"] as! Int32
        }
        if dict.keys.contains("HealthCheckMethod") {
            self.healthCheckMethod = dict["HealthCheckMethod"] as! String
        }
        if dict.keys.contains("HealthCheckTimeout") {
            self.healthCheckTimeout = dict["HealthCheckTimeout"] as! Int32
        }
        if dict.keys.contains("HealthCheckURI") {
            self.healthCheckURI = dict["HealthCheckURI"] as! String
        }
        if dict.keys.contains("HealthyThreshold") {
            self.healthyThreshold = dict["HealthyThreshold"] as! Int32
        }
        if dict.keys.contains("IdleTimeout") {
            self.idleTimeout = dict["IdleTimeout"] as! Int32
        }
        if dict.keys.contains("ListenerForward") {
            self.listenerForward = dict["ListenerForward"] as! String
        }
        if dict.keys.contains("ListenerPort") {
            self.listenerPort = dict["ListenerPort"] as! Int32
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RequestTimeout") {
            self.requestTimeout = dict["RequestTimeout"] as! Int32
        }
        if dict.keys.contains("Rules") {
            var model = DescribeLoadBalancerHTTPListenerAttributeResponseBody.Rules()
            model.fromMap(dict["Rules"] as! [String: Any])
            self.rules = model
        }
        if dict.keys.contains("Scheduler") {
            self.scheduler = dict["Scheduler"] as! String
        }
        if dict.keys.contains("SecurityStatus") {
            self.securityStatus = dict["SecurityStatus"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("StickySession") {
            self.stickySession = dict["StickySession"] as! String
        }
        if dict.keys.contains("StickySessionType") {
            self.stickySessionType = dict["StickySessionType"] as! String
        }
        if dict.keys.contains("Tags") {
            var model = DescribeLoadBalancerHTTPListenerAttributeResponseBody.Tags()
            model.fromMap(dict["Tags"] as! [String: Any])
            self.tags = model
        }
        if dict.keys.contains("UnhealthyThreshold") {
            self.unhealthyThreshold = dict["UnhealthyThreshold"] as! Int32
        }
        if dict.keys.contains("VServerGroupId") {
            self.VServerGroupId = dict["VServerGroupId"] as! String
        }
        if dict.keys.contains("XForwardedFor") {
            self.XForwardedFor = dict["XForwardedFor"] as! String
        }
        if dict.keys.contains("XForwardedFor_ClientSrcPort") {
            self.XForwardedFor_ClientSrcPort = dict["XForwardedFor_ClientSrcPort"] as! String
        }
        if dict.keys.contains("XForwardedFor_SLBID") {
            self.XForwardedFor_SLBID = dict["XForwardedFor_SLBID"] as! String
        }
        if dict.keys.contains("XForwardedFor_SLBIP") {
            self.XForwardedFor_SLBIP = dict["XForwardedFor_SLBIP"] as! String
        }
        if dict.keys.contains("XForwardedFor_SLBPORT") {
            self.XForwardedFor_SLBPORT = dict["XForwardedFor_SLBPORT"] as! String
        }
        if dict.keys.contains("XForwardedFor_proto") {
            self.XForwardedFor_proto = dict["XForwardedFor_proto"] as! String
        }
    }
}

public class DescribeLoadBalancerHTTPListenerAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeLoadBalancerHTTPListenerAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeLoadBalancerHTTPListenerAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeLoadBalancerHTTPSListenerAttributeRequest : Tea.TeaModel {
    public var listenerPort: Int32?

    public var loadBalancerId: String?

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
        if self.listenerPort != nil {
            map["ListenerPort"] = self.listenerPort!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
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
        if dict.keys.contains("ListenerPort") {
            self.listenerPort = dict["ListenerPort"] as! Int32
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
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

public class DescribeLoadBalancerHTTPSListenerAttributeResponseBody : Tea.TeaModel {
    public class DomainExtensions : Tea.TeaModel {
        public class DomainExtension : Tea.TeaModel {
            public var domain: String?

            public var domainExtensionId: String?

            public var serverCertificateId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.domain != nil {
                    map["Domain"] = self.domain!
                }
                if self.domainExtensionId != nil {
                    map["DomainExtensionId"] = self.domainExtensionId!
                }
                if self.serverCertificateId != nil {
                    map["ServerCertificateId"] = self.serverCertificateId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Domain") {
                    self.domain = dict["Domain"] as! String
                }
                if dict.keys.contains("DomainExtensionId") {
                    self.domainExtensionId = dict["DomainExtensionId"] as! String
                }
                if dict.keys.contains("ServerCertificateId") {
                    self.serverCertificateId = dict["ServerCertificateId"] as! String
                }
            }
        }
        public var domainExtension: [DescribeLoadBalancerHTTPSListenerAttributeResponseBody.DomainExtensions.DomainExtension]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.domainExtension != nil {
                var tmp : [Any] = []
                for k in self.domainExtension! {
                    tmp.append(k.toMap())
                }
                map["DomainExtension"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DomainExtension") {
                var tmp : [DescribeLoadBalancerHTTPSListenerAttributeResponseBody.DomainExtensions.DomainExtension] = []
                for v in dict["DomainExtension"] as! [Any] {
                    var model = DescribeLoadBalancerHTTPSListenerAttributeResponseBody.DomainExtensions.DomainExtension()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.domainExtension = tmp
            }
        }
    }
    public class Rules : Tea.TeaModel {
        public class Rule : Tea.TeaModel {
            public var domain: String?

            public var ruleId: String?

            public var ruleName: String?

            public var url: String?

            public var VServerGroupId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.domain != nil {
                    map["Domain"] = self.domain!
                }
                if self.ruleId != nil {
                    map["RuleId"] = self.ruleId!
                }
                if self.ruleName != nil {
                    map["RuleName"] = self.ruleName!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                if self.VServerGroupId != nil {
                    map["VServerGroupId"] = self.VServerGroupId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Domain") {
                    self.domain = dict["Domain"] as! String
                }
                if dict.keys.contains("RuleId") {
                    self.ruleId = dict["RuleId"] as! String
                }
                if dict.keys.contains("RuleName") {
                    self.ruleName = dict["RuleName"] as! String
                }
                if dict.keys.contains("Url") {
                    self.url = dict["Url"] as! String
                }
                if dict.keys.contains("VServerGroupId") {
                    self.VServerGroupId = dict["VServerGroupId"] as! String
                }
            }
        }
        public var rule: [DescribeLoadBalancerHTTPSListenerAttributeResponseBody.Rules.Rule]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.rule != nil {
                var tmp : [Any] = []
                for k in self.rule! {
                    tmp.append(k.toMap())
                }
                map["Rule"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Rule") {
                var tmp : [DescribeLoadBalancerHTTPSListenerAttributeResponseBody.Rules.Rule] = []
                for v in dict["Rule"] as! [Any] {
                    var model = DescribeLoadBalancerHTTPSListenerAttributeResponseBody.Rules.Rule()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.rule = tmp
            }
        }
    }
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
                if dict.keys.contains("TagKey") {
                    self.tagKey = dict["TagKey"] as! String
                }
                if dict.keys.contains("TagValue") {
                    self.tagValue = dict["TagValue"] as! String
                }
            }
        }
        public var tag: [DescribeLoadBalancerHTTPSListenerAttributeResponseBody.Tags.Tag]?

        public override init() {
            super.init()
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
            if dict.keys.contains("Tag") {
                var tmp : [DescribeLoadBalancerHTTPSListenerAttributeResponseBody.Tags.Tag] = []
                for v in dict["Tag"] as! [Any] {
                    var model = DescribeLoadBalancerHTTPSListenerAttributeResponseBody.Tags.Tag()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tag = tmp
            }
        }
    }
    public var aclId: String?

    public var aclStatus: String?

    public var aclType: String?

    public var backendServerPort: Int32?

    public var bandwidth: Int32?

    public var CACertificateId: String?

    public var cookie: String?

    public var cookieTimeout: Int32?

    public var description_: String?

    public var domainExtensions: DescribeLoadBalancerHTTPSListenerAttributeResponseBody.DomainExtensions?

    public var enableHttp2: String?

    public var gzip: String?

    public var healthCheck: String?

    public var healthCheckConnectPort: Int32?

    public var healthCheckDomain: String?

    public var healthCheckHttpCode: String?

    public var healthCheckInterval: Int32?

    public var healthCheckMethod: String?

    public var healthCheckTimeout: Int32?

    public var healthCheckURI: String?

    public var healthyThreshold: Int32?

    public var idleTimeout: Int32?

    public var listenerPort: Int32?

    public var loadBalancerId: String?

    public var requestId: String?

    public var requestTimeout: Int32?

    public var rules: DescribeLoadBalancerHTTPSListenerAttributeResponseBody.Rules?

    public var scheduler: String?

    public var securityStatus: String?

    public var serverCertificateId: String?

    public var status: String?

    public var stickySession: String?

    public var stickySessionType: String?

    public var TLSCipherPolicy: String?

    public var tags: DescribeLoadBalancerHTTPSListenerAttributeResponseBody.Tags?

    public var unhealthyThreshold: Int32?

    public var VServerGroupId: String?

    public var XForwardedFor: String?

    public var XForwardedFor_ClientCertClientVerify: String?

    public var XForwardedFor_ClientCertFingerprint: String?

    public var XForwardedFor_ClientCertIssuerDN: String?

    public var XForwardedFor_ClientCertSubjectDN: String?

    public var XForwardedFor_ClientSrcPort: String?

    public var XForwardedFor_SLBID: String?

    public var XForwardedFor_SLBIP: String?

    public var XForwardedFor_SLBPORT: String?

    public var XForwardedFor_proto: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.domainExtensions?.validate()
        try self.rules?.validate()
        try self.tags?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclId != nil {
            map["AclId"] = self.aclId!
        }
        if self.aclStatus != nil {
            map["AclStatus"] = self.aclStatus!
        }
        if self.aclType != nil {
            map["AclType"] = self.aclType!
        }
        if self.backendServerPort != nil {
            map["BackendServerPort"] = self.backendServerPort!
        }
        if self.bandwidth != nil {
            map["Bandwidth"] = self.bandwidth!
        }
        if self.CACertificateId != nil {
            map["CACertificateId"] = self.CACertificateId!
        }
        if self.cookie != nil {
            map["Cookie"] = self.cookie!
        }
        if self.cookieTimeout != nil {
            map["CookieTimeout"] = self.cookieTimeout!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.domainExtensions != nil {
            map["DomainExtensions"] = self.domainExtensions?.toMap()
        }
        if self.enableHttp2 != nil {
            map["EnableHttp2"] = self.enableHttp2!
        }
        if self.gzip != nil {
            map["Gzip"] = self.gzip!
        }
        if self.healthCheck != nil {
            map["HealthCheck"] = self.healthCheck!
        }
        if self.healthCheckConnectPort != nil {
            map["HealthCheckConnectPort"] = self.healthCheckConnectPort!
        }
        if self.healthCheckDomain != nil {
            map["HealthCheckDomain"] = self.healthCheckDomain!
        }
        if self.healthCheckHttpCode != nil {
            map["HealthCheckHttpCode"] = self.healthCheckHttpCode!
        }
        if self.healthCheckInterval != nil {
            map["HealthCheckInterval"] = self.healthCheckInterval!
        }
        if self.healthCheckMethod != nil {
            map["HealthCheckMethod"] = self.healthCheckMethod!
        }
        if self.healthCheckTimeout != nil {
            map["HealthCheckTimeout"] = self.healthCheckTimeout!
        }
        if self.healthCheckURI != nil {
            map["HealthCheckURI"] = self.healthCheckURI!
        }
        if self.healthyThreshold != nil {
            map["HealthyThreshold"] = self.healthyThreshold!
        }
        if self.idleTimeout != nil {
            map["IdleTimeout"] = self.idleTimeout!
        }
        if self.listenerPort != nil {
            map["ListenerPort"] = self.listenerPort!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.requestTimeout != nil {
            map["RequestTimeout"] = self.requestTimeout!
        }
        if self.rules != nil {
            map["Rules"] = self.rules?.toMap()
        }
        if self.scheduler != nil {
            map["Scheduler"] = self.scheduler!
        }
        if self.securityStatus != nil {
            map["SecurityStatus"] = self.securityStatus!
        }
        if self.serverCertificateId != nil {
            map["ServerCertificateId"] = self.serverCertificateId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.stickySession != nil {
            map["StickySession"] = self.stickySession!
        }
        if self.stickySessionType != nil {
            map["StickySessionType"] = self.stickySessionType!
        }
        if self.TLSCipherPolicy != nil {
            map["TLSCipherPolicy"] = self.TLSCipherPolicy!
        }
        if self.tags != nil {
            map["Tags"] = self.tags?.toMap()
        }
        if self.unhealthyThreshold != nil {
            map["UnhealthyThreshold"] = self.unhealthyThreshold!
        }
        if self.VServerGroupId != nil {
            map["VServerGroupId"] = self.VServerGroupId!
        }
        if self.XForwardedFor != nil {
            map["XForwardedFor"] = self.XForwardedFor!
        }
        if self.XForwardedFor_ClientCertClientVerify != nil {
            map["XForwardedFor_ClientCertClientVerify"] = self.XForwardedFor_ClientCertClientVerify!
        }
        if self.XForwardedFor_ClientCertFingerprint != nil {
            map["XForwardedFor_ClientCertFingerprint"] = self.XForwardedFor_ClientCertFingerprint!
        }
        if self.XForwardedFor_ClientCertIssuerDN != nil {
            map["XForwardedFor_ClientCertIssuerDN"] = self.XForwardedFor_ClientCertIssuerDN!
        }
        if self.XForwardedFor_ClientCertSubjectDN != nil {
            map["XForwardedFor_ClientCertSubjectDN"] = self.XForwardedFor_ClientCertSubjectDN!
        }
        if self.XForwardedFor_ClientSrcPort != nil {
            map["XForwardedFor_ClientSrcPort"] = self.XForwardedFor_ClientSrcPort!
        }
        if self.XForwardedFor_SLBID != nil {
            map["XForwardedFor_SLBID"] = self.XForwardedFor_SLBID!
        }
        if self.XForwardedFor_SLBIP != nil {
            map["XForwardedFor_SLBIP"] = self.XForwardedFor_SLBIP!
        }
        if self.XForwardedFor_SLBPORT != nil {
            map["XForwardedFor_SLBPORT"] = self.XForwardedFor_SLBPORT!
        }
        if self.XForwardedFor_proto != nil {
            map["XForwardedFor_proto"] = self.XForwardedFor_proto!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclId") {
            self.aclId = dict["AclId"] as! String
        }
        if dict.keys.contains("AclStatus") {
            self.aclStatus = dict["AclStatus"] as! String
        }
        if dict.keys.contains("AclType") {
            self.aclType = dict["AclType"] as! String
        }
        if dict.keys.contains("BackendServerPort") {
            self.backendServerPort = dict["BackendServerPort"] as! Int32
        }
        if dict.keys.contains("Bandwidth") {
            self.bandwidth = dict["Bandwidth"] as! Int32
        }
        if dict.keys.contains("CACertificateId") {
            self.CACertificateId = dict["CACertificateId"] as! String
        }
        if dict.keys.contains("Cookie") {
            self.cookie = dict["Cookie"] as! String
        }
        if dict.keys.contains("CookieTimeout") {
            self.cookieTimeout = dict["CookieTimeout"] as! Int32
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DomainExtensions") {
            var model = DescribeLoadBalancerHTTPSListenerAttributeResponseBody.DomainExtensions()
            model.fromMap(dict["DomainExtensions"] as! [String: Any])
            self.domainExtensions = model
        }
        if dict.keys.contains("EnableHttp2") {
            self.enableHttp2 = dict["EnableHttp2"] as! String
        }
        if dict.keys.contains("Gzip") {
            self.gzip = dict["Gzip"] as! String
        }
        if dict.keys.contains("HealthCheck") {
            self.healthCheck = dict["HealthCheck"] as! String
        }
        if dict.keys.contains("HealthCheckConnectPort") {
            self.healthCheckConnectPort = dict["HealthCheckConnectPort"] as! Int32
        }
        if dict.keys.contains("HealthCheckDomain") {
            self.healthCheckDomain = dict["HealthCheckDomain"] as! String
        }
        if dict.keys.contains("HealthCheckHttpCode") {
            self.healthCheckHttpCode = dict["HealthCheckHttpCode"] as! String
        }
        if dict.keys.contains("HealthCheckInterval") {
            self.healthCheckInterval = dict["HealthCheckInterval"] as! Int32
        }
        if dict.keys.contains("HealthCheckMethod") {
            self.healthCheckMethod = dict["HealthCheckMethod"] as! String
        }
        if dict.keys.contains("HealthCheckTimeout") {
            self.healthCheckTimeout = dict["HealthCheckTimeout"] as! Int32
        }
        if dict.keys.contains("HealthCheckURI") {
            self.healthCheckURI = dict["HealthCheckURI"] as! String
        }
        if dict.keys.contains("HealthyThreshold") {
            self.healthyThreshold = dict["HealthyThreshold"] as! Int32
        }
        if dict.keys.contains("IdleTimeout") {
            self.idleTimeout = dict["IdleTimeout"] as! Int32
        }
        if dict.keys.contains("ListenerPort") {
            self.listenerPort = dict["ListenerPort"] as! Int32
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RequestTimeout") {
            self.requestTimeout = dict["RequestTimeout"] as! Int32
        }
        if dict.keys.contains("Rules") {
            var model = DescribeLoadBalancerHTTPSListenerAttributeResponseBody.Rules()
            model.fromMap(dict["Rules"] as! [String: Any])
            self.rules = model
        }
        if dict.keys.contains("Scheduler") {
            self.scheduler = dict["Scheduler"] as! String
        }
        if dict.keys.contains("SecurityStatus") {
            self.securityStatus = dict["SecurityStatus"] as! String
        }
        if dict.keys.contains("ServerCertificateId") {
            self.serverCertificateId = dict["ServerCertificateId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("StickySession") {
            self.stickySession = dict["StickySession"] as! String
        }
        if dict.keys.contains("StickySessionType") {
            self.stickySessionType = dict["StickySessionType"] as! String
        }
        if dict.keys.contains("TLSCipherPolicy") {
            self.TLSCipherPolicy = dict["TLSCipherPolicy"] as! String
        }
        if dict.keys.contains("Tags") {
            var model = DescribeLoadBalancerHTTPSListenerAttributeResponseBody.Tags()
            model.fromMap(dict["Tags"] as! [String: Any])
            self.tags = model
        }
        if dict.keys.contains("UnhealthyThreshold") {
            self.unhealthyThreshold = dict["UnhealthyThreshold"] as! Int32
        }
        if dict.keys.contains("VServerGroupId") {
            self.VServerGroupId = dict["VServerGroupId"] as! String
        }
        if dict.keys.contains("XForwardedFor") {
            self.XForwardedFor = dict["XForwardedFor"] as! String
        }
        if dict.keys.contains("XForwardedFor_ClientCertClientVerify") {
            self.XForwardedFor_ClientCertClientVerify = dict["XForwardedFor_ClientCertClientVerify"] as! String
        }
        if dict.keys.contains("XForwardedFor_ClientCertFingerprint") {
            self.XForwardedFor_ClientCertFingerprint = dict["XForwardedFor_ClientCertFingerprint"] as! String
        }
        if dict.keys.contains("XForwardedFor_ClientCertIssuerDN") {
            self.XForwardedFor_ClientCertIssuerDN = dict["XForwardedFor_ClientCertIssuerDN"] as! String
        }
        if dict.keys.contains("XForwardedFor_ClientCertSubjectDN") {
            self.XForwardedFor_ClientCertSubjectDN = dict["XForwardedFor_ClientCertSubjectDN"] as! String
        }
        if dict.keys.contains("XForwardedFor_ClientSrcPort") {
            self.XForwardedFor_ClientSrcPort = dict["XForwardedFor_ClientSrcPort"] as! String
        }
        if dict.keys.contains("XForwardedFor_SLBID") {
            self.XForwardedFor_SLBID = dict["XForwardedFor_SLBID"] as! String
        }
        if dict.keys.contains("XForwardedFor_SLBIP") {
            self.XForwardedFor_SLBIP = dict["XForwardedFor_SLBIP"] as! String
        }
        if dict.keys.contains("XForwardedFor_SLBPORT") {
            self.XForwardedFor_SLBPORT = dict["XForwardedFor_SLBPORT"] as! String
        }
        if dict.keys.contains("XForwardedFor_proto") {
            self.XForwardedFor_proto = dict["XForwardedFor_proto"] as! String
        }
    }
}

public class DescribeLoadBalancerHTTPSListenerAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeLoadBalancerHTTPSListenerAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeLoadBalancerHTTPSListenerAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeLoadBalancerListenersRequest : Tea.TeaModel {
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
    public var description_: String?

    public var listenerPort: Int32?

    public var listenerProtocol: String?

    public var loadBalancerId: [String]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tag: [DescribeLoadBalancerListenersRequest.Tag]?

    public override init() {
        super.init()
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
        if self.listenerPort != nil {
            map["ListenerPort"] = self.listenerPort!
        }
        if self.listenerProtocol != nil {
            map["ListenerProtocol"] = self.listenerProtocol!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ListenerPort") {
            self.listenerPort = dict["ListenerPort"] as! Int32
        }
        if dict.keys.contains("ListenerProtocol") {
            self.listenerProtocol = dict["ListenerProtocol"] as! String
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! [String]
        }
        if dict.keys.contains("MaxResults") {
            self.maxResults = dict["MaxResults"] as! Int32
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
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
        if dict.keys.contains("Tag") {
            var tmp : [DescribeLoadBalancerListenersRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = DescribeLoadBalancerListenersRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class DescribeLoadBalancerListenersResponseBody : Tea.TeaModel {
    public class Listeners : Tea.TeaModel {
        public class HTTPListenerConfig : Tea.TeaModel {
            public var cookie: String?

            public var cookieTimeout: Int32?

            public var forwardPort: Int32?

            public var gzip: String?

            public var healthCheck: String?

            public var healthCheckConnectPort: Int32?

            public var healthCheckDomain: String?

            public var healthCheckHttpCode: String?

            public var healthCheckHttpVersion: String?

            public var healthCheckInterval: Int32?

            public var healthCheckMethod: String?

            public var healthCheckTimeout: Int32?

            public var healthCheckType: String?

            public var healthCheckURI: String?

            public var healthyThreshold: Int32?

            public var idleTimeout: Int32?

            public var listenerForward: String?

            public var requestTimeout: Int32?

            public var stickySession: String?

            public var stickySessionType: String?

            public var unhealthyThreshold: Int32?

            public var XForwardedFor: String?

            public var XForwardedFor_ClientSrcPort: String?

            public var XForwardedFor_SLBID: String?

            public var XForwardedFor_SLBIP: String?

            public var XForwardedFor_SLBPORT: String?

            public var XForwardedFor_proto: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cookie != nil {
                    map["Cookie"] = self.cookie!
                }
                if self.cookieTimeout != nil {
                    map["CookieTimeout"] = self.cookieTimeout!
                }
                if self.forwardPort != nil {
                    map["ForwardPort"] = self.forwardPort!
                }
                if self.gzip != nil {
                    map["Gzip"] = self.gzip!
                }
                if self.healthCheck != nil {
                    map["HealthCheck"] = self.healthCheck!
                }
                if self.healthCheckConnectPort != nil {
                    map["HealthCheckConnectPort"] = self.healthCheckConnectPort!
                }
                if self.healthCheckDomain != nil {
                    map["HealthCheckDomain"] = self.healthCheckDomain!
                }
                if self.healthCheckHttpCode != nil {
                    map["HealthCheckHttpCode"] = self.healthCheckHttpCode!
                }
                if self.healthCheckHttpVersion != nil {
                    map["HealthCheckHttpVersion"] = self.healthCheckHttpVersion!
                }
                if self.healthCheckInterval != nil {
                    map["HealthCheckInterval"] = self.healthCheckInterval!
                }
                if self.healthCheckMethod != nil {
                    map["HealthCheckMethod"] = self.healthCheckMethod!
                }
                if self.healthCheckTimeout != nil {
                    map["HealthCheckTimeout"] = self.healthCheckTimeout!
                }
                if self.healthCheckType != nil {
                    map["HealthCheckType"] = self.healthCheckType!
                }
                if self.healthCheckURI != nil {
                    map["HealthCheckURI"] = self.healthCheckURI!
                }
                if self.healthyThreshold != nil {
                    map["HealthyThreshold"] = self.healthyThreshold!
                }
                if self.idleTimeout != nil {
                    map["IdleTimeout"] = self.idleTimeout!
                }
                if self.listenerForward != nil {
                    map["ListenerForward"] = self.listenerForward!
                }
                if self.requestTimeout != nil {
                    map["RequestTimeout"] = self.requestTimeout!
                }
                if self.stickySession != nil {
                    map["StickySession"] = self.stickySession!
                }
                if self.stickySessionType != nil {
                    map["StickySessionType"] = self.stickySessionType!
                }
                if self.unhealthyThreshold != nil {
                    map["UnhealthyThreshold"] = self.unhealthyThreshold!
                }
                if self.XForwardedFor != nil {
                    map["XForwardedFor"] = self.XForwardedFor!
                }
                if self.XForwardedFor_ClientSrcPort != nil {
                    map["XForwardedFor_ClientSrcPort"] = self.XForwardedFor_ClientSrcPort!
                }
                if self.XForwardedFor_SLBID != nil {
                    map["XForwardedFor_SLBID"] = self.XForwardedFor_SLBID!
                }
                if self.XForwardedFor_SLBIP != nil {
                    map["XForwardedFor_SLBIP"] = self.XForwardedFor_SLBIP!
                }
                if self.XForwardedFor_SLBPORT != nil {
                    map["XForwardedFor_SLBPORT"] = self.XForwardedFor_SLBPORT!
                }
                if self.XForwardedFor_proto != nil {
                    map["XForwardedFor_proto"] = self.XForwardedFor_proto!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Cookie") {
                    self.cookie = dict["Cookie"] as! String
                }
                if dict.keys.contains("CookieTimeout") {
                    self.cookieTimeout = dict["CookieTimeout"] as! Int32
                }
                if dict.keys.contains("ForwardPort") {
                    self.forwardPort = dict["ForwardPort"] as! Int32
                }
                if dict.keys.contains("Gzip") {
                    self.gzip = dict["Gzip"] as! String
                }
                if dict.keys.contains("HealthCheck") {
                    self.healthCheck = dict["HealthCheck"] as! String
                }
                if dict.keys.contains("HealthCheckConnectPort") {
                    self.healthCheckConnectPort = dict["HealthCheckConnectPort"] as! Int32
                }
                if dict.keys.contains("HealthCheckDomain") {
                    self.healthCheckDomain = dict["HealthCheckDomain"] as! String
                }
                if dict.keys.contains("HealthCheckHttpCode") {
                    self.healthCheckHttpCode = dict["HealthCheckHttpCode"] as! String
                }
                if dict.keys.contains("HealthCheckHttpVersion") {
                    self.healthCheckHttpVersion = dict["HealthCheckHttpVersion"] as! String
                }
                if dict.keys.contains("HealthCheckInterval") {
                    self.healthCheckInterval = dict["HealthCheckInterval"] as! Int32
                }
                if dict.keys.contains("HealthCheckMethod") {
                    self.healthCheckMethod = dict["HealthCheckMethod"] as! String
                }
                if dict.keys.contains("HealthCheckTimeout") {
                    self.healthCheckTimeout = dict["HealthCheckTimeout"] as! Int32
                }
                if dict.keys.contains("HealthCheckType") {
                    self.healthCheckType = dict["HealthCheckType"] as! String
                }
                if dict.keys.contains("HealthCheckURI") {
                    self.healthCheckURI = dict["HealthCheckURI"] as! String
                }
                if dict.keys.contains("HealthyThreshold") {
                    self.healthyThreshold = dict["HealthyThreshold"] as! Int32
                }
                if dict.keys.contains("IdleTimeout") {
                    self.idleTimeout = dict["IdleTimeout"] as! Int32
                }
                if dict.keys.contains("ListenerForward") {
                    self.listenerForward = dict["ListenerForward"] as! String
                }
                if dict.keys.contains("RequestTimeout") {
                    self.requestTimeout = dict["RequestTimeout"] as! Int32
                }
                if dict.keys.contains("StickySession") {
                    self.stickySession = dict["StickySession"] as! String
                }
                if dict.keys.contains("StickySessionType") {
                    self.stickySessionType = dict["StickySessionType"] as! String
                }
                if dict.keys.contains("UnhealthyThreshold") {
                    self.unhealthyThreshold = dict["UnhealthyThreshold"] as! Int32
                }
                if dict.keys.contains("XForwardedFor") {
                    self.XForwardedFor = dict["XForwardedFor"] as! String
                }
                if dict.keys.contains("XForwardedFor_ClientSrcPort") {
                    self.XForwardedFor_ClientSrcPort = dict["XForwardedFor_ClientSrcPort"] as! String
                }
                if dict.keys.contains("XForwardedFor_SLBID") {
                    self.XForwardedFor_SLBID = dict["XForwardedFor_SLBID"] as! String
                }
                if dict.keys.contains("XForwardedFor_SLBIP") {
                    self.XForwardedFor_SLBIP = dict["XForwardedFor_SLBIP"] as! String
                }
                if dict.keys.contains("XForwardedFor_SLBPORT") {
                    self.XForwardedFor_SLBPORT = dict["XForwardedFor_SLBPORT"] as! String
                }
                if dict.keys.contains("XForwardedFor_proto") {
                    self.XForwardedFor_proto = dict["XForwardedFor_proto"] as! String
                }
            }
        }
        public class HTTPSListenerConfig : Tea.TeaModel {
            public var CACertificateId: String?

            public var cookie: String?

            public var cookieTimeout: Int32?

            public var enableHttp2: String?

            public var gzip: String?

            public var healthCheck: String?

            public var healthCheckConnectPort: Int32?

            public var healthCheckDomain: String?

            public var healthCheckHttpCode: String?

            public var healthCheckHttpVersion: String?

            public var healthCheckInterval: Int32?

            public var healthCheckMethod: String?

            public var healthCheckTimeout: Int32?

            public var healthCheckType: String?

            public var healthCheckURI: String?

            public var healthyThreshold: Int32?

            public var idleTimeout: Int32?

            public var requestTimeout: Int32?

            public var serverCertificateId: String?

            public var stickySession: String?

            public var stickySessionType: String?

            public var TLSCipherPolicy: String?

            public var unhealthyThreshold: Int32?

            public var XForwardedFor: String?

            public var XForwardedFor_ClientCertClientVerify: String?

            public var XForwardedFor_ClientCertFingerprint: String?

            public var XForwardedFor_ClientCertIssuerDN: String?

            public var XForwardedFor_ClientCertSubjectDN: String?

            public var XForwardedFor_ClientSrcPort: String?

            public var XForwardedFor_SLBID: String?

            public var XForwardedFor_SLBIP: String?

            public var XForwardedFor_SLBPORT: String?

            public var XForwardedFor_proto: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.CACertificateId != nil {
                    map["CACertificateId"] = self.CACertificateId!
                }
                if self.cookie != nil {
                    map["Cookie"] = self.cookie!
                }
                if self.cookieTimeout != nil {
                    map["CookieTimeout"] = self.cookieTimeout!
                }
                if self.enableHttp2 != nil {
                    map["EnableHttp2"] = self.enableHttp2!
                }
                if self.gzip != nil {
                    map["Gzip"] = self.gzip!
                }
                if self.healthCheck != nil {
                    map["HealthCheck"] = self.healthCheck!
                }
                if self.healthCheckConnectPort != nil {
                    map["HealthCheckConnectPort"] = self.healthCheckConnectPort!
                }
                if self.healthCheckDomain != nil {
                    map["HealthCheckDomain"] = self.healthCheckDomain!
                }
                if self.healthCheckHttpCode != nil {
                    map["HealthCheckHttpCode"] = self.healthCheckHttpCode!
                }
                if self.healthCheckHttpVersion != nil {
                    map["HealthCheckHttpVersion"] = self.healthCheckHttpVersion!
                }
                if self.healthCheckInterval != nil {
                    map["HealthCheckInterval"] = self.healthCheckInterval!
                }
                if self.healthCheckMethod != nil {
                    map["HealthCheckMethod"] = self.healthCheckMethod!
                }
                if self.healthCheckTimeout != nil {
                    map["HealthCheckTimeout"] = self.healthCheckTimeout!
                }
                if self.healthCheckType != nil {
                    map["HealthCheckType"] = self.healthCheckType!
                }
                if self.healthCheckURI != nil {
                    map["HealthCheckURI"] = self.healthCheckURI!
                }
                if self.healthyThreshold != nil {
                    map["HealthyThreshold"] = self.healthyThreshold!
                }
                if self.idleTimeout != nil {
                    map["IdleTimeout"] = self.idleTimeout!
                }
                if self.requestTimeout != nil {
                    map["RequestTimeout"] = self.requestTimeout!
                }
                if self.serverCertificateId != nil {
                    map["ServerCertificateId"] = self.serverCertificateId!
                }
                if self.stickySession != nil {
                    map["StickySession"] = self.stickySession!
                }
                if self.stickySessionType != nil {
                    map["StickySessionType"] = self.stickySessionType!
                }
                if self.TLSCipherPolicy != nil {
                    map["TLSCipherPolicy"] = self.TLSCipherPolicy!
                }
                if self.unhealthyThreshold != nil {
                    map["UnhealthyThreshold"] = self.unhealthyThreshold!
                }
                if self.XForwardedFor != nil {
                    map["XForwardedFor"] = self.XForwardedFor!
                }
                if self.XForwardedFor_ClientCertClientVerify != nil {
                    map["XForwardedFor_ClientCertClientVerify"] = self.XForwardedFor_ClientCertClientVerify!
                }
                if self.XForwardedFor_ClientCertFingerprint != nil {
                    map["XForwardedFor_ClientCertFingerprint"] = self.XForwardedFor_ClientCertFingerprint!
                }
                if self.XForwardedFor_ClientCertIssuerDN != nil {
                    map["XForwardedFor_ClientCertIssuerDN"] = self.XForwardedFor_ClientCertIssuerDN!
                }
                if self.XForwardedFor_ClientCertSubjectDN != nil {
                    map["XForwardedFor_ClientCertSubjectDN"] = self.XForwardedFor_ClientCertSubjectDN!
                }
                if self.XForwardedFor_ClientSrcPort != nil {
                    map["XForwardedFor_ClientSrcPort"] = self.XForwardedFor_ClientSrcPort!
                }
                if self.XForwardedFor_SLBID != nil {
                    map["XForwardedFor_SLBID"] = self.XForwardedFor_SLBID!
                }
                if self.XForwardedFor_SLBIP != nil {
                    map["XForwardedFor_SLBIP"] = self.XForwardedFor_SLBIP!
                }
                if self.XForwardedFor_SLBPORT != nil {
                    map["XForwardedFor_SLBPORT"] = self.XForwardedFor_SLBPORT!
                }
                if self.XForwardedFor_proto != nil {
                    map["XForwardedFor_proto"] = self.XForwardedFor_proto!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CACertificateId") {
                    self.CACertificateId = dict["CACertificateId"] as! String
                }
                if dict.keys.contains("Cookie") {
                    self.cookie = dict["Cookie"] as! String
                }
                if dict.keys.contains("CookieTimeout") {
                    self.cookieTimeout = dict["CookieTimeout"] as! Int32
                }
                if dict.keys.contains("EnableHttp2") {
                    self.enableHttp2 = dict["EnableHttp2"] as! String
                }
                if dict.keys.contains("Gzip") {
                    self.gzip = dict["Gzip"] as! String
                }
                if dict.keys.contains("HealthCheck") {
                    self.healthCheck = dict["HealthCheck"] as! String
                }
                if dict.keys.contains("HealthCheckConnectPort") {
                    self.healthCheckConnectPort = dict["HealthCheckConnectPort"] as! Int32
                }
                if dict.keys.contains("HealthCheckDomain") {
                    self.healthCheckDomain = dict["HealthCheckDomain"] as! String
                }
                if dict.keys.contains("HealthCheckHttpCode") {
                    self.healthCheckHttpCode = dict["HealthCheckHttpCode"] as! String
                }
                if dict.keys.contains("HealthCheckHttpVersion") {
                    self.healthCheckHttpVersion = dict["HealthCheckHttpVersion"] as! String
                }
                if dict.keys.contains("HealthCheckInterval") {
                    self.healthCheckInterval = dict["HealthCheckInterval"] as! Int32
                }
                if dict.keys.contains("HealthCheckMethod") {
                    self.healthCheckMethod = dict["HealthCheckMethod"] as! String
                }
                if dict.keys.contains("HealthCheckTimeout") {
                    self.healthCheckTimeout = dict["HealthCheckTimeout"] as! Int32
                }
                if dict.keys.contains("HealthCheckType") {
                    self.healthCheckType = dict["HealthCheckType"] as! String
                }
                if dict.keys.contains("HealthCheckURI") {
                    self.healthCheckURI = dict["HealthCheckURI"] as! String
                }
                if dict.keys.contains("HealthyThreshold") {
                    self.healthyThreshold = dict["HealthyThreshold"] as! Int32
                }
                if dict.keys.contains("IdleTimeout") {
                    self.idleTimeout = dict["IdleTimeout"] as! Int32
                }
                if dict.keys.contains("RequestTimeout") {
                    self.requestTimeout = dict["RequestTimeout"] as! Int32
                }
                if dict.keys.contains("ServerCertificateId") {
                    self.serverCertificateId = dict["ServerCertificateId"] as! String
                }
                if dict.keys.contains("StickySession") {
                    self.stickySession = dict["StickySession"] as! String
                }
                if dict.keys.contains("StickySessionType") {
                    self.stickySessionType = dict["StickySessionType"] as! String
                }
                if dict.keys.contains("TLSCipherPolicy") {
                    self.TLSCipherPolicy = dict["TLSCipherPolicy"] as! String
                }
                if dict.keys.contains("UnhealthyThreshold") {
                    self.unhealthyThreshold = dict["UnhealthyThreshold"] as! Int32
                }
                if dict.keys.contains("XForwardedFor") {
                    self.XForwardedFor = dict["XForwardedFor"] as! String
                }
                if dict.keys.contains("XForwardedFor_ClientCertClientVerify") {
                    self.XForwardedFor_ClientCertClientVerify = dict["XForwardedFor_ClientCertClientVerify"] as! String
                }
                if dict.keys.contains("XForwardedFor_ClientCertFingerprint") {
                    self.XForwardedFor_ClientCertFingerprint = dict["XForwardedFor_ClientCertFingerprint"] as! String
                }
                if dict.keys.contains("XForwardedFor_ClientCertIssuerDN") {
                    self.XForwardedFor_ClientCertIssuerDN = dict["XForwardedFor_ClientCertIssuerDN"] as! String
                }
                if dict.keys.contains("XForwardedFor_ClientCertSubjectDN") {
                    self.XForwardedFor_ClientCertSubjectDN = dict["XForwardedFor_ClientCertSubjectDN"] as! String
                }
                if dict.keys.contains("XForwardedFor_ClientSrcPort") {
                    self.XForwardedFor_ClientSrcPort = dict["XForwardedFor_ClientSrcPort"] as! String
                }
                if dict.keys.contains("XForwardedFor_SLBID") {
                    self.XForwardedFor_SLBID = dict["XForwardedFor_SLBID"] as! String
                }
                if dict.keys.contains("XForwardedFor_SLBIP") {
                    self.XForwardedFor_SLBIP = dict["XForwardedFor_SLBIP"] as! String
                }
                if dict.keys.contains("XForwardedFor_SLBPORT") {
                    self.XForwardedFor_SLBPORT = dict["XForwardedFor_SLBPORT"] as! String
                }
                if dict.keys.contains("XForwardedFor_proto") {
                    self.XForwardedFor_proto = dict["XForwardedFor_proto"] as! String
                }
            }
        }
        public class TCPListenerConfig : Tea.TeaModel {
            public var connectionDrain: String?

            public var connectionDrainTimeout: Int32?

            public var establishedTimeout: Int32?

            public var healthCheck: String?

            public var healthCheckConnectPort: Int32?

            public var healthCheckConnectTimeout: Int32?

            public var healthCheckDomain: String?

            public var healthCheckHttpCode: String?

            public var healthCheckInterval: Int32?

            public var healthCheckMethod: String?

            public var healthCheckType: String?

            public var healthCheckURI: String?

            public var healthyThreshold: Int32?

            public var masterSlaveServerGroupId: String?

            public var persistenceTimeout: Int32?

            public var proxyProtocolV2Enabled: String?

            public var unhealthyThreshold: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.connectionDrain != nil {
                    map["ConnectionDrain"] = self.connectionDrain!
                }
                if self.connectionDrainTimeout != nil {
                    map["ConnectionDrainTimeout"] = self.connectionDrainTimeout!
                }
                if self.establishedTimeout != nil {
                    map["EstablishedTimeout"] = self.establishedTimeout!
                }
                if self.healthCheck != nil {
                    map["HealthCheck"] = self.healthCheck!
                }
                if self.healthCheckConnectPort != nil {
                    map["HealthCheckConnectPort"] = self.healthCheckConnectPort!
                }
                if self.healthCheckConnectTimeout != nil {
                    map["HealthCheckConnectTimeout"] = self.healthCheckConnectTimeout!
                }
                if self.healthCheckDomain != nil {
                    map["HealthCheckDomain"] = self.healthCheckDomain!
                }
                if self.healthCheckHttpCode != nil {
                    map["HealthCheckHttpCode"] = self.healthCheckHttpCode!
                }
                if self.healthCheckInterval != nil {
                    map["HealthCheckInterval"] = self.healthCheckInterval!
                }
                if self.healthCheckMethod != nil {
                    map["HealthCheckMethod"] = self.healthCheckMethod!
                }
                if self.healthCheckType != nil {
                    map["HealthCheckType"] = self.healthCheckType!
                }
                if self.healthCheckURI != nil {
                    map["HealthCheckURI"] = self.healthCheckURI!
                }
                if self.healthyThreshold != nil {
                    map["HealthyThreshold"] = self.healthyThreshold!
                }
                if self.masterSlaveServerGroupId != nil {
                    map["MasterSlaveServerGroupId"] = self.masterSlaveServerGroupId!
                }
                if self.persistenceTimeout != nil {
                    map["PersistenceTimeout"] = self.persistenceTimeout!
                }
                if self.proxyProtocolV2Enabled != nil {
                    map["ProxyProtocolV2Enabled"] = self.proxyProtocolV2Enabled!
                }
                if self.unhealthyThreshold != nil {
                    map["UnhealthyThreshold"] = self.unhealthyThreshold!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConnectionDrain") {
                    self.connectionDrain = dict["ConnectionDrain"] as! String
                }
                if dict.keys.contains("ConnectionDrainTimeout") {
                    self.connectionDrainTimeout = dict["ConnectionDrainTimeout"] as! Int32
                }
                if dict.keys.contains("EstablishedTimeout") {
                    self.establishedTimeout = dict["EstablishedTimeout"] as! Int32
                }
                if dict.keys.contains("HealthCheck") {
                    self.healthCheck = dict["HealthCheck"] as! String
                }
                if dict.keys.contains("HealthCheckConnectPort") {
                    self.healthCheckConnectPort = dict["HealthCheckConnectPort"] as! Int32
                }
                if dict.keys.contains("HealthCheckConnectTimeout") {
                    self.healthCheckConnectTimeout = dict["HealthCheckConnectTimeout"] as! Int32
                }
                if dict.keys.contains("HealthCheckDomain") {
                    self.healthCheckDomain = dict["HealthCheckDomain"] as! String
                }
                if dict.keys.contains("HealthCheckHttpCode") {
                    self.healthCheckHttpCode = dict["HealthCheckHttpCode"] as! String
                }
                if dict.keys.contains("HealthCheckInterval") {
                    self.healthCheckInterval = dict["HealthCheckInterval"] as! Int32
                }
                if dict.keys.contains("HealthCheckMethod") {
                    self.healthCheckMethod = dict["HealthCheckMethod"] as! String
                }
                if dict.keys.contains("HealthCheckType") {
                    self.healthCheckType = dict["HealthCheckType"] as! String
                }
                if dict.keys.contains("HealthCheckURI") {
                    self.healthCheckURI = dict["HealthCheckURI"] as! String
                }
                if dict.keys.contains("HealthyThreshold") {
                    self.healthyThreshold = dict["HealthyThreshold"] as! Int32
                }
                if dict.keys.contains("MasterSlaveServerGroupId") {
                    self.masterSlaveServerGroupId = dict["MasterSlaveServerGroupId"] as! String
                }
                if dict.keys.contains("PersistenceTimeout") {
                    self.persistenceTimeout = dict["PersistenceTimeout"] as! Int32
                }
                if dict.keys.contains("ProxyProtocolV2Enabled") {
                    self.proxyProtocolV2Enabled = dict["ProxyProtocolV2Enabled"] as! String
                }
                if dict.keys.contains("UnhealthyThreshold") {
                    self.unhealthyThreshold = dict["UnhealthyThreshold"] as! Int32
                }
            }
        }
        public class Tags : Tea.TeaModel {
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
                if dict.keys.contains("TagKey") {
                    self.tagKey = dict["TagKey"] as! String
                }
                if dict.keys.contains("TagValue") {
                    self.tagValue = dict["TagValue"] as! String
                }
            }
        }
        public class UDPListenerConfig : Tea.TeaModel {
            public var connectionDrain: String?

            public var connectionDrainTimeout: Int32?

            public var healthCheck: String?

            public var healthCheckConnectPort: Int32?

            public var healthCheckConnectTimeout: Int32?

            public var healthCheckExp: String?

            public var healthCheckInterval: Int32?

            public var healthCheckReq: String?

            public var healthyThreshold: Int32?

            public var masterSlaveServerGroupId: String?

            public var proxyProtocolV2Enabled: String?

            public var unhealthyThreshold: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.connectionDrain != nil {
                    map["ConnectionDrain"] = self.connectionDrain!
                }
                if self.connectionDrainTimeout != nil {
                    map["ConnectionDrainTimeout"] = self.connectionDrainTimeout!
                }
                if self.healthCheck != nil {
                    map["HealthCheck"] = self.healthCheck!
                }
                if self.healthCheckConnectPort != nil {
                    map["HealthCheckConnectPort"] = self.healthCheckConnectPort!
                }
                if self.healthCheckConnectTimeout != nil {
                    map["HealthCheckConnectTimeout"] = self.healthCheckConnectTimeout!
                }
                if self.healthCheckExp != nil {
                    map["HealthCheckExp"] = self.healthCheckExp!
                }
                if self.healthCheckInterval != nil {
                    map["HealthCheckInterval"] = self.healthCheckInterval!
                }
                if self.healthCheckReq != nil {
                    map["HealthCheckReq"] = self.healthCheckReq!
                }
                if self.healthyThreshold != nil {
                    map["HealthyThreshold"] = self.healthyThreshold!
                }
                if self.masterSlaveServerGroupId != nil {
                    map["MasterSlaveServerGroupId"] = self.masterSlaveServerGroupId!
                }
                if self.proxyProtocolV2Enabled != nil {
                    map["ProxyProtocolV2Enabled"] = self.proxyProtocolV2Enabled!
                }
                if self.unhealthyThreshold != nil {
                    map["UnhealthyThreshold"] = self.unhealthyThreshold!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConnectionDrain") {
                    self.connectionDrain = dict["ConnectionDrain"] as! String
                }
                if dict.keys.contains("ConnectionDrainTimeout") {
                    self.connectionDrainTimeout = dict["ConnectionDrainTimeout"] as! Int32
                }
                if dict.keys.contains("HealthCheck") {
                    self.healthCheck = dict["HealthCheck"] as! String
                }
                if dict.keys.contains("HealthCheckConnectPort") {
                    self.healthCheckConnectPort = dict["HealthCheckConnectPort"] as! Int32
                }
                if dict.keys.contains("HealthCheckConnectTimeout") {
                    self.healthCheckConnectTimeout = dict["HealthCheckConnectTimeout"] as! Int32
                }
                if dict.keys.contains("HealthCheckExp") {
                    self.healthCheckExp = dict["HealthCheckExp"] as! String
                }
                if dict.keys.contains("HealthCheckInterval") {
                    self.healthCheckInterval = dict["HealthCheckInterval"] as! Int32
                }
                if dict.keys.contains("HealthCheckReq") {
                    self.healthCheckReq = dict["HealthCheckReq"] as! String
                }
                if dict.keys.contains("HealthyThreshold") {
                    self.healthyThreshold = dict["HealthyThreshold"] as! Int32
                }
                if dict.keys.contains("MasterSlaveServerGroupId") {
                    self.masterSlaveServerGroupId = dict["MasterSlaveServerGroupId"] as! String
                }
                if dict.keys.contains("ProxyProtocolV2Enabled") {
                    self.proxyProtocolV2Enabled = dict["ProxyProtocolV2Enabled"] as! String
                }
                if dict.keys.contains("UnhealthyThreshold") {
                    self.unhealthyThreshold = dict["UnhealthyThreshold"] as! Int32
                }
            }
        }
        public var aclId: String?

        public var aclStatus: String?

        public var aclType: String?

        public var backendServerPort: Int32?

        public var bandwidth: Int32?

        public var description_: String?

        public var HTTPListenerConfig: DescribeLoadBalancerListenersResponseBody.Listeners.HTTPListenerConfig?

        public var HTTPSListenerConfig: DescribeLoadBalancerListenersResponseBody.Listeners.HTTPSListenerConfig?

        public var listenerPort: Int32?

        public var listenerProtocol: String?

        public var loadBalancerId: String?

        public var scheduler: String?

        public var status: String?

        public var TCPListenerConfig: DescribeLoadBalancerListenersResponseBody.Listeners.TCPListenerConfig?

        public var tags: [DescribeLoadBalancerListenersResponseBody.Listeners.Tags]?

        public var UDPListenerConfig: DescribeLoadBalancerListenersResponseBody.Listeners.UDPListenerConfig?

        public var VServerGroupId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.HTTPListenerConfig?.validate()
            try self.HTTPSListenerConfig?.validate()
            try self.TCPListenerConfig?.validate()
            try self.UDPListenerConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aclId != nil {
                map["AclId"] = self.aclId!
            }
            if self.aclStatus != nil {
                map["AclStatus"] = self.aclStatus!
            }
            if self.aclType != nil {
                map["AclType"] = self.aclType!
            }
            if self.backendServerPort != nil {
                map["BackendServerPort"] = self.backendServerPort!
            }
            if self.bandwidth != nil {
                map["Bandwidth"] = self.bandwidth!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.HTTPListenerConfig != nil {
                map["HTTPListenerConfig"] = self.HTTPListenerConfig?.toMap()
            }
            if self.HTTPSListenerConfig != nil {
                map["HTTPSListenerConfig"] = self.HTTPSListenerConfig?.toMap()
            }
            if self.listenerPort != nil {
                map["ListenerPort"] = self.listenerPort!
            }
            if self.listenerProtocol != nil {
                map["ListenerProtocol"] = self.listenerProtocol!
            }
            if self.loadBalancerId != nil {
                map["LoadBalancerId"] = self.loadBalancerId!
            }
            if self.scheduler != nil {
                map["Scheduler"] = self.scheduler!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.TCPListenerConfig != nil {
                map["TCPListenerConfig"] = self.TCPListenerConfig?.toMap()
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.UDPListenerConfig != nil {
                map["UDPListenerConfig"] = self.UDPListenerConfig?.toMap()
            }
            if self.VServerGroupId != nil {
                map["VServerGroupId"] = self.VServerGroupId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AclId") {
                self.aclId = dict["AclId"] as! String
            }
            if dict.keys.contains("AclStatus") {
                self.aclStatus = dict["AclStatus"] as! String
            }
            if dict.keys.contains("AclType") {
                self.aclType = dict["AclType"] as! String
            }
            if dict.keys.contains("BackendServerPort") {
                self.backendServerPort = dict["BackendServerPort"] as! Int32
            }
            if dict.keys.contains("Bandwidth") {
                self.bandwidth = dict["Bandwidth"] as! Int32
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("HTTPListenerConfig") {
                var model = DescribeLoadBalancerListenersResponseBody.Listeners.HTTPListenerConfig()
                model.fromMap(dict["HTTPListenerConfig"] as! [String: Any])
                self.HTTPListenerConfig = model
            }
            if dict.keys.contains("HTTPSListenerConfig") {
                var model = DescribeLoadBalancerListenersResponseBody.Listeners.HTTPSListenerConfig()
                model.fromMap(dict["HTTPSListenerConfig"] as! [String: Any])
                self.HTTPSListenerConfig = model
            }
            if dict.keys.contains("ListenerPort") {
                self.listenerPort = dict["ListenerPort"] as! Int32
            }
            if dict.keys.contains("ListenerProtocol") {
                self.listenerProtocol = dict["ListenerProtocol"] as! String
            }
            if dict.keys.contains("LoadBalancerId") {
                self.loadBalancerId = dict["LoadBalancerId"] as! String
            }
            if dict.keys.contains("Scheduler") {
                self.scheduler = dict["Scheduler"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TCPListenerConfig") {
                var model = DescribeLoadBalancerListenersResponseBody.Listeners.TCPListenerConfig()
                model.fromMap(dict["TCPListenerConfig"] as! [String: Any])
                self.TCPListenerConfig = model
            }
            if dict.keys.contains("Tags") {
                var tmp : [DescribeLoadBalancerListenersResponseBody.Listeners.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = DescribeLoadBalancerListenersResponseBody.Listeners.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("UDPListenerConfig") {
                var model = DescribeLoadBalancerListenersResponseBody.Listeners.UDPListenerConfig()
                model.fromMap(dict["UDPListenerConfig"] as! [String: Any])
                self.UDPListenerConfig = model
            }
            if dict.keys.contains("VServerGroupId") {
                self.VServerGroupId = dict["VServerGroupId"] as! String
            }
        }
    }
    public var listeners: [DescribeLoadBalancerListenersResponseBody.Listeners]?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.listeners != nil {
            var tmp : [Any] = []
            for k in self.listeners! {
                tmp.append(k.toMap())
            }
            map["Listeners"] = tmp
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Listeners") {
            var tmp : [DescribeLoadBalancerListenersResponseBody.Listeners] = []
            for v in dict["Listeners"] as! [Any] {
                var model = DescribeLoadBalancerListenersResponseBody.Listeners()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.listeners = tmp
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
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeLoadBalancerListenersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeLoadBalancerListenersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeLoadBalancerListenersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeLoadBalancerTCPListenerAttributeRequest : Tea.TeaModel {
    public var listenerPort: Int32?

    public var loadBalancerId: String?

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
        if self.listenerPort != nil {
            map["ListenerPort"] = self.listenerPort!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
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
        if dict.keys.contains("ListenerPort") {
            self.listenerPort = dict["ListenerPort"] as! Int32
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
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

public class DescribeLoadBalancerTCPListenerAttributeResponseBody : Tea.TeaModel {
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
                if dict.keys.contains("TagKey") {
                    self.tagKey = dict["TagKey"] as! String
                }
                if dict.keys.contains("TagValue") {
                    self.tagValue = dict["TagValue"] as! String
                }
            }
        }
        public var tag: [DescribeLoadBalancerTCPListenerAttributeResponseBody.Tags.Tag]?

        public override init() {
            super.init()
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
            if dict.keys.contains("Tag") {
                var tmp : [DescribeLoadBalancerTCPListenerAttributeResponseBody.Tags.Tag] = []
                for v in dict["Tag"] as! [Any] {
                    var model = DescribeLoadBalancerTCPListenerAttributeResponseBody.Tags.Tag()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tag = tmp
            }
        }
    }
    public var aclId: String?

    public var aclStatus: String?

    public var aclType: String?

    public var backendServerPort: Int32?

    public var bandwidth: Int32?

    public var connectionDrain: String?

    public var connectionDrainTimeout: Int32?

    public var description_: String?

    public var establishedTimeout: Int32?

    public var healthCheck: String?

    public var healthCheckConnectPort: Int32?

    public var healthCheckConnectTimeout: Int32?

    public var healthCheckDomain: String?

    public var healthCheckHttpCode: String?

    public var healthCheckInterval: Int32?

    public var healthCheckMethod: String?

    public var healthCheckType: String?

    public var healthCheckURI: String?

    public var healthyThreshold: Int32?

    public var listenerPort: Int32?

    public var loadBalancerId: String?

    public var masterSlaveServerGroupId: String?

    public var persistenceTimeout: Int32?

    public var proxyProtocolV2Enabled: Bool?

    public var requestId: String?

    public var scheduler: String?

    public var status: String?

    public var synProxy: String?

    public var tags: DescribeLoadBalancerTCPListenerAttributeResponseBody.Tags?

    public var unhealthyThreshold: Int32?

    public var VServerGroupId: String?

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
        if self.aclId != nil {
            map["AclId"] = self.aclId!
        }
        if self.aclStatus != nil {
            map["AclStatus"] = self.aclStatus!
        }
        if self.aclType != nil {
            map["AclType"] = self.aclType!
        }
        if self.backendServerPort != nil {
            map["BackendServerPort"] = self.backendServerPort!
        }
        if self.bandwidth != nil {
            map["Bandwidth"] = self.bandwidth!
        }
        if self.connectionDrain != nil {
            map["ConnectionDrain"] = self.connectionDrain!
        }
        if self.connectionDrainTimeout != nil {
            map["ConnectionDrainTimeout"] = self.connectionDrainTimeout!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.establishedTimeout != nil {
            map["EstablishedTimeout"] = self.establishedTimeout!
        }
        if self.healthCheck != nil {
            map["HealthCheck"] = self.healthCheck!
        }
        if self.healthCheckConnectPort != nil {
            map["HealthCheckConnectPort"] = self.healthCheckConnectPort!
        }
        if self.healthCheckConnectTimeout != nil {
            map["HealthCheckConnectTimeout"] = self.healthCheckConnectTimeout!
        }
        if self.healthCheckDomain != nil {
            map["HealthCheckDomain"] = self.healthCheckDomain!
        }
        if self.healthCheckHttpCode != nil {
            map["HealthCheckHttpCode"] = self.healthCheckHttpCode!
        }
        if self.healthCheckInterval != nil {
            map["HealthCheckInterval"] = self.healthCheckInterval!
        }
        if self.healthCheckMethod != nil {
            map["HealthCheckMethod"] = self.healthCheckMethod!
        }
        if self.healthCheckType != nil {
            map["HealthCheckType"] = self.healthCheckType!
        }
        if self.healthCheckURI != nil {
            map["HealthCheckURI"] = self.healthCheckURI!
        }
        if self.healthyThreshold != nil {
            map["HealthyThreshold"] = self.healthyThreshold!
        }
        if self.listenerPort != nil {
            map["ListenerPort"] = self.listenerPort!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.masterSlaveServerGroupId != nil {
            map["MasterSlaveServerGroupId"] = self.masterSlaveServerGroupId!
        }
        if self.persistenceTimeout != nil {
            map["PersistenceTimeout"] = self.persistenceTimeout!
        }
        if self.proxyProtocolV2Enabled != nil {
            map["ProxyProtocolV2Enabled"] = self.proxyProtocolV2Enabled!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.scheduler != nil {
            map["Scheduler"] = self.scheduler!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.synProxy != nil {
            map["SynProxy"] = self.synProxy!
        }
        if self.tags != nil {
            map["Tags"] = self.tags?.toMap()
        }
        if self.unhealthyThreshold != nil {
            map["UnhealthyThreshold"] = self.unhealthyThreshold!
        }
        if self.VServerGroupId != nil {
            map["VServerGroupId"] = self.VServerGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclId") {
            self.aclId = dict["AclId"] as! String
        }
        if dict.keys.contains("AclStatus") {
            self.aclStatus = dict["AclStatus"] as! String
        }
        if dict.keys.contains("AclType") {
            self.aclType = dict["AclType"] as! String
        }
        if dict.keys.contains("BackendServerPort") {
            self.backendServerPort = dict["BackendServerPort"] as! Int32
        }
        if dict.keys.contains("Bandwidth") {
            self.bandwidth = dict["Bandwidth"] as! Int32
        }
        if dict.keys.contains("ConnectionDrain") {
            self.connectionDrain = dict["ConnectionDrain"] as! String
        }
        if dict.keys.contains("ConnectionDrainTimeout") {
            self.connectionDrainTimeout = dict["ConnectionDrainTimeout"] as! Int32
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EstablishedTimeout") {
            self.establishedTimeout = dict["EstablishedTimeout"] as! Int32
        }
        if dict.keys.contains("HealthCheck") {
            self.healthCheck = dict["HealthCheck"] as! String
        }
        if dict.keys.contains("HealthCheckConnectPort") {
            self.healthCheckConnectPort = dict["HealthCheckConnectPort"] as! Int32
        }
        if dict.keys.contains("HealthCheckConnectTimeout") {
            self.healthCheckConnectTimeout = dict["HealthCheckConnectTimeout"] as! Int32
        }
        if dict.keys.contains("HealthCheckDomain") {
            self.healthCheckDomain = dict["HealthCheckDomain"] as! String
        }
        if dict.keys.contains("HealthCheckHttpCode") {
            self.healthCheckHttpCode = dict["HealthCheckHttpCode"] as! String
        }
        if dict.keys.contains("HealthCheckInterval") {
            self.healthCheckInterval = dict["HealthCheckInterval"] as! Int32
        }
        if dict.keys.contains("HealthCheckMethod") {
            self.healthCheckMethod = dict["HealthCheckMethod"] as! String
        }
        if dict.keys.contains("HealthCheckType") {
            self.healthCheckType = dict["HealthCheckType"] as! String
        }
        if dict.keys.contains("HealthCheckURI") {
            self.healthCheckURI = dict["HealthCheckURI"] as! String
        }
        if dict.keys.contains("HealthyThreshold") {
            self.healthyThreshold = dict["HealthyThreshold"] as! Int32
        }
        if dict.keys.contains("ListenerPort") {
            self.listenerPort = dict["ListenerPort"] as! Int32
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("MasterSlaveServerGroupId") {
            self.masterSlaveServerGroupId = dict["MasterSlaveServerGroupId"] as! String
        }
        if dict.keys.contains("PersistenceTimeout") {
            self.persistenceTimeout = dict["PersistenceTimeout"] as! Int32
        }
        if dict.keys.contains("ProxyProtocolV2Enabled") {
            self.proxyProtocolV2Enabled = dict["ProxyProtocolV2Enabled"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Scheduler") {
            self.scheduler = dict["Scheduler"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("SynProxy") {
            self.synProxy = dict["SynProxy"] as! String
        }
        if dict.keys.contains("Tags") {
            var model = DescribeLoadBalancerTCPListenerAttributeResponseBody.Tags()
            model.fromMap(dict["Tags"] as! [String: Any])
            self.tags = model
        }
        if dict.keys.contains("UnhealthyThreshold") {
            self.unhealthyThreshold = dict["UnhealthyThreshold"] as! Int32
        }
        if dict.keys.contains("VServerGroupId") {
            self.VServerGroupId = dict["VServerGroupId"] as! String
        }
    }
}

public class DescribeLoadBalancerTCPListenerAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeLoadBalancerTCPListenerAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeLoadBalancerTCPListenerAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeLoadBalancerUDPListenerAttributeRequest : Tea.TeaModel {
    public var listenerPort: Int32?

    public var loadBalancerId: String?

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
        if self.listenerPort != nil {
            map["ListenerPort"] = self.listenerPort!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
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
        if dict.keys.contains("ListenerPort") {
            self.listenerPort = dict["ListenerPort"] as! Int32
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
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

public class DescribeLoadBalancerUDPListenerAttributeResponseBody : Tea.TeaModel {
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
                if dict.keys.contains("TagKey") {
                    self.tagKey = dict["TagKey"] as! String
                }
                if dict.keys.contains("TagValue") {
                    self.tagValue = dict["TagValue"] as! String
                }
            }
        }
        public var tag: [DescribeLoadBalancerUDPListenerAttributeResponseBody.Tags.Tag]?

        public override init() {
            super.init()
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
            if dict.keys.contains("Tag") {
                var tmp : [DescribeLoadBalancerUDPListenerAttributeResponseBody.Tags.Tag] = []
                for v in dict["Tag"] as! [Any] {
                    var model = DescribeLoadBalancerUDPListenerAttributeResponseBody.Tags.Tag()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tag = tmp
            }
        }
    }
    public var aclId: String?

    public var aclStatus: String?

    public var aclType: String?

    public var backendServerPort: Int32?

    public var bandwidth: Int32?

    public var description_: String?

    public var healthCheck: String?

    public var healthCheckConnectPort: Int32?

    public var healthCheckConnectTimeout: Int32?

    public var healthCheckExp: String?

    public var healthCheckInterval: Int32?

    public var healthCheckReq: String?

    public var healthyThreshold: Int32?

    public var listenerPort: Int32?

    public var loadBalancerId: String?

    public var masterSlaveServerGroupId: String?

    public var proxyProtocolV2Enabled: Bool?

    public var requestId: String?

    public var scheduler: String?

    public var status: String?

    public var tags: DescribeLoadBalancerUDPListenerAttributeResponseBody.Tags?

    public var unhealthyThreshold: Int32?

    public var VServerGroupId: String?

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
        if self.aclId != nil {
            map["AclId"] = self.aclId!
        }
        if self.aclStatus != nil {
            map["AclStatus"] = self.aclStatus!
        }
        if self.aclType != nil {
            map["AclType"] = self.aclType!
        }
        if self.backendServerPort != nil {
            map["BackendServerPort"] = self.backendServerPort!
        }
        if self.bandwidth != nil {
            map["Bandwidth"] = self.bandwidth!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.healthCheck != nil {
            map["HealthCheck"] = self.healthCheck!
        }
        if self.healthCheckConnectPort != nil {
            map["HealthCheckConnectPort"] = self.healthCheckConnectPort!
        }
        if self.healthCheckConnectTimeout != nil {
            map["HealthCheckConnectTimeout"] = self.healthCheckConnectTimeout!
        }
        if self.healthCheckExp != nil {
            map["HealthCheckExp"] = self.healthCheckExp!
        }
        if self.healthCheckInterval != nil {
            map["HealthCheckInterval"] = self.healthCheckInterval!
        }
        if self.healthCheckReq != nil {
            map["HealthCheckReq"] = self.healthCheckReq!
        }
        if self.healthyThreshold != nil {
            map["HealthyThreshold"] = self.healthyThreshold!
        }
        if self.listenerPort != nil {
            map["ListenerPort"] = self.listenerPort!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.masterSlaveServerGroupId != nil {
            map["MasterSlaveServerGroupId"] = self.masterSlaveServerGroupId!
        }
        if self.proxyProtocolV2Enabled != nil {
            map["ProxyProtocolV2Enabled"] = self.proxyProtocolV2Enabled!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.scheduler != nil {
            map["Scheduler"] = self.scheduler!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tags != nil {
            map["Tags"] = self.tags?.toMap()
        }
        if self.unhealthyThreshold != nil {
            map["UnhealthyThreshold"] = self.unhealthyThreshold!
        }
        if self.VServerGroupId != nil {
            map["VServerGroupId"] = self.VServerGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclId") {
            self.aclId = dict["AclId"] as! String
        }
        if dict.keys.contains("AclStatus") {
            self.aclStatus = dict["AclStatus"] as! String
        }
        if dict.keys.contains("AclType") {
            self.aclType = dict["AclType"] as! String
        }
        if dict.keys.contains("BackendServerPort") {
            self.backendServerPort = dict["BackendServerPort"] as! Int32
        }
        if dict.keys.contains("Bandwidth") {
            self.bandwidth = dict["Bandwidth"] as! Int32
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("HealthCheck") {
            self.healthCheck = dict["HealthCheck"] as! String
        }
        if dict.keys.contains("HealthCheckConnectPort") {
            self.healthCheckConnectPort = dict["HealthCheckConnectPort"] as! Int32
        }
        if dict.keys.contains("HealthCheckConnectTimeout") {
            self.healthCheckConnectTimeout = dict["HealthCheckConnectTimeout"] as! Int32
        }
        if dict.keys.contains("HealthCheckExp") {
            self.healthCheckExp = dict["HealthCheckExp"] as! String
        }
        if dict.keys.contains("HealthCheckInterval") {
            self.healthCheckInterval = dict["HealthCheckInterval"] as! Int32
        }
        if dict.keys.contains("HealthCheckReq") {
            self.healthCheckReq = dict["HealthCheckReq"] as! String
        }
        if dict.keys.contains("HealthyThreshold") {
            self.healthyThreshold = dict["HealthyThreshold"] as! Int32
        }
        if dict.keys.contains("ListenerPort") {
            self.listenerPort = dict["ListenerPort"] as! Int32
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("MasterSlaveServerGroupId") {
            self.masterSlaveServerGroupId = dict["MasterSlaveServerGroupId"] as! String
        }
        if dict.keys.contains("ProxyProtocolV2Enabled") {
            self.proxyProtocolV2Enabled = dict["ProxyProtocolV2Enabled"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Scheduler") {
            self.scheduler = dict["Scheduler"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Tags") {
            var model = DescribeLoadBalancerUDPListenerAttributeResponseBody.Tags()
            model.fromMap(dict["Tags"] as! [String: Any])
            self.tags = model
        }
        if dict.keys.contains("UnhealthyThreshold") {
            self.unhealthyThreshold = dict["UnhealthyThreshold"] as! Int32
        }
        if dict.keys.contains("VServerGroupId") {
            self.VServerGroupId = dict["VServerGroupId"] as! String
        }
    }
}

public class DescribeLoadBalancerUDPListenerAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeLoadBalancerUDPListenerAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeLoadBalancerUDPListenerAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeLoadBalancersRequest : Tea.TeaModel {
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
    public var address: String?

    public var addressIPVersion: String?

    public var addressType: String?

    public var internetChargeType: String?

    public var loadBalancerId: String?

    public var loadBalancerName: String?

    public var loadBalancerStatus: String?

    public var masterZoneId: String?

    public var networkType: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var payType: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var serverId: String?

    public var serverIntranetAddress: String?

    public var slaveZoneId: String?

    public var tag: [DescribeLoadBalancersRequest.Tag]?

    public var tags: String?

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
        if self.address != nil {
            map["Address"] = self.address!
        }
        if self.addressIPVersion != nil {
            map["AddressIPVersion"] = self.addressIPVersion!
        }
        if self.addressType != nil {
            map["AddressType"] = self.addressType!
        }
        if self.internetChargeType != nil {
            map["InternetChargeType"] = self.internetChargeType!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.loadBalancerName != nil {
            map["LoadBalancerName"] = self.loadBalancerName!
        }
        if self.loadBalancerStatus != nil {
            map["LoadBalancerStatus"] = self.loadBalancerStatus!
        }
        if self.masterZoneId != nil {
            map["MasterZoneId"] = self.masterZoneId!
        }
        if self.networkType != nil {
            map["NetworkType"] = self.networkType!
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
        if self.payType != nil {
            map["PayType"] = self.payType!
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
        if self.serverId != nil {
            map["ServerId"] = self.serverId!
        }
        if self.serverIntranetAddress != nil {
            map["ServerIntranetAddress"] = self.serverIntranetAddress!
        }
        if self.slaveZoneId != nil {
            map["SlaveZoneId"] = self.slaveZoneId!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
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
        if dict.keys.contains("Address") {
            self.address = dict["Address"] as! String
        }
        if dict.keys.contains("AddressIPVersion") {
            self.addressIPVersion = dict["AddressIPVersion"] as! String
        }
        if dict.keys.contains("AddressType") {
            self.addressType = dict["AddressType"] as! String
        }
        if dict.keys.contains("InternetChargeType") {
            self.internetChargeType = dict["InternetChargeType"] as! String
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("LoadBalancerName") {
            self.loadBalancerName = dict["LoadBalancerName"] as! String
        }
        if dict.keys.contains("LoadBalancerStatus") {
            self.loadBalancerStatus = dict["LoadBalancerStatus"] as! String
        }
        if dict.keys.contains("MasterZoneId") {
            self.masterZoneId = dict["MasterZoneId"] as! String
        }
        if dict.keys.contains("NetworkType") {
            self.networkType = dict["NetworkType"] as! String
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
        if dict.keys.contains("PayType") {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ServerId") {
            self.serverId = dict["ServerId"] as! String
        }
        if dict.keys.contains("ServerIntranetAddress") {
            self.serverIntranetAddress = dict["ServerIntranetAddress"] as! String
        }
        if dict.keys.contains("SlaveZoneId") {
            self.slaveZoneId = dict["SlaveZoneId"] as! String
        }
        if dict.keys.contains("Tag") {
            var tmp : [DescribeLoadBalancersRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = DescribeLoadBalancersRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! String
        }
        if dict.keys.contains("VSwitchId") {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
        }
    }
}

public class DescribeLoadBalancersResponseBody : Tea.TeaModel {
    public class LoadBalancers : Tea.TeaModel {
        public class LoadBalancer : Tea.TeaModel {
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
                        if dict.keys.contains("TagKey") {
                            self.tagKey = dict["TagKey"] as! String
                        }
                        if dict.keys.contains("TagValue") {
                            self.tagValue = dict["TagValue"] as! String
                        }
                    }
                }
                public var tag: [DescribeLoadBalancersResponseBody.LoadBalancers.LoadBalancer.Tags.Tag]?

                public override init() {
                    super.init()
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
                    if dict.keys.contains("Tag") {
                        var tmp : [DescribeLoadBalancersResponseBody.LoadBalancers.LoadBalancer.Tags.Tag] = []
                        for v in dict["Tag"] as! [Any] {
                            var model = DescribeLoadBalancersResponseBody.LoadBalancers.LoadBalancer.Tags.Tag()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.tag = tmp
                    }
                }
            }
            public var address: String?

            public var addressIPVersion: String?

            public var addressType: String?

            public var bandwidth: Int32?

            public var createTime: String?

            public var createTimeStamp: Int64?

            public var deleteProtection: String?

            public var instanceChargeType: String?

            public var internetChargeType: String?

            public var internetChargeTypeAlias: String?

            public var loadBalancerId: String?

            public var loadBalancerName: String?

            public var loadBalancerSpec: String?

            public var loadBalancerStatus: String?

            public var masterZoneId: String?

            public var modificationProtectionReason: String?

            public var modificationProtectionStatus: String?

            public var networkType: String?

            public var payType: String?

            public var regionId: String?

            public var regionIdAlias: String?

            public var resourceGroupId: String?

            public var slaveZoneId: String?

            public var tags: DescribeLoadBalancersResponseBody.LoadBalancers.LoadBalancer.Tags?

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
                try self.tags?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.address != nil {
                    map["Address"] = self.address!
                }
                if self.addressIPVersion != nil {
                    map["AddressIPVersion"] = self.addressIPVersion!
                }
                if self.addressType != nil {
                    map["AddressType"] = self.addressType!
                }
                if self.bandwidth != nil {
                    map["Bandwidth"] = self.bandwidth!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.createTimeStamp != nil {
                    map["CreateTimeStamp"] = self.createTimeStamp!
                }
                if self.deleteProtection != nil {
                    map["DeleteProtection"] = self.deleteProtection!
                }
                if self.instanceChargeType != nil {
                    map["InstanceChargeType"] = self.instanceChargeType!
                }
                if self.internetChargeType != nil {
                    map["InternetChargeType"] = self.internetChargeType!
                }
                if self.internetChargeTypeAlias != nil {
                    map["InternetChargeTypeAlias"] = self.internetChargeTypeAlias!
                }
                if self.loadBalancerId != nil {
                    map["LoadBalancerId"] = self.loadBalancerId!
                }
                if self.loadBalancerName != nil {
                    map["LoadBalancerName"] = self.loadBalancerName!
                }
                if self.loadBalancerSpec != nil {
                    map["LoadBalancerSpec"] = self.loadBalancerSpec!
                }
                if self.loadBalancerStatus != nil {
                    map["LoadBalancerStatus"] = self.loadBalancerStatus!
                }
                if self.masterZoneId != nil {
                    map["MasterZoneId"] = self.masterZoneId!
                }
                if self.modificationProtectionReason != nil {
                    map["ModificationProtectionReason"] = self.modificationProtectionReason!
                }
                if self.modificationProtectionStatus != nil {
                    map["ModificationProtectionStatus"] = self.modificationProtectionStatus!
                }
                if self.networkType != nil {
                    map["NetworkType"] = self.networkType!
                }
                if self.payType != nil {
                    map["PayType"] = self.payType!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.regionIdAlias != nil {
                    map["RegionIdAlias"] = self.regionIdAlias!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.slaveZoneId != nil {
                    map["SlaveZoneId"] = self.slaveZoneId!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags?.toMap()
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
                if dict.keys.contains("Address") {
                    self.address = dict["Address"] as! String
                }
                if dict.keys.contains("AddressIPVersion") {
                    self.addressIPVersion = dict["AddressIPVersion"] as! String
                }
                if dict.keys.contains("AddressType") {
                    self.addressType = dict["AddressType"] as! String
                }
                if dict.keys.contains("Bandwidth") {
                    self.bandwidth = dict["Bandwidth"] as! Int32
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("CreateTimeStamp") {
                    self.createTimeStamp = dict["CreateTimeStamp"] as! Int64
                }
                if dict.keys.contains("DeleteProtection") {
                    self.deleteProtection = dict["DeleteProtection"] as! String
                }
                if dict.keys.contains("InstanceChargeType") {
                    self.instanceChargeType = dict["InstanceChargeType"] as! String
                }
                if dict.keys.contains("InternetChargeType") {
                    self.internetChargeType = dict["InternetChargeType"] as! String
                }
                if dict.keys.contains("InternetChargeTypeAlias") {
                    self.internetChargeTypeAlias = dict["InternetChargeTypeAlias"] as! String
                }
                if dict.keys.contains("LoadBalancerId") {
                    self.loadBalancerId = dict["LoadBalancerId"] as! String
                }
                if dict.keys.contains("LoadBalancerName") {
                    self.loadBalancerName = dict["LoadBalancerName"] as! String
                }
                if dict.keys.contains("LoadBalancerSpec") {
                    self.loadBalancerSpec = dict["LoadBalancerSpec"] as! String
                }
                if dict.keys.contains("LoadBalancerStatus") {
                    self.loadBalancerStatus = dict["LoadBalancerStatus"] as! String
                }
                if dict.keys.contains("MasterZoneId") {
                    self.masterZoneId = dict["MasterZoneId"] as! String
                }
                if dict.keys.contains("ModificationProtectionReason") {
                    self.modificationProtectionReason = dict["ModificationProtectionReason"] as! String
                }
                if dict.keys.contains("ModificationProtectionStatus") {
                    self.modificationProtectionStatus = dict["ModificationProtectionStatus"] as! String
                }
                if dict.keys.contains("NetworkType") {
                    self.networkType = dict["NetworkType"] as! String
                }
                if dict.keys.contains("PayType") {
                    self.payType = dict["PayType"] as! String
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("RegionIdAlias") {
                    self.regionIdAlias = dict["RegionIdAlias"] as! String
                }
                if dict.keys.contains("ResourceGroupId") {
                    self.resourceGroupId = dict["ResourceGroupId"] as! String
                }
                if dict.keys.contains("SlaveZoneId") {
                    self.slaveZoneId = dict["SlaveZoneId"] as! String
                }
                if dict.keys.contains("Tags") {
                    var model = DescribeLoadBalancersResponseBody.LoadBalancers.LoadBalancer.Tags()
                    model.fromMap(dict["Tags"] as! [String: Any])
                    self.tags = model
                }
                if dict.keys.contains("VSwitchId") {
                    self.vSwitchId = dict["VSwitchId"] as! String
                }
                if dict.keys.contains("VpcId") {
                    self.vpcId = dict["VpcId"] as! String
                }
            }
        }
        public var loadBalancer: [DescribeLoadBalancersResponseBody.LoadBalancers.LoadBalancer]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.loadBalancer != nil {
                var tmp : [Any] = []
                for k in self.loadBalancer! {
                    tmp.append(k.toMap())
                }
                map["LoadBalancer"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LoadBalancer") {
                var tmp : [DescribeLoadBalancersResponseBody.LoadBalancers.LoadBalancer] = []
                for v in dict["LoadBalancer"] as! [Any] {
                    var model = DescribeLoadBalancersResponseBody.LoadBalancers.LoadBalancer()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.loadBalancer = tmp
            }
        }
    }
    public var loadBalancers: DescribeLoadBalancersResponseBody.LoadBalancers?

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
        try self.loadBalancers?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.loadBalancers != nil {
            map["LoadBalancers"] = self.loadBalancers?.toMap()
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
        if dict.keys.contains("LoadBalancers") {
            var model = DescribeLoadBalancersResponseBody.LoadBalancers()
            model.fromMap(dict["LoadBalancers"] as! [String: Any])
            self.loadBalancers = model
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
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeLoadBalancersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeLoadBalancersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeLoadBalancersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeMasterSlaveServerGroupAttributeRequest : Tea.TeaModel {
    public var masterSlaveServerGroupId: String?

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
        if self.masterSlaveServerGroupId != nil {
            map["MasterSlaveServerGroupId"] = self.masterSlaveServerGroupId!
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
        if dict.keys.contains("MasterSlaveServerGroupId") {
            self.masterSlaveServerGroupId = dict["MasterSlaveServerGroupId"] as! String
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

public class DescribeMasterSlaveServerGroupAttributeResponseBody : Tea.TeaModel {
    public class MasterSlaveBackendServers : Tea.TeaModel {
        public class MasterSlaveBackendServer : Tea.TeaModel {
            public var description_: String?

            public var port: Int32?

            public var serverId: String?

            public var serverType: String?

            public var type: String?

            public var weight: Int32?

            public override init() {
                super.init()
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
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.serverId != nil {
                    map["ServerId"] = self.serverId!
                }
                if self.serverType != nil {
                    map["ServerType"] = self.serverType!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.weight != nil {
                    map["Weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Port") {
                    self.port = dict["Port"] as! Int32
                }
                if dict.keys.contains("ServerId") {
                    self.serverId = dict["ServerId"] as! String
                }
                if dict.keys.contains("ServerType") {
                    self.serverType = dict["ServerType"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Weight") {
                    self.weight = dict["Weight"] as! Int32
                }
            }
        }
        public var masterSlaveBackendServer: [DescribeMasterSlaveServerGroupAttributeResponseBody.MasterSlaveBackendServers.MasterSlaveBackendServer]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.masterSlaveBackendServer != nil {
                var tmp : [Any] = []
                for k in self.masterSlaveBackendServer! {
                    tmp.append(k.toMap())
                }
                map["MasterSlaveBackendServer"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MasterSlaveBackendServer") {
                var tmp : [DescribeMasterSlaveServerGroupAttributeResponseBody.MasterSlaveBackendServers.MasterSlaveBackendServer] = []
                for v in dict["MasterSlaveBackendServer"] as! [Any] {
                    var model = DescribeMasterSlaveServerGroupAttributeResponseBody.MasterSlaveBackendServers.MasterSlaveBackendServer()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.masterSlaveBackendServer = tmp
            }
        }
    }
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
                if dict.keys.contains("TagKey") {
                    self.tagKey = dict["TagKey"] as! String
                }
                if dict.keys.contains("TagValue") {
                    self.tagValue = dict["TagValue"] as! String
                }
            }
        }
        public var tag: [DescribeMasterSlaveServerGroupAttributeResponseBody.Tags.Tag]?

        public override init() {
            super.init()
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
            if dict.keys.contains("Tag") {
                var tmp : [DescribeMasterSlaveServerGroupAttributeResponseBody.Tags.Tag] = []
                for v in dict["Tag"] as! [Any] {
                    var model = DescribeMasterSlaveServerGroupAttributeResponseBody.Tags.Tag()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tag = tmp
            }
        }
    }
    public var createTime: String?

    public var loadBalancerId: String?

    public var masterSlaveBackendServers: DescribeMasterSlaveServerGroupAttributeResponseBody.MasterSlaveBackendServers?

    public var masterSlaveServerGroupId: String?

    public var masterSlaveServerGroupName: String?

    public var requestId: String?

    public var tags: DescribeMasterSlaveServerGroupAttributeResponseBody.Tags?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.masterSlaveBackendServers?.validate()
        try self.tags?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.masterSlaveBackendServers != nil {
            map["MasterSlaveBackendServers"] = self.masterSlaveBackendServers?.toMap()
        }
        if self.masterSlaveServerGroupId != nil {
            map["MasterSlaveServerGroupId"] = self.masterSlaveServerGroupId!
        }
        if self.masterSlaveServerGroupName != nil {
            map["MasterSlaveServerGroupName"] = self.masterSlaveServerGroupName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tags != nil {
            map["Tags"] = self.tags?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("MasterSlaveBackendServers") {
            var model = DescribeMasterSlaveServerGroupAttributeResponseBody.MasterSlaveBackendServers()
            model.fromMap(dict["MasterSlaveBackendServers"] as! [String: Any])
            self.masterSlaveBackendServers = model
        }
        if dict.keys.contains("MasterSlaveServerGroupId") {
            self.masterSlaveServerGroupId = dict["MasterSlaveServerGroupId"] as! String
        }
        if dict.keys.contains("MasterSlaveServerGroupName") {
            self.masterSlaveServerGroupName = dict["MasterSlaveServerGroupName"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Tags") {
            var model = DescribeMasterSlaveServerGroupAttributeResponseBody.Tags()
            model.fromMap(dict["Tags"] as! [String: Any])
            self.tags = model
        }
    }
}

public class DescribeMasterSlaveServerGroupAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMasterSlaveServerGroupAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeMasterSlaveServerGroupAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeMasterSlaveServerGroupsRequest : Tea.TeaModel {
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
    public var description_: String?

    public var includeListener: Bool?

    public var loadBalancerId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tag: [DescribeMasterSlaveServerGroupsRequest.Tag]?

    public override init() {
        super.init()
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
        if self.includeListener != nil {
            map["IncludeListener"] = self.includeListener!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
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
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("IncludeListener") {
            self.includeListener = dict["IncludeListener"] as! Bool
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
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
        if dict.keys.contains("Tag") {
            var tmp : [DescribeMasterSlaveServerGroupsRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = DescribeMasterSlaveServerGroupsRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class DescribeMasterSlaveServerGroupsResponseBody : Tea.TeaModel {
    public class MasterSlaveServerGroups : Tea.TeaModel {
        public class MasterSlaveServerGroup : Tea.TeaModel {
            public class AssociatedObjects : Tea.TeaModel {
                public class Listeners : Tea.TeaModel {
                    public class Listener : Tea.TeaModel {
                        public var port: Int32?

                        public var protocol_: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.port != nil {
                                map["Port"] = self.port!
                            }
                            if self.protocol_ != nil {
                                map["Protocol"] = self.protocol_!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Port") {
                                self.port = dict["Port"] as! Int32
                            }
                            if dict.keys.contains("Protocol") {
                                self.protocol_ = dict["Protocol"] as! String
                            }
                        }
                    }
                    public var listener: [DescribeMasterSlaveServerGroupsResponseBody.MasterSlaveServerGroups.MasterSlaveServerGroup.AssociatedObjects.Listeners.Listener]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.listener != nil {
                            var tmp : [Any] = []
                            for k in self.listener! {
                                tmp.append(k.toMap())
                            }
                            map["Listener"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Listener") {
                            var tmp : [DescribeMasterSlaveServerGroupsResponseBody.MasterSlaveServerGroups.MasterSlaveServerGroup.AssociatedObjects.Listeners.Listener] = []
                            for v in dict["Listener"] as! [Any] {
                                var model = DescribeMasterSlaveServerGroupsResponseBody.MasterSlaveServerGroups.MasterSlaveServerGroup.AssociatedObjects.Listeners.Listener()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.listener = tmp
                        }
                    }
                }
                public var listeners: DescribeMasterSlaveServerGroupsResponseBody.MasterSlaveServerGroups.MasterSlaveServerGroup.AssociatedObjects.Listeners?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.listeners?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.listeners != nil {
                        map["Listeners"] = self.listeners?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Listeners") {
                        var model = DescribeMasterSlaveServerGroupsResponseBody.MasterSlaveServerGroups.MasterSlaveServerGroup.AssociatedObjects.Listeners()
                        model.fromMap(dict["Listeners"] as! [String: Any])
                        self.listeners = model
                    }
                }
            }
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
                        if dict.keys.contains("TagKey") {
                            self.tagKey = dict["TagKey"] as! String
                        }
                        if dict.keys.contains("TagValue") {
                            self.tagValue = dict["TagValue"] as! String
                        }
                    }
                }
                public var tag: [DescribeMasterSlaveServerGroupsResponseBody.MasterSlaveServerGroups.MasterSlaveServerGroup.Tags.Tag]?

                public override init() {
                    super.init()
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
                    if dict.keys.contains("Tag") {
                        var tmp : [DescribeMasterSlaveServerGroupsResponseBody.MasterSlaveServerGroups.MasterSlaveServerGroup.Tags.Tag] = []
                        for v in dict["Tag"] as! [Any] {
                            var model = DescribeMasterSlaveServerGroupsResponseBody.MasterSlaveServerGroups.MasterSlaveServerGroup.Tags.Tag()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.tag = tmp
                    }
                }
            }
            public var associatedObjects: DescribeMasterSlaveServerGroupsResponseBody.MasterSlaveServerGroups.MasterSlaveServerGroup.AssociatedObjects?

            public var createTime: String?

            public var masterSlaveServerGroupId: String?

            public var masterSlaveServerGroupName: String?

            public var tags: DescribeMasterSlaveServerGroupsResponseBody.MasterSlaveServerGroups.MasterSlaveServerGroup.Tags?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.associatedObjects?.validate()
                try self.tags?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.associatedObjects != nil {
                    map["AssociatedObjects"] = self.associatedObjects?.toMap()
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.masterSlaveServerGroupId != nil {
                    map["MasterSlaveServerGroupId"] = self.masterSlaveServerGroupId!
                }
                if self.masterSlaveServerGroupName != nil {
                    map["MasterSlaveServerGroupName"] = self.masterSlaveServerGroupName!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AssociatedObjects") {
                    var model = DescribeMasterSlaveServerGroupsResponseBody.MasterSlaveServerGroups.MasterSlaveServerGroup.AssociatedObjects()
                    model.fromMap(dict["AssociatedObjects"] as! [String: Any])
                    self.associatedObjects = model
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("MasterSlaveServerGroupId") {
                    self.masterSlaveServerGroupId = dict["MasterSlaveServerGroupId"] as! String
                }
                if dict.keys.contains("MasterSlaveServerGroupName") {
                    self.masterSlaveServerGroupName = dict["MasterSlaveServerGroupName"] as! String
                }
                if dict.keys.contains("Tags") {
                    var model = DescribeMasterSlaveServerGroupsResponseBody.MasterSlaveServerGroups.MasterSlaveServerGroup.Tags()
                    model.fromMap(dict["Tags"] as! [String: Any])
                    self.tags = model
                }
            }
        }
        public var masterSlaveServerGroup: [DescribeMasterSlaveServerGroupsResponseBody.MasterSlaveServerGroups.MasterSlaveServerGroup]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.masterSlaveServerGroup != nil {
                var tmp : [Any] = []
                for k in self.masterSlaveServerGroup! {
                    tmp.append(k.toMap())
                }
                map["MasterSlaveServerGroup"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MasterSlaveServerGroup") {
                var tmp : [DescribeMasterSlaveServerGroupsResponseBody.MasterSlaveServerGroups.MasterSlaveServerGroup] = []
                for v in dict["MasterSlaveServerGroup"] as! [Any] {
                    var model = DescribeMasterSlaveServerGroupsResponseBody.MasterSlaveServerGroups.MasterSlaveServerGroup()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.masterSlaveServerGroup = tmp
            }
        }
    }
    public var masterSlaveServerGroups: DescribeMasterSlaveServerGroupsResponseBody.MasterSlaveServerGroups?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.masterSlaveServerGroups?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.masterSlaveServerGroups != nil {
            map["MasterSlaveServerGroups"] = self.masterSlaveServerGroups?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MasterSlaveServerGroups") {
            var model = DescribeMasterSlaveServerGroupsResponseBody.MasterSlaveServerGroups()
            model.fromMap(dict["MasterSlaveServerGroups"] as! [String: Any])
            self.masterSlaveServerGroups = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeMasterSlaveServerGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMasterSlaveServerGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeMasterSlaveServerGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {
    public var acceptLanguage: String?

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
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
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
        if dict.keys.contains("AcceptLanguage") {
            self.acceptLanguage = dict["AcceptLanguage"] as! String
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

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public class Region : Tea.TeaModel {
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
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("LocalName") {
                    self.localName = dict["LocalName"] as! String
                }
                if dict.keys.contains("RegionEndpoint") {
                    self.regionEndpoint = dict["RegionEndpoint"] as! String
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
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
        if dict.keys.contains("Regions") {
            var model = DescribeRegionsResponseBody.Regions()
            model.fromMap(dict["Regions"] as! [String: Any])
            self.regions = model
        }
        if dict.keys.contains("RequestId") {
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

public class DescribeRuleAttributeRequest : Tea.TeaModel {
    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
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
        if dict.keys.contains("RuleId") {
            self.ruleId = dict["RuleId"] as! String
        }
    }
}

public class DescribeRuleAttributeResponseBody : Tea.TeaModel {
    public var cookie: String?

    public var cookieTimeout: Int32?

    public var domain: String?

    public var healthCheck: String?

    public var healthCheckConnectPort: Int32?

    public var healthCheckDomain: String?

    public var healthCheckHttpCode: String?

    public var healthCheckInterval: Int32?

    public var healthCheckTimeout: Int32?

    public var healthCheckURI: String?

    public var healthyThreshold: Int32?

    public var listenerPort: String?

    public var listenerSync: String?

    public var loadBalancerId: String?

    public var requestId: String?

    public var ruleId: String?

    public var ruleName: String?

    public var scheduler: String?

    public var stickySession: String?

    public var stickySessionType: String?

    public var unhealthyThreshold: Int32?

    public var url: String?

    public var VServerGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cookie != nil {
            map["Cookie"] = self.cookie!
        }
        if self.cookieTimeout != nil {
            map["CookieTimeout"] = self.cookieTimeout!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.healthCheck != nil {
            map["HealthCheck"] = self.healthCheck!
        }
        if self.healthCheckConnectPort != nil {
            map["HealthCheckConnectPort"] = self.healthCheckConnectPort!
        }
        if self.healthCheckDomain != nil {
            map["HealthCheckDomain"] = self.healthCheckDomain!
        }
        if self.healthCheckHttpCode != nil {
            map["HealthCheckHttpCode"] = self.healthCheckHttpCode!
        }
        if self.healthCheckInterval != nil {
            map["HealthCheckInterval"] = self.healthCheckInterval!
        }
        if self.healthCheckTimeout != nil {
            map["HealthCheckTimeout"] = self.healthCheckTimeout!
        }
        if self.healthCheckURI != nil {
            map["HealthCheckURI"] = self.healthCheckURI!
        }
        if self.healthyThreshold != nil {
            map["HealthyThreshold"] = self.healthyThreshold!
        }
        if self.listenerPort != nil {
            map["ListenerPort"] = self.listenerPort!
        }
        if self.listenerSync != nil {
            map["ListenerSync"] = self.listenerSync!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        if self.scheduler != nil {
            map["Scheduler"] = self.scheduler!
        }
        if self.stickySession != nil {
            map["StickySession"] = self.stickySession!
        }
        if self.stickySessionType != nil {
            map["StickySessionType"] = self.stickySessionType!
        }
        if self.unhealthyThreshold != nil {
            map["UnhealthyThreshold"] = self.unhealthyThreshold!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.VServerGroupId != nil {
            map["VServerGroupId"] = self.VServerGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Cookie") {
            self.cookie = dict["Cookie"] as! String
        }
        if dict.keys.contains("CookieTimeout") {
            self.cookieTimeout = dict["CookieTimeout"] as! Int32
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("HealthCheck") {
            self.healthCheck = dict["HealthCheck"] as! String
        }
        if dict.keys.contains("HealthCheckConnectPort") {
            self.healthCheckConnectPort = dict["HealthCheckConnectPort"] as! Int32
        }
        if dict.keys.contains("HealthCheckDomain") {
            self.healthCheckDomain = dict["HealthCheckDomain"] as! String
        }
        if dict.keys.contains("HealthCheckHttpCode") {
            self.healthCheckHttpCode = dict["HealthCheckHttpCode"] as! String
        }
        if dict.keys.contains("HealthCheckInterval") {
            self.healthCheckInterval = dict["HealthCheckInterval"] as! Int32
        }
        if dict.keys.contains("HealthCheckTimeout") {
            self.healthCheckTimeout = dict["HealthCheckTimeout"] as! Int32
        }
        if dict.keys.contains("HealthCheckURI") {
            self.healthCheckURI = dict["HealthCheckURI"] as! String
        }
        if dict.keys.contains("HealthyThreshold") {
            self.healthyThreshold = dict["HealthyThreshold"] as! Int32
        }
        if dict.keys.contains("ListenerPort") {
            self.listenerPort = dict["ListenerPort"] as! String
        }
        if dict.keys.contains("ListenerSync") {
            self.listenerSync = dict["ListenerSync"] as! String
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RuleId") {
            self.ruleId = dict["RuleId"] as! String
        }
        if dict.keys.contains("RuleName") {
            self.ruleName = dict["RuleName"] as! String
        }
        if dict.keys.contains("Scheduler") {
            self.scheduler = dict["Scheduler"] as! String
        }
        if dict.keys.contains("StickySession") {
            self.stickySession = dict["StickySession"] as! String
        }
        if dict.keys.contains("StickySessionType") {
            self.stickySessionType = dict["StickySessionType"] as! String
        }
        if dict.keys.contains("UnhealthyThreshold") {
            self.unhealthyThreshold = dict["UnhealthyThreshold"] as! Int32
        }
        if dict.keys.contains("Url") {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("VServerGroupId") {
            self.VServerGroupId = dict["VServerGroupId"] as! String
        }
    }
}

public class DescribeRuleAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRuleAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeRuleAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRulesRequest : Tea.TeaModel {
    public var listenerPort: Int32?

    public var listenerProtocol: String?

    public var loadBalancerId: String?

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
        if self.listenerPort != nil {
            map["ListenerPort"] = self.listenerPort!
        }
        if self.listenerProtocol != nil {
            map["ListenerProtocol"] = self.listenerProtocol!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
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
        if dict.keys.contains("ListenerPort") {
            self.listenerPort = dict["ListenerPort"] as! Int32
        }
        if dict.keys.contains("ListenerProtocol") {
            self.listenerProtocol = dict["ListenerProtocol"] as! String
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
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

public class DescribeRulesResponseBody : Tea.TeaModel {
    public class Rules : Tea.TeaModel {
        public class Rule : Tea.TeaModel {
            public var cookie: String?

            public var cookieTimeout: Int32?

            public var domain: String?

            public var healthCheck: String?

            public var healthCheckConnectPort: Int32?

            public var healthCheckDomain: String?

            public var healthCheckHttpCode: String?

            public var healthCheckInterval: Int32?

            public var healthCheckTimeout: Int32?

            public var healthCheckURI: String?

            public var healthyThreshold: Int32?

            public var listenerSync: String?

            public var ruleId: String?

            public var ruleName: String?

            public var scheduler: String?

            public var stickySession: String?

            public var stickySessionType: String?

            public var unhealthyThreshold: Int32?

            public var url: String?

            public var VServerGroupId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cookie != nil {
                    map["Cookie"] = self.cookie!
                }
                if self.cookieTimeout != nil {
                    map["CookieTimeout"] = self.cookieTimeout!
                }
                if self.domain != nil {
                    map["Domain"] = self.domain!
                }
                if self.healthCheck != nil {
                    map["HealthCheck"] = self.healthCheck!
                }
                if self.healthCheckConnectPort != nil {
                    map["HealthCheckConnectPort"] = self.healthCheckConnectPort!
                }
                if self.healthCheckDomain != nil {
                    map["HealthCheckDomain"] = self.healthCheckDomain!
                }
                if self.healthCheckHttpCode != nil {
                    map["HealthCheckHttpCode"] = self.healthCheckHttpCode!
                }
                if self.healthCheckInterval != nil {
                    map["HealthCheckInterval"] = self.healthCheckInterval!
                }
                if self.healthCheckTimeout != nil {
                    map["HealthCheckTimeout"] = self.healthCheckTimeout!
                }
                if self.healthCheckURI != nil {
                    map["HealthCheckURI"] = self.healthCheckURI!
                }
                if self.healthyThreshold != nil {
                    map["HealthyThreshold"] = self.healthyThreshold!
                }
                if self.listenerSync != nil {
                    map["ListenerSync"] = self.listenerSync!
                }
                if self.ruleId != nil {
                    map["RuleId"] = self.ruleId!
                }
                if self.ruleName != nil {
                    map["RuleName"] = self.ruleName!
                }
                if self.scheduler != nil {
                    map["Scheduler"] = self.scheduler!
                }
                if self.stickySession != nil {
                    map["StickySession"] = self.stickySession!
                }
                if self.stickySessionType != nil {
                    map["StickySessionType"] = self.stickySessionType!
                }
                if self.unhealthyThreshold != nil {
                    map["UnhealthyThreshold"] = self.unhealthyThreshold!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                if self.VServerGroupId != nil {
                    map["VServerGroupId"] = self.VServerGroupId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Cookie") {
                    self.cookie = dict["Cookie"] as! String
                }
                if dict.keys.contains("CookieTimeout") {
                    self.cookieTimeout = dict["CookieTimeout"] as! Int32
                }
                if dict.keys.contains("Domain") {
                    self.domain = dict["Domain"] as! String
                }
                if dict.keys.contains("HealthCheck") {
                    self.healthCheck = dict["HealthCheck"] as! String
                }
                if dict.keys.contains("HealthCheckConnectPort") {
                    self.healthCheckConnectPort = dict["HealthCheckConnectPort"] as! Int32
                }
                if dict.keys.contains("HealthCheckDomain") {
                    self.healthCheckDomain = dict["HealthCheckDomain"] as! String
                }
                if dict.keys.contains("HealthCheckHttpCode") {
                    self.healthCheckHttpCode = dict["HealthCheckHttpCode"] as! String
                }
                if dict.keys.contains("HealthCheckInterval") {
                    self.healthCheckInterval = dict["HealthCheckInterval"] as! Int32
                }
                if dict.keys.contains("HealthCheckTimeout") {
                    self.healthCheckTimeout = dict["HealthCheckTimeout"] as! Int32
                }
                if dict.keys.contains("HealthCheckURI") {
                    self.healthCheckURI = dict["HealthCheckURI"] as! String
                }
                if dict.keys.contains("HealthyThreshold") {
                    self.healthyThreshold = dict["HealthyThreshold"] as! Int32
                }
                if dict.keys.contains("ListenerSync") {
                    self.listenerSync = dict["ListenerSync"] as! String
                }
                if dict.keys.contains("RuleId") {
                    self.ruleId = dict["RuleId"] as! String
                }
                if dict.keys.contains("RuleName") {
                    self.ruleName = dict["RuleName"] as! String
                }
                if dict.keys.contains("Scheduler") {
                    self.scheduler = dict["Scheduler"] as! String
                }
                if dict.keys.contains("StickySession") {
                    self.stickySession = dict["StickySession"] as! String
                }
                if dict.keys.contains("StickySessionType") {
                    self.stickySessionType = dict["StickySessionType"] as! String
                }
                if dict.keys.contains("UnhealthyThreshold") {
                    self.unhealthyThreshold = dict["UnhealthyThreshold"] as! Int32
                }
                if dict.keys.contains("Url") {
                    self.url = dict["Url"] as! String
                }
                if dict.keys.contains("VServerGroupId") {
                    self.VServerGroupId = dict["VServerGroupId"] as! String
                }
            }
        }
        public var rule: [DescribeRulesResponseBody.Rules.Rule]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.rule != nil {
                var tmp : [Any] = []
                for k in self.rule! {
                    tmp.append(k.toMap())
                }
                map["Rule"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Rule") {
                var tmp : [DescribeRulesResponseBody.Rules.Rule] = []
                for v in dict["Rule"] as! [Any] {
                    var model = DescribeRulesResponseBody.Rules.Rule()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.rule = tmp
            }
        }
    }
    public var requestId: String?

    public var rules: DescribeRulesResponseBody.Rules?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.rules?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.rules != nil {
            map["Rules"] = self.rules?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Rules") {
            var model = DescribeRulesResponseBody.Rules()
            model.fromMap(dict["Rules"] as! [String: Any])
            self.rules = model
        }
    }
}

public class DescribeRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRulesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeServerCertificatesRequest : Tea.TeaModel {
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
    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var serverCertificateId: String?

    public var tag: [DescribeServerCertificatesRequest.Tag]?

    public override init() {
        super.init()
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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.serverCertificateId != nil {
            map["ServerCertificateId"] = self.serverCertificateId!
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
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ServerCertificateId") {
            self.serverCertificateId = dict["ServerCertificateId"] as! String
        }
        if dict.keys.contains("Tag") {
            var tmp : [DescribeServerCertificatesRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = DescribeServerCertificatesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class DescribeServerCertificatesResponseBody : Tea.TeaModel {
    public class ServerCertificates : Tea.TeaModel {
        public class ServerCertificate : Tea.TeaModel {
            public class SubjectAlternativeNames : Tea.TeaModel {
                public var subjectAlternativeName: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.subjectAlternativeName != nil {
                        map["SubjectAlternativeName"] = self.subjectAlternativeName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("SubjectAlternativeName") {
                        self.subjectAlternativeName = dict["SubjectAlternativeName"] as! [String]
                    }
                }
            }
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
                        if dict.keys.contains("TagKey") {
                            self.tagKey = dict["TagKey"] as! String
                        }
                        if dict.keys.contains("TagValue") {
                            self.tagValue = dict["TagValue"] as! String
                        }
                    }
                }
                public var tag: [DescribeServerCertificatesResponseBody.ServerCertificates.ServerCertificate.Tags.Tag]?

                public override init() {
                    super.init()
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
                    if dict.keys.contains("Tag") {
                        var tmp : [DescribeServerCertificatesResponseBody.ServerCertificates.ServerCertificate.Tags.Tag] = []
                        for v in dict["Tag"] as! [Any] {
                            var model = DescribeServerCertificatesResponseBody.ServerCertificates.ServerCertificate.Tags.Tag()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.tag = tmp
                    }
                }
            }
            public var aliCloudCertificateId: String?

            public var aliCloudCertificateName: String?

            public var commonName: String?

            public var createTime: String?

            public var createTimeStamp: Int64?

            public var expireTime: String?

            public var expireTimeStamp: Int64?

            public var fingerprint: String?

            public var isAliCloudCertificate: Int32?

            public var regionId: String?

            public var resourceGroupId: String?

            public var serverCertificateId: String?

            public var serverCertificateName: String?

            public var subjectAlternativeNames: DescribeServerCertificatesResponseBody.ServerCertificates.ServerCertificate.SubjectAlternativeNames?

            public var tags: DescribeServerCertificatesResponseBody.ServerCertificates.ServerCertificate.Tags?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.subjectAlternativeNames?.validate()
                try self.tags?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.aliCloudCertificateId != nil {
                    map["AliCloudCertificateId"] = self.aliCloudCertificateId!
                }
                if self.aliCloudCertificateName != nil {
                    map["AliCloudCertificateName"] = self.aliCloudCertificateName!
                }
                if self.commonName != nil {
                    map["CommonName"] = self.commonName!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.createTimeStamp != nil {
                    map["CreateTimeStamp"] = self.createTimeStamp!
                }
                if self.expireTime != nil {
                    map["ExpireTime"] = self.expireTime!
                }
                if self.expireTimeStamp != nil {
                    map["ExpireTimeStamp"] = self.expireTimeStamp!
                }
                if self.fingerprint != nil {
                    map["Fingerprint"] = self.fingerprint!
                }
                if self.isAliCloudCertificate != nil {
                    map["IsAliCloudCertificate"] = self.isAliCloudCertificate!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.serverCertificateId != nil {
                    map["ServerCertificateId"] = self.serverCertificateId!
                }
                if self.serverCertificateName != nil {
                    map["ServerCertificateName"] = self.serverCertificateName!
                }
                if self.subjectAlternativeNames != nil {
                    map["SubjectAlternativeNames"] = self.subjectAlternativeNames?.toMap()
                }
                if self.tags != nil {
                    map["Tags"] = self.tags?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AliCloudCertificateId") {
                    self.aliCloudCertificateId = dict["AliCloudCertificateId"] as! String
                }
                if dict.keys.contains("AliCloudCertificateName") {
                    self.aliCloudCertificateName = dict["AliCloudCertificateName"] as! String
                }
                if dict.keys.contains("CommonName") {
                    self.commonName = dict["CommonName"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("CreateTimeStamp") {
                    self.createTimeStamp = dict["CreateTimeStamp"] as! Int64
                }
                if dict.keys.contains("ExpireTime") {
                    self.expireTime = dict["ExpireTime"] as! String
                }
                if dict.keys.contains("ExpireTimeStamp") {
                    self.expireTimeStamp = dict["ExpireTimeStamp"] as! Int64
                }
                if dict.keys.contains("Fingerprint") {
                    self.fingerprint = dict["Fingerprint"] as! String
                }
                if dict.keys.contains("IsAliCloudCertificate") {
                    self.isAliCloudCertificate = dict["IsAliCloudCertificate"] as! Int32
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("ResourceGroupId") {
                    self.resourceGroupId = dict["ResourceGroupId"] as! String
                }
                if dict.keys.contains("ServerCertificateId") {
                    self.serverCertificateId = dict["ServerCertificateId"] as! String
                }
                if dict.keys.contains("ServerCertificateName") {
                    self.serverCertificateName = dict["ServerCertificateName"] as! String
                }
                if dict.keys.contains("SubjectAlternativeNames") {
                    var model = DescribeServerCertificatesResponseBody.ServerCertificates.ServerCertificate.SubjectAlternativeNames()
                    model.fromMap(dict["SubjectAlternativeNames"] as! [String: Any])
                    self.subjectAlternativeNames = model
                }
                if dict.keys.contains("Tags") {
                    var model = DescribeServerCertificatesResponseBody.ServerCertificates.ServerCertificate.Tags()
                    model.fromMap(dict["Tags"] as! [String: Any])
                    self.tags = model
                }
            }
        }
        public var serverCertificate: [DescribeServerCertificatesResponseBody.ServerCertificates.ServerCertificate]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.serverCertificate != nil {
                var tmp : [Any] = []
                for k in self.serverCertificate! {
                    tmp.append(k.toMap())
                }
                map["ServerCertificate"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ServerCertificate") {
                var tmp : [DescribeServerCertificatesResponseBody.ServerCertificates.ServerCertificate] = []
                for v in dict["ServerCertificate"] as! [Any] {
                    var model = DescribeServerCertificatesResponseBody.ServerCertificates.ServerCertificate()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.serverCertificate = tmp
            }
        }
    }
    public var requestId: String?

    public var serverCertificates: DescribeServerCertificatesResponseBody.ServerCertificates?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.serverCertificates?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serverCertificates != nil {
            map["ServerCertificates"] = self.serverCertificates?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServerCertificates") {
            var model = DescribeServerCertificatesResponseBody.ServerCertificates()
            model.fromMap(dict["ServerCertificates"] as! [String: Any])
            self.serverCertificates = model
        }
    }
}

public class DescribeServerCertificatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeServerCertificatesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeServerCertificatesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTagsRequest : Tea.TeaModel {
    public var distinctKey: Bool?

    public var loadBalancerId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.distinctKey != nil {
            map["DistinctKey"] = self.distinctKey!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
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
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DistinctKey") {
            self.distinctKey = dict["DistinctKey"] as! Bool
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
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
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! String
        }
    }
}

public class DescribeTagsResponseBody : Tea.TeaModel {
    public class TagSets : Tea.TeaModel {
        public class TagSet : Tea.TeaModel {
            public var instanceCount: Int32?

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
                if self.instanceCount != nil {
                    map["InstanceCount"] = self.instanceCount!
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
                if dict.keys.contains("InstanceCount") {
                    self.instanceCount = dict["InstanceCount"] as! Int32
                }
                if dict.keys.contains("TagKey") {
                    self.tagKey = dict["TagKey"] as! String
                }
                if dict.keys.contains("TagValue") {
                    self.tagValue = dict["TagValue"] as! String
                }
            }
        }
        public var tagSet: [DescribeTagsResponseBody.TagSets.TagSet]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tagSet != nil {
                var tmp : [Any] = []
                for k in self.tagSet! {
                    tmp.append(k.toMap())
                }
                map["TagSet"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TagSet") {
                var tmp : [DescribeTagsResponseBody.TagSets.TagSet] = []
                for v in dict["TagSet"] as! [Any] {
                    var model = DescribeTagsResponseBody.TagSets.TagSet()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tagSet = tmp
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var tagSets: DescribeTagsResponseBody.TagSets?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tagSets?.validate()
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
        if self.tagSets != nil {
            map["TagSets"] = self.tagSets?.toMap()
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TagSets") {
            var model = DescribeTagsResponseBody.TagSets()
            model.fromMap(dict["TagSets"] as! [String: Any])
            self.tagSets = model
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
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

public class DescribeVServerGroupAttributeRequest : Tea.TeaModel {
    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var VServerGroupId: String?

    public override init() {
        super.init()
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
        if self.VServerGroupId != nil {
            map["VServerGroupId"] = self.VServerGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
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
        if dict.keys.contains("VServerGroupId") {
            self.VServerGroupId = dict["VServerGroupId"] as! String
        }
    }
}

public class DescribeVServerGroupAttributeResponseBody : Tea.TeaModel {
    public class BackendServers : Tea.TeaModel {
        public class BackendServer : Tea.TeaModel {
            public var description_: String?

            public var port: Int32?

            public var serverId: String?

            public var serverIp: String?

            public var type: String?

            public var weight: Int32?

            public override init() {
                super.init()
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
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.serverId != nil {
                    map["ServerId"] = self.serverId!
                }
                if self.serverIp != nil {
                    map["ServerIp"] = self.serverIp!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.weight != nil {
                    map["Weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Port") {
                    self.port = dict["Port"] as! Int32
                }
                if dict.keys.contains("ServerId") {
                    self.serverId = dict["ServerId"] as! String
                }
                if dict.keys.contains("ServerIp") {
                    self.serverIp = dict["ServerIp"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Weight") {
                    self.weight = dict["Weight"] as! Int32
                }
            }
        }
        public var backendServer: [DescribeVServerGroupAttributeResponseBody.BackendServers.BackendServer]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backendServer != nil {
                var tmp : [Any] = []
                for k in self.backendServer! {
                    tmp.append(k.toMap())
                }
                map["BackendServer"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BackendServer") {
                var tmp : [DescribeVServerGroupAttributeResponseBody.BackendServers.BackendServer] = []
                for v in dict["BackendServer"] as! [Any] {
                    var model = DescribeVServerGroupAttributeResponseBody.BackendServers.BackendServer()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.backendServer = tmp
            }
        }
    }
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
                if dict.keys.contains("TagKey") {
                    self.tagKey = dict["TagKey"] as! String
                }
                if dict.keys.contains("TagValue") {
                    self.tagValue = dict["TagValue"] as! String
                }
            }
        }
        public var tag: [DescribeVServerGroupAttributeResponseBody.Tags.Tag]?

        public override init() {
            super.init()
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
            if dict.keys.contains("Tag") {
                var tmp : [DescribeVServerGroupAttributeResponseBody.Tags.Tag] = []
                for v in dict["Tag"] as! [Any] {
                    var model = DescribeVServerGroupAttributeResponseBody.Tags.Tag()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tag = tmp
            }
        }
    }
    public var backendServers: DescribeVServerGroupAttributeResponseBody.BackendServers?

    public var createTime: String?

    public var loadBalancerId: String?

    public var requestId: String?

    public var tags: DescribeVServerGroupAttributeResponseBody.Tags?

    public var VServerGroupId: String?

    public var VServerGroupName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.backendServers?.validate()
        try self.tags?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backendServers != nil {
            map["BackendServers"] = self.backendServers?.toMap()
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tags != nil {
            map["Tags"] = self.tags?.toMap()
        }
        if self.VServerGroupId != nil {
            map["VServerGroupId"] = self.VServerGroupId!
        }
        if self.VServerGroupName != nil {
            map["VServerGroupName"] = self.VServerGroupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackendServers") {
            var model = DescribeVServerGroupAttributeResponseBody.BackendServers()
            model.fromMap(dict["BackendServers"] as! [String: Any])
            self.backendServers = model
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Tags") {
            var model = DescribeVServerGroupAttributeResponseBody.Tags()
            model.fromMap(dict["Tags"] as! [String: Any])
            self.tags = model
        }
        if dict.keys.contains("VServerGroupId") {
            self.VServerGroupId = dict["VServerGroupId"] as! String
        }
        if dict.keys.contains("VServerGroupName") {
            self.VServerGroupName = dict["VServerGroupName"] as! String
        }
    }
}

public class DescribeVServerGroupAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVServerGroupAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeVServerGroupAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeVServerGroupsRequest : Tea.TeaModel {
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
    public var description_: String?

    public var includeListener: Bool?

    public var includeRule: Bool?

    public var loadBalancerId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tag: [DescribeVServerGroupsRequest.Tag]?

    public override init() {
        super.init()
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
        if self.includeListener != nil {
            map["IncludeListener"] = self.includeListener!
        }
        if self.includeRule != nil {
            map["IncludeRule"] = self.includeRule!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
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
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("IncludeListener") {
            self.includeListener = dict["IncludeListener"] as! Bool
        }
        if dict.keys.contains("IncludeRule") {
            self.includeRule = dict["IncludeRule"] as! Bool
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
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
        if dict.keys.contains("Tag") {
            var tmp : [DescribeVServerGroupsRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = DescribeVServerGroupsRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class DescribeVServerGroupsResponseBody : Tea.TeaModel {
    public class VServerGroups : Tea.TeaModel {
        public class VServerGroup : Tea.TeaModel {
            public class AssociatedObjects : Tea.TeaModel {
                public class Listeners : Tea.TeaModel {
                    public class Listener : Tea.TeaModel {
                        public var port: Int32?

                        public var protocol_: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.port != nil {
                                map["Port"] = self.port!
                            }
                            if self.protocol_ != nil {
                                map["Protocol"] = self.protocol_!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Port") {
                                self.port = dict["Port"] as! Int32
                            }
                            if dict.keys.contains("Protocol") {
                                self.protocol_ = dict["Protocol"] as! String
                            }
                        }
                    }
                    public var listener: [DescribeVServerGroupsResponseBody.VServerGroups.VServerGroup.AssociatedObjects.Listeners.Listener]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.listener != nil {
                            var tmp : [Any] = []
                            for k in self.listener! {
                                tmp.append(k.toMap())
                            }
                            map["Listener"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Listener") {
                            var tmp : [DescribeVServerGroupsResponseBody.VServerGroups.VServerGroup.AssociatedObjects.Listeners.Listener] = []
                            for v in dict["Listener"] as! [Any] {
                                var model = DescribeVServerGroupsResponseBody.VServerGroups.VServerGroup.AssociatedObjects.Listeners.Listener()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.listener = tmp
                        }
                    }
                }
                public class Rules : Tea.TeaModel {
                    public class Rule : Tea.TeaModel {
                        public var domain: String?

                        public var ruleId: String?

                        public var ruleName: String?

                        public var url: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.domain != nil {
                                map["Domain"] = self.domain!
                            }
                            if self.ruleId != nil {
                                map["RuleId"] = self.ruleId!
                            }
                            if self.ruleName != nil {
                                map["RuleName"] = self.ruleName!
                            }
                            if self.url != nil {
                                map["Url"] = self.url!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Domain") {
                                self.domain = dict["Domain"] as! String
                            }
                            if dict.keys.contains("RuleId") {
                                self.ruleId = dict["RuleId"] as! String
                            }
                            if dict.keys.contains("RuleName") {
                                self.ruleName = dict["RuleName"] as! String
                            }
                            if dict.keys.contains("Url") {
                                self.url = dict["Url"] as! String
                            }
                        }
                    }
                    public var rule: [DescribeVServerGroupsResponseBody.VServerGroups.VServerGroup.AssociatedObjects.Rules.Rule]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.rule != nil {
                            var tmp : [Any] = []
                            for k in self.rule! {
                                tmp.append(k.toMap())
                            }
                            map["Rule"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Rule") {
                            var tmp : [DescribeVServerGroupsResponseBody.VServerGroups.VServerGroup.AssociatedObjects.Rules.Rule] = []
                            for v in dict["Rule"] as! [Any] {
                                var model = DescribeVServerGroupsResponseBody.VServerGroups.VServerGroup.AssociatedObjects.Rules.Rule()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.rule = tmp
                        }
                    }
                }
                public var listeners: DescribeVServerGroupsResponseBody.VServerGroups.VServerGroup.AssociatedObjects.Listeners?

                public var rules: DescribeVServerGroupsResponseBody.VServerGroups.VServerGroup.AssociatedObjects.Rules?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.listeners?.validate()
                    try self.rules?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.listeners != nil {
                        map["Listeners"] = self.listeners?.toMap()
                    }
                    if self.rules != nil {
                        map["Rules"] = self.rules?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Listeners") {
                        var model = DescribeVServerGroupsResponseBody.VServerGroups.VServerGroup.AssociatedObjects.Listeners()
                        model.fromMap(dict["Listeners"] as! [String: Any])
                        self.listeners = model
                    }
                    if dict.keys.contains("Rules") {
                        var model = DescribeVServerGroupsResponseBody.VServerGroups.VServerGroup.AssociatedObjects.Rules()
                        model.fromMap(dict["Rules"] as! [String: Any])
                        self.rules = model
                    }
                }
            }
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
                        if dict.keys.contains("TagKey") {
                            self.tagKey = dict["TagKey"] as! String
                        }
                        if dict.keys.contains("TagValue") {
                            self.tagValue = dict["TagValue"] as! String
                        }
                    }
                }
                public var tag: [DescribeVServerGroupsResponseBody.VServerGroups.VServerGroup.Tags.Tag]?

                public override init() {
                    super.init()
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
                    if dict.keys.contains("Tag") {
                        var tmp : [DescribeVServerGroupsResponseBody.VServerGroups.VServerGroup.Tags.Tag] = []
                        for v in dict["Tag"] as! [Any] {
                            var model = DescribeVServerGroupsResponseBody.VServerGroups.VServerGroup.Tags.Tag()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.tag = tmp
                    }
                }
            }
            public var associatedObjects: DescribeVServerGroupsResponseBody.VServerGroups.VServerGroup.AssociatedObjects?

            public var createTime: String?

            public var serverCount: Int64?

            public var tags: DescribeVServerGroupsResponseBody.VServerGroups.VServerGroup.Tags?

            public var VServerGroupId: String?

            public var VServerGroupName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.associatedObjects?.validate()
                try self.tags?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.associatedObjects != nil {
                    map["AssociatedObjects"] = self.associatedObjects?.toMap()
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.serverCount != nil {
                    map["ServerCount"] = self.serverCount!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags?.toMap()
                }
                if self.VServerGroupId != nil {
                    map["VServerGroupId"] = self.VServerGroupId!
                }
                if self.VServerGroupName != nil {
                    map["VServerGroupName"] = self.VServerGroupName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AssociatedObjects") {
                    var model = DescribeVServerGroupsResponseBody.VServerGroups.VServerGroup.AssociatedObjects()
                    model.fromMap(dict["AssociatedObjects"] as! [String: Any])
                    self.associatedObjects = model
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("ServerCount") {
                    self.serverCount = dict["ServerCount"] as! Int64
                }
                if dict.keys.contains("Tags") {
                    var model = DescribeVServerGroupsResponseBody.VServerGroups.VServerGroup.Tags()
                    model.fromMap(dict["Tags"] as! [String: Any])
                    self.tags = model
                }
                if dict.keys.contains("VServerGroupId") {
                    self.VServerGroupId = dict["VServerGroupId"] as! String
                }
                if dict.keys.contains("VServerGroupName") {
                    self.VServerGroupName = dict["VServerGroupName"] as! String
                }
            }
        }
        public var VServerGroup: [DescribeVServerGroupsResponseBody.VServerGroups.VServerGroup]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.VServerGroup != nil {
                var tmp : [Any] = []
                for k in self.VServerGroup! {
                    tmp.append(k.toMap())
                }
                map["VServerGroup"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("VServerGroup") {
                var tmp : [DescribeVServerGroupsResponseBody.VServerGroups.VServerGroup] = []
                for v in dict["VServerGroup"] as! [Any] {
                    var model = DescribeVServerGroupsResponseBody.VServerGroups.VServerGroup()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.VServerGroup = tmp
            }
        }
    }
    public var requestId: String?

    public var VServerGroups: DescribeVServerGroupsResponseBody.VServerGroups?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.VServerGroups?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.VServerGroups != nil {
            map["VServerGroups"] = self.VServerGroups?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("VServerGroups") {
            var model = DescribeVServerGroupsResponseBody.VServerGroups()
            model.fromMap(dict["VServerGroups"] as! [String: Any])
            self.VServerGroups = model
        }
    }
}

public class DescribeVServerGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVServerGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeVServerGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeZonesRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
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

public class DescribeZonesResponseBody : Tea.TeaModel {
    public class Zones : Tea.TeaModel {
        public class Zone : Tea.TeaModel {
            public class SlaveZones : Tea.TeaModel {
                public class SlaveZone : Tea.TeaModel {
                    public var localName: String?

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
                        if self.localName != nil {
                            map["LocalName"] = self.localName!
                        }
                        if self.zoneId != nil {
                            map["ZoneId"] = self.zoneId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("LocalName") {
                            self.localName = dict["LocalName"] as! String
                        }
                        if dict.keys.contains("ZoneId") {
                            self.zoneId = dict["ZoneId"] as! String
                        }
                    }
                }
                public var slaveZone: [DescribeZonesResponseBody.Zones.Zone.SlaveZones.SlaveZone]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.slaveZone != nil {
                        var tmp : [Any] = []
                        for k in self.slaveZone! {
                            tmp.append(k.toMap())
                        }
                        map["SlaveZone"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("SlaveZone") {
                        var tmp : [DescribeZonesResponseBody.Zones.Zone.SlaveZones.SlaveZone] = []
                        for v in dict["SlaveZone"] as! [Any] {
                            var model = DescribeZonesResponseBody.Zones.Zone.SlaveZones.SlaveZone()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.slaveZone = tmp
                    }
                }
            }
            public var localName: String?

            public var slaveZones: DescribeZonesResponseBody.Zones.Zone.SlaveZones?

            public var zoneId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.slaveZones?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.localName != nil {
                    map["LocalName"] = self.localName!
                }
                if self.slaveZones != nil {
                    map["SlaveZones"] = self.slaveZones?.toMap()
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("LocalName") {
                    self.localName = dict["LocalName"] as! String
                }
                if dict.keys.contains("SlaveZones") {
                    var model = DescribeZonesResponseBody.Zones.Zone.SlaveZones()
                    model.fromMap(dict["SlaveZones"] as! [String: Any])
                    self.slaveZones = model
                }
                if dict.keys.contains("ZoneId") {
                    self.zoneId = dict["ZoneId"] as! String
                }
            }
        }
        public var zone: [DescribeZonesResponseBody.Zones.Zone]?

        public override init() {
            super.init()
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
                var tmp : [DescribeZonesResponseBody.Zones.Zone] = []
                for v in dict["Zone"] as! [Any] {
                    var model = DescribeZonesResponseBody.Zones.Zone()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.zone = tmp
            }
        }
    }
    public var requestId: String?

    public var zones: DescribeZonesResponseBody.Zones?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.zones != nil {
            map["Zones"] = self.zones?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Zones") {
            var model = DescribeZonesResponseBody.Zones()
            model.fromMap(dict["Zones"] as! [String: Any])
            self.zones = model
        }
    }
}

public class DescribeZonesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeZonesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeZonesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EnableHighDefinationMonitorRequest : Tea.TeaModel {
    public var logProject: String?

    public var logStore: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.logProject != nil {
            map["LogProject"] = self.logProject!
        }
        if self.logStore != nil {
            map["LogStore"] = self.logStore!
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
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LogProject") {
            self.logProject = dict["LogProject"] as! String
        }
        if dict.keys.contains("LogStore") {
            self.logStore = dict["LogStore"] as! String
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
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! String
        }
    }
}

public class EnableHighDefinationMonitorResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var success: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
    }
}

public class EnableHighDefinationMonitorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableHighDefinationMonitorResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = EnableHighDefinationMonitorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTLSCipherPoliciesRequest : Tea.TeaModel {
    public var includeListener: Bool?

    public var maxItems: Int32?

    public var name: String?

    public var nextToken: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var TLSCipherPolicyId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.includeListener != nil {
            map["IncludeListener"] = self.includeListener!
        }
        if self.maxItems != nil {
            map["MaxItems"] = self.maxItems!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
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
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.TLSCipherPolicyId != nil {
            map["TLSCipherPolicyId"] = self.TLSCipherPolicyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IncludeListener") {
            self.includeListener = dict["IncludeListener"] as! Bool
        }
        if dict.keys.contains("MaxItems") {
            self.maxItems = dict["MaxItems"] as! Int32
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
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
        if dict.keys.contains("TLSCipherPolicyId") {
            self.TLSCipherPolicyId = dict["TLSCipherPolicyId"] as! String
        }
    }
}

public class ListTLSCipherPoliciesResponseBody : Tea.TeaModel {
    public class TLSCipherPolicies : Tea.TeaModel {
        public class RelateListeners : Tea.TeaModel {
            public var loadBalancerId: String?

            public var port: Int32?

            public var protocol_: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.loadBalancerId != nil {
                    map["LoadBalancerId"] = self.loadBalancerId!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.protocol_ != nil {
                    map["Protocol"] = self.protocol_!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("LoadBalancerId") {
                    self.loadBalancerId = dict["LoadBalancerId"] as! String
                }
                if dict.keys.contains("Port") {
                    self.port = dict["Port"] as! Int32
                }
                if dict.keys.contains("Protocol") {
                    self.protocol_ = dict["Protocol"] as! String
                }
            }
        }
        public var ciphers: [String]?

        public var createTime: Int64?

        public var instanceId: String?

        public var name: String?

        public var relateListeners: [ListTLSCipherPoliciesResponseBody.TLSCipherPolicies.RelateListeners]?

        public var status: String?

        public var TLSVersions: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ciphers != nil {
                map["Ciphers"] = self.ciphers!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.relateListeners != nil {
                var tmp : [Any] = []
                for k in self.relateListeners! {
                    tmp.append(k.toMap())
                }
                map["RelateListeners"] = tmp
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.TLSVersions != nil {
                map["TLSVersions"] = self.TLSVersions!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Ciphers") {
                self.ciphers = dict["Ciphers"] as! [String]
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("RelateListeners") {
                var tmp : [ListTLSCipherPoliciesResponseBody.TLSCipherPolicies.RelateListeners] = []
                for v in dict["RelateListeners"] as! [Any] {
                    var model = ListTLSCipherPoliciesResponseBody.TLSCipherPolicies.RelateListeners()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.relateListeners = tmp
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TLSVersions") {
                self.TLSVersions = dict["TLSVersions"] as! [String]
            }
        }
    }
    public var isTruncated: Bool?

    public var nextToken: String?

    public var requestId: String?

    public var TLSCipherPolicies: [ListTLSCipherPoliciesResponseBody.TLSCipherPolicies]?

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
        if self.isTruncated != nil {
            map["IsTruncated"] = self.isTruncated!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.TLSCipherPolicies != nil {
            var tmp : [Any] = []
            for k in self.TLSCipherPolicies! {
                tmp.append(k.toMap())
            }
            map["TLSCipherPolicies"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsTruncated") {
            self.isTruncated = dict["IsTruncated"] as! Bool
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TLSCipherPolicies") {
            var tmp : [ListTLSCipherPoliciesResponseBody.TLSCipherPolicies] = []
            for v in dict["TLSCipherPolicies"] as! [Any] {
                var model = ListTLSCipherPoliciesResponseBody.TLSCipherPolicies()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.TLSCipherPolicies = tmp
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListTLSCipherPoliciesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTLSCipherPoliciesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListTLSCipherPoliciesResponseBody()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
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
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
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

public class ModifyHighDefinationMonitorRequest : Tea.TeaModel {
    public var logProject: String?

    public var logStore: String?

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
        if self.logProject != nil {
            map["LogProject"] = self.logProject!
        }
        if self.logStore != nil {
            map["LogStore"] = self.logStore!
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
        if dict.keys.contains("LogProject") {
            self.logProject = dict["LogProject"] as! String
        }
        if dict.keys.contains("LogStore") {
            self.logStore = dict["LogStore"] as! String
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

public class ModifyHighDefinationMonitorResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var success: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
    }
}

public class ModifyHighDefinationMonitorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyHighDefinationMonitorResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyHighDefinationMonitorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyLoadBalancerInstanceChargeTypeRequest : Tea.TeaModel {
    public var bandwidth: Int32?

    public var instanceChargeType: String?

    public var internetChargeType: String?

    public var loadBalancerId: String?

    public var loadBalancerSpec: String?

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
        if self.bandwidth != nil {
            map["Bandwidth"] = self.bandwidth!
        }
        if self.instanceChargeType != nil {
            map["InstanceChargeType"] = self.instanceChargeType!
        }
        if self.internetChargeType != nil {
            map["InternetChargeType"] = self.internetChargeType!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.loadBalancerSpec != nil {
            map["LoadBalancerSpec"] = self.loadBalancerSpec!
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
        if dict.keys.contains("Bandwidth") {
            self.bandwidth = dict["Bandwidth"] as! Int32
        }
        if dict.keys.contains("InstanceChargeType") {
            self.instanceChargeType = dict["InstanceChargeType"] as! String
        }
        if dict.keys.contains("InternetChargeType") {
            self.internetChargeType = dict["InternetChargeType"] as! String
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("LoadBalancerSpec") {
            self.loadBalancerSpec = dict["LoadBalancerSpec"] as! String
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

public class ModifyLoadBalancerInstanceChargeTypeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class ModifyLoadBalancerInstanceChargeTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyLoadBalancerInstanceChargeTypeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyLoadBalancerInstanceChargeTypeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyLoadBalancerInstanceSpecRequest : Tea.TeaModel {
    public var autoPay: Bool?

    public var loadBalancerId: String?

    public var loadBalancerSpec: String?

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
        if self.autoPay != nil {
            map["AutoPay"] = self.autoPay!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.loadBalancerSpec != nil {
            map["LoadBalancerSpec"] = self.loadBalancerSpec!
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
        if dict.keys.contains("AutoPay") {
            self.autoPay = dict["AutoPay"] as! Bool
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("LoadBalancerSpec") {
            self.loadBalancerSpec = dict["LoadBalancerSpec"] as! String
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

public class ModifyLoadBalancerInstanceSpecResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyLoadBalancerInstanceSpecResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyLoadBalancerInstanceSpecResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyLoadBalancerInstanceSpecResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyLoadBalancerInternetSpecRequest : Tea.TeaModel {
    public var autoPay: Bool?

    public var bandwidth: Int32?

    public var internetChargeType: String?

    public var loadBalancerId: String?

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
        if self.autoPay != nil {
            map["AutoPay"] = self.autoPay!
        }
        if self.bandwidth != nil {
            map["Bandwidth"] = self.bandwidth!
        }
        if self.internetChargeType != nil {
            map["InternetChargeType"] = self.internetChargeType!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
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
        if dict.keys.contains("AutoPay") {
            self.autoPay = dict["AutoPay"] as! Bool
        }
        if dict.keys.contains("Bandwidth") {
            self.bandwidth = dict["Bandwidth"] as! Int32
        }
        if dict.keys.contains("InternetChargeType") {
            self.internetChargeType = dict["InternetChargeType"] as! String
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
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

public class ModifyLoadBalancerInternetSpecResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyLoadBalancerInternetSpecResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyLoadBalancerInternetSpecResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyLoadBalancerInternetSpecResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyLoadBalancerPayTypeRequest : Tea.TeaModel {
    public var autoPay: Bool?

    public var duration: Int32?

    public var loadBalancerId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var payType: String?

    public var pricingCycle: String?

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
        if self.autoPay != nil {
            map["AutoPay"] = self.autoPay!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
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
        if self.pricingCycle != nil {
            map["PricingCycle"] = self.pricingCycle!
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
        if dict.keys.contains("AutoPay") {
            self.autoPay = dict["AutoPay"] as! Bool
        }
        if dict.keys.contains("Duration") {
            self.duration = dict["Duration"] as! Int32
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PayType") {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("PricingCycle") {
            self.pricingCycle = dict["PricingCycle"] as! String
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

public class ModifyLoadBalancerPayTypeResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyLoadBalancerPayTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyLoadBalancerPayTypeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyLoadBalancerPayTypeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyVServerGroupBackendServersRequest : Tea.TeaModel {
    public var newBackendServers: String?

    public var oldBackendServers: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var VServerGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.newBackendServers != nil {
            map["NewBackendServers"] = self.newBackendServers!
        }
        if self.oldBackendServers != nil {
            map["OldBackendServers"] = self.oldBackendServers!
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
        if self.VServerGroupId != nil {
            map["VServerGroupId"] = self.VServerGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NewBackendServers") {
            self.newBackendServers = dict["NewBackendServers"] as! String
        }
        if dict.keys.contains("OldBackendServers") {
            self.oldBackendServers = dict["OldBackendServers"] as! String
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
        if dict.keys.contains("VServerGroupId") {
            self.VServerGroupId = dict["VServerGroupId"] as! String
        }
    }
}

public class ModifyVServerGroupBackendServersResponseBody : Tea.TeaModel {
    public class BackendServers : Tea.TeaModel {
        public class BackendServer : Tea.TeaModel {
            public var description_: String?

            public var port: Int32?

            public var serverId: String?

            public var type: String?

            public var weight: Int32?

            public override init() {
                super.init()
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
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.serverId != nil {
                    map["ServerId"] = self.serverId!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.weight != nil {
                    map["Weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Port") {
                    self.port = dict["Port"] as! Int32
                }
                if dict.keys.contains("ServerId") {
                    self.serverId = dict["ServerId"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Weight") {
                    self.weight = dict["Weight"] as! Int32
                }
            }
        }
        public var backendServer: [ModifyVServerGroupBackendServersResponseBody.BackendServers.BackendServer]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backendServer != nil {
                var tmp : [Any] = []
                for k in self.backendServer! {
                    tmp.append(k.toMap())
                }
                map["BackendServer"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BackendServer") {
                var tmp : [ModifyVServerGroupBackendServersResponseBody.BackendServers.BackendServer] = []
                for v in dict["BackendServer"] as! [Any] {
                    var model = ModifyVServerGroupBackendServersResponseBody.BackendServers.BackendServer()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.backendServer = tmp
            }
        }
    }
    public var backendServers: ModifyVServerGroupBackendServersResponseBody.BackendServers?

    public var requestId: String?

    public var VServerGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.backendServers?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backendServers != nil {
            map["BackendServers"] = self.backendServers?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.VServerGroupId != nil {
            map["VServerGroupId"] = self.VServerGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackendServers") {
            var model = ModifyVServerGroupBackendServersResponseBody.BackendServers()
            model.fromMap(dict["BackendServers"] as! [String: Any])
            self.backendServers = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("VServerGroupId") {
            self.VServerGroupId = dict["VServerGroupId"] as! String
        }
    }
}

public class ModifyVServerGroupBackendServersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyVServerGroupBackendServersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyVServerGroupBackendServersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class MoveResourceGroupRequest : Tea.TeaModel {
    public var newResourceGroupId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var resourceType: String?

    public var accessKeyId: String?

    public override init() {
        super.init()
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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
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
        if self.accessKeyId != nil {
            map["access_key_id"] = self.accessKeyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NewResourceGroupId") {
            self.newResourceGroupId = dict["NewResourceGroupId"] as! String
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
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("access_key_id") {
            self.accessKeyId = dict["access_key_id"] as! String
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = MoveResourceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveAccessControlListEntryRequest : Tea.TeaModel {
    public var aclEntrys: String?

    public var aclId: String?

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
        if self.aclEntrys != nil {
            map["AclEntrys"] = self.aclEntrys!
        }
        if self.aclId != nil {
            map["AclId"] = self.aclId!
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
        if dict.keys.contains("AclEntrys") {
            self.aclEntrys = dict["AclEntrys"] as! String
        }
        if dict.keys.contains("AclId") {
            self.aclId = dict["AclId"] as! String
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

public class RemoveAccessControlListEntryResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class RemoveAccessControlListEntryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveAccessControlListEntryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = RemoveAccessControlListEntryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveBackendServersRequest : Tea.TeaModel {
    public var backendServers: String?

    public var loadBalancerId: String?

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
        if self.backendServers != nil {
            map["BackendServers"] = self.backendServers!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
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
        if dict.keys.contains("BackendServers") {
            self.backendServers = dict["BackendServers"] as! String
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
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

public class RemoveBackendServersResponseBody : Tea.TeaModel {
    public class BackendServers : Tea.TeaModel {
        public class BackendServer : Tea.TeaModel {
            public var description_: String?

            public var serverId: String?

            public var type: String?

            public var weight: Int32?

            public override init() {
                super.init()
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
                if self.serverId != nil {
                    map["ServerId"] = self.serverId!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.weight != nil {
                    map["Weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("ServerId") {
                    self.serverId = dict["ServerId"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Weight") {
                    self.weight = dict["Weight"] as! Int32
                }
            }
        }
        public var backendServer: [RemoveBackendServersResponseBody.BackendServers.BackendServer]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backendServer != nil {
                var tmp : [Any] = []
                for k in self.backendServer! {
                    tmp.append(k.toMap())
                }
                map["BackendServer"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BackendServer") {
                var tmp : [RemoveBackendServersResponseBody.BackendServers.BackendServer] = []
                for v in dict["BackendServer"] as! [Any] {
                    var model = RemoveBackendServersResponseBody.BackendServers.BackendServer()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.backendServer = tmp
            }
        }
    }
    public var backendServers: RemoveBackendServersResponseBody.BackendServers?

    public var loadBalancerId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.backendServers?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backendServers != nil {
            map["BackendServers"] = self.backendServers?.toMap()
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackendServers") {
            var model = RemoveBackendServersResponseBody.BackendServers()
            model.fromMap(dict["BackendServers"] as! [String: Any])
            self.backendServers = model
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RemoveBackendServersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveBackendServersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = RemoveBackendServersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveListenerWhiteListItemRequest : Tea.TeaModel {
    public var listenerPort: Int32?

    public var listenerProtocol: String?

    public var loadBalancerId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var sourceItems: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.listenerPort != nil {
            map["ListenerPort"] = self.listenerPort!
        }
        if self.listenerProtocol != nil {
            map["ListenerProtocol"] = self.listenerProtocol!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
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
        if self.sourceItems != nil {
            map["SourceItems"] = self.sourceItems!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ListenerPort") {
            self.listenerPort = dict["ListenerPort"] as! Int32
        }
        if dict.keys.contains("ListenerProtocol") {
            self.listenerProtocol = dict["ListenerProtocol"] as! String
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
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
        if dict.keys.contains("SourceItems") {
            self.sourceItems = dict["SourceItems"] as! String
        }
    }
}

public class RemoveListenerWhiteListItemResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class RemoveListenerWhiteListItemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveListenerWhiteListItemResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = RemoveListenerWhiteListItemResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveTagsRequest : Tea.TeaModel {
    public var loadBalancerId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
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
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
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
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! String
        }
    }
}

public class RemoveTagsResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class RemoveTagsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveTagsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = RemoveTagsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveVServerGroupBackendServersRequest : Tea.TeaModel {
    public var backendServers: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var VServerGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backendServers != nil {
            map["BackendServers"] = self.backendServers!
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
        if self.VServerGroupId != nil {
            map["VServerGroupId"] = self.VServerGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackendServers") {
            self.backendServers = dict["BackendServers"] as! String
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
        if dict.keys.contains("VServerGroupId") {
            self.VServerGroupId = dict["VServerGroupId"] as! String
        }
    }
}

public class RemoveVServerGroupBackendServersResponseBody : Tea.TeaModel {
    public class BackendServers : Tea.TeaModel {
        public class BackendServer : Tea.TeaModel {
            public var port: Int32?

            public var serverId: String?

            public var type: String?

            public var weight: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.serverId != nil {
                    map["ServerId"] = self.serverId!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.weight != nil {
                    map["Weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Port") {
                    self.port = dict["Port"] as! Int32
                }
                if dict.keys.contains("ServerId") {
                    self.serverId = dict["ServerId"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Weight") {
                    self.weight = dict["Weight"] as! Int32
                }
            }
        }
        public var backendServer: [RemoveVServerGroupBackendServersResponseBody.BackendServers.BackendServer]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backendServer != nil {
                var tmp : [Any] = []
                for k in self.backendServer! {
                    tmp.append(k.toMap())
                }
                map["BackendServer"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BackendServer") {
                var tmp : [RemoveVServerGroupBackendServersResponseBody.BackendServers.BackendServer] = []
                for v in dict["BackendServer"] as! [Any] {
                    var model = RemoveVServerGroupBackendServersResponseBody.BackendServers.BackendServer()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.backendServer = tmp
            }
        }
    }
    public var backendServers: RemoveVServerGroupBackendServersResponseBody.BackendServers?

    public var requestId: String?

    public var VServerGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.backendServers?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backendServers != nil {
            map["BackendServers"] = self.backendServers?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.VServerGroupId != nil {
            map["VServerGroupId"] = self.VServerGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackendServers") {
            var model = RemoveVServerGroupBackendServersResponseBody.BackendServers()
            model.fromMap(dict["BackendServers"] as! [String: Any])
            self.backendServers = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("VServerGroupId") {
            self.VServerGroupId = dict["VServerGroupId"] as! String
        }
    }
}

public class RemoveVServerGroupBackendServersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveVServerGroupBackendServersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = RemoveVServerGroupBackendServersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetAccessControlListAttributeRequest : Tea.TeaModel {
    public var aclId: String?

    public var aclName: String?

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
        if self.aclId != nil {
            map["AclId"] = self.aclId!
        }
        if self.aclName != nil {
            map["AclName"] = self.aclName!
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
        if dict.keys.contains("AclId") {
            self.aclId = dict["AclId"] as! String
        }
        if dict.keys.contains("AclName") {
            self.aclName = dict["AclName"] as! String
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

public class SetAccessControlListAttributeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class SetAccessControlListAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetAccessControlListAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetAccessControlListAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetAccessLogsDownloadAttributeRequest : Tea.TeaModel {
    public var loadBalancerId: String?

    public var logsDownloadAttributes: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.logsDownloadAttributes != nil {
            map["LogsDownloadAttributes"] = self.logsDownloadAttributes!
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
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("LogsDownloadAttributes") {
            self.logsDownloadAttributes = dict["LogsDownloadAttributes"] as! String
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
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! String
        }
    }
}

public class SetAccessLogsDownloadAttributeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class SetAccessLogsDownloadAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetAccessLogsDownloadAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetAccessLogsDownloadAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetBackendServersRequest : Tea.TeaModel {
    public var backendServers: String?

    public var loadBalancerId: String?

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
        if self.backendServers != nil {
            map["BackendServers"] = self.backendServers!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
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
        if dict.keys.contains("BackendServers") {
            self.backendServers = dict["BackendServers"] as! String
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
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

public class SetBackendServersResponseBody : Tea.TeaModel {
    public class BackendServers : Tea.TeaModel {
        public class BackendServer : Tea.TeaModel {
            public var description_: String?

            public var serverId: String?

            public var type: String?

            public var weight: String?

            public override init() {
                super.init()
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
                if self.serverId != nil {
                    map["ServerId"] = self.serverId!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.weight != nil {
                    map["Weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("ServerId") {
                    self.serverId = dict["ServerId"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Weight") {
                    self.weight = dict["Weight"] as! String
                }
            }
        }
        public var backendServer: [SetBackendServersResponseBody.BackendServers.BackendServer]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backendServer != nil {
                var tmp : [Any] = []
                for k in self.backendServer! {
                    tmp.append(k.toMap())
                }
                map["BackendServer"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BackendServer") {
                var tmp : [SetBackendServersResponseBody.BackendServers.BackendServer] = []
                for v in dict["BackendServer"] as! [Any] {
                    var model = SetBackendServersResponseBody.BackendServers.BackendServer()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.backendServer = tmp
            }
        }
    }
    public var backendServers: SetBackendServersResponseBody.BackendServers?

    public var loadBalancerId: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.backendServers?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backendServers != nil {
            map["BackendServers"] = self.backendServers?.toMap()
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackendServers") {
            var model = SetBackendServersResponseBody.BackendServers()
            model.fromMap(dict["BackendServers"] as! [String: Any])
            self.backendServers = model
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SetBackendServersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetBackendServersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetBackendServersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetCACertificateNameRequest : Tea.TeaModel {
    public var CACertificateId: String?

    public var CACertificateName: String?

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
        if self.CACertificateId != nil {
            map["CACertificateId"] = self.CACertificateId!
        }
        if self.CACertificateName != nil {
            map["CACertificateName"] = self.CACertificateName!
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
        if dict.keys.contains("CACertificateId") {
            self.CACertificateId = dict["CACertificateId"] as! String
        }
        if dict.keys.contains("CACertificateName") {
            self.CACertificateName = dict["CACertificateName"] as! String
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

public class SetCACertificateNameResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class SetCACertificateNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetCACertificateNameResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetCACertificateNameResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetDomainExtensionAttributeRequest : Tea.TeaModel {
    public var domainExtensionId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var serverCertificateId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.domainExtensionId != nil {
            map["DomainExtensionId"] = self.domainExtensionId!
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
        if self.serverCertificateId != nil {
            map["ServerCertificateId"] = self.serverCertificateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DomainExtensionId") {
            self.domainExtensionId = dict["DomainExtensionId"] as! String
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
        if dict.keys.contains("ServerCertificateId") {
            self.serverCertificateId = dict["ServerCertificateId"] as! String
        }
    }
}

public class SetDomainExtensionAttributeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class SetDomainExtensionAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetDomainExtensionAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetDomainExtensionAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetListenerAccessControlStatusRequest : Tea.TeaModel {
    public var accessControlStatus: String?

    public var listenerPort: Int32?

    public var listenerProtocol: String?

    public var loadBalancerId: String?

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
        if self.accessControlStatus != nil {
            map["AccessControlStatus"] = self.accessControlStatus!
        }
        if self.listenerPort != nil {
            map["ListenerPort"] = self.listenerPort!
        }
        if self.listenerProtocol != nil {
            map["ListenerProtocol"] = self.listenerProtocol!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
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
        if dict.keys.contains("AccessControlStatus") {
            self.accessControlStatus = dict["AccessControlStatus"] as! String
        }
        if dict.keys.contains("ListenerPort") {
            self.listenerPort = dict["ListenerPort"] as! Int32
        }
        if dict.keys.contains("ListenerProtocol") {
            self.listenerProtocol = dict["ListenerProtocol"] as! String
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
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

public class SetListenerAccessControlStatusResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class SetListenerAccessControlStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetListenerAccessControlStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetListenerAccessControlStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetLoadBalancerDeleteProtectionRequest : Tea.TeaModel {
    public var deleteProtection: String?

    public var loadBalancerId: String?

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
        if self.deleteProtection != nil {
            map["DeleteProtection"] = self.deleteProtection!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
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
        if dict.keys.contains("DeleteProtection") {
            self.deleteProtection = dict["DeleteProtection"] as! String
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
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

public class SetLoadBalancerDeleteProtectionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class SetLoadBalancerDeleteProtectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetLoadBalancerDeleteProtectionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetLoadBalancerDeleteProtectionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetLoadBalancerHTTPListenerAttributeRequest : Tea.TeaModel {
    public var aclId: String?

    public var aclStatus: String?

    public var aclType: String?

    public var bandwidth: Int32?

    public var cookie: String?

    public var cookieTimeout: Int32?

    public var description_: String?

    public var gzip: String?

    public var healthCheck: String?

    public var healthCheckConnectPort: Int32?

    public var healthCheckDomain: String?

    public var healthCheckHttpCode: String?

    public var healthCheckInterval: Int32?

    public var healthCheckMethod: String?

    public var healthCheckTimeout: Int32?

    public var healthCheckURI: String?

    public var healthyThreshold: Int32?

    public var idleTimeout: Int32?

    public var listenerPort: Int32?

    public var loadBalancerId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var requestTimeout: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var scheduler: String?

    public var stickySession: String?

    public var stickySessionType: String?

    public var unhealthyThreshold: Int32?

    public var VServerGroup: String?

    public var VServerGroupId: String?

    public var XForwardedFor: String?

    public var XForwardedFor_ClientSrcPort: String?

    public var XForwardedFor_SLBID: String?

    public var XForwardedFor_SLBIP: String?

    public var XForwardedFor_SLBPORT: String?

    public var XForwardedFor_proto: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclId != nil {
            map["AclId"] = self.aclId!
        }
        if self.aclStatus != nil {
            map["AclStatus"] = self.aclStatus!
        }
        if self.aclType != nil {
            map["AclType"] = self.aclType!
        }
        if self.bandwidth != nil {
            map["Bandwidth"] = self.bandwidth!
        }
        if self.cookie != nil {
            map["Cookie"] = self.cookie!
        }
        if self.cookieTimeout != nil {
            map["CookieTimeout"] = self.cookieTimeout!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.gzip != nil {
            map["Gzip"] = self.gzip!
        }
        if self.healthCheck != nil {
            map["HealthCheck"] = self.healthCheck!
        }
        if self.healthCheckConnectPort != nil {
            map["HealthCheckConnectPort"] = self.healthCheckConnectPort!
        }
        if self.healthCheckDomain != nil {
            map["HealthCheckDomain"] = self.healthCheckDomain!
        }
        if self.healthCheckHttpCode != nil {
            map["HealthCheckHttpCode"] = self.healthCheckHttpCode!
        }
        if self.healthCheckInterval != nil {
            map["HealthCheckInterval"] = self.healthCheckInterval!
        }
        if self.healthCheckMethod != nil {
            map["HealthCheckMethod"] = self.healthCheckMethod!
        }
        if self.healthCheckTimeout != nil {
            map["HealthCheckTimeout"] = self.healthCheckTimeout!
        }
        if self.healthCheckURI != nil {
            map["HealthCheckURI"] = self.healthCheckURI!
        }
        if self.healthyThreshold != nil {
            map["HealthyThreshold"] = self.healthyThreshold!
        }
        if self.idleTimeout != nil {
            map["IdleTimeout"] = self.idleTimeout!
        }
        if self.listenerPort != nil {
            map["ListenerPort"] = self.listenerPort!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
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
        if self.requestTimeout != nil {
            map["RequestTimeout"] = self.requestTimeout!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.scheduler != nil {
            map["Scheduler"] = self.scheduler!
        }
        if self.stickySession != nil {
            map["StickySession"] = self.stickySession!
        }
        if self.stickySessionType != nil {
            map["StickySessionType"] = self.stickySessionType!
        }
        if self.unhealthyThreshold != nil {
            map["UnhealthyThreshold"] = self.unhealthyThreshold!
        }
        if self.VServerGroup != nil {
            map["VServerGroup"] = self.VServerGroup!
        }
        if self.VServerGroupId != nil {
            map["VServerGroupId"] = self.VServerGroupId!
        }
        if self.XForwardedFor != nil {
            map["XForwardedFor"] = self.XForwardedFor!
        }
        if self.XForwardedFor_ClientSrcPort != nil {
            map["XForwardedFor_ClientSrcPort"] = self.XForwardedFor_ClientSrcPort!
        }
        if self.XForwardedFor_SLBID != nil {
            map["XForwardedFor_SLBID"] = self.XForwardedFor_SLBID!
        }
        if self.XForwardedFor_SLBIP != nil {
            map["XForwardedFor_SLBIP"] = self.XForwardedFor_SLBIP!
        }
        if self.XForwardedFor_SLBPORT != nil {
            map["XForwardedFor_SLBPORT"] = self.XForwardedFor_SLBPORT!
        }
        if self.XForwardedFor_proto != nil {
            map["XForwardedFor_proto"] = self.XForwardedFor_proto!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclId") {
            self.aclId = dict["AclId"] as! String
        }
        if dict.keys.contains("AclStatus") {
            self.aclStatus = dict["AclStatus"] as! String
        }
        if dict.keys.contains("AclType") {
            self.aclType = dict["AclType"] as! String
        }
        if dict.keys.contains("Bandwidth") {
            self.bandwidth = dict["Bandwidth"] as! Int32
        }
        if dict.keys.contains("Cookie") {
            self.cookie = dict["Cookie"] as! String
        }
        if dict.keys.contains("CookieTimeout") {
            self.cookieTimeout = dict["CookieTimeout"] as! Int32
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Gzip") {
            self.gzip = dict["Gzip"] as! String
        }
        if dict.keys.contains("HealthCheck") {
            self.healthCheck = dict["HealthCheck"] as! String
        }
        if dict.keys.contains("HealthCheckConnectPort") {
            self.healthCheckConnectPort = dict["HealthCheckConnectPort"] as! Int32
        }
        if dict.keys.contains("HealthCheckDomain") {
            self.healthCheckDomain = dict["HealthCheckDomain"] as! String
        }
        if dict.keys.contains("HealthCheckHttpCode") {
            self.healthCheckHttpCode = dict["HealthCheckHttpCode"] as! String
        }
        if dict.keys.contains("HealthCheckInterval") {
            self.healthCheckInterval = dict["HealthCheckInterval"] as! Int32
        }
        if dict.keys.contains("HealthCheckMethod") {
            self.healthCheckMethod = dict["HealthCheckMethod"] as! String
        }
        if dict.keys.contains("HealthCheckTimeout") {
            self.healthCheckTimeout = dict["HealthCheckTimeout"] as! Int32
        }
        if dict.keys.contains("HealthCheckURI") {
            self.healthCheckURI = dict["HealthCheckURI"] as! String
        }
        if dict.keys.contains("HealthyThreshold") {
            self.healthyThreshold = dict["HealthyThreshold"] as! Int32
        }
        if dict.keys.contains("IdleTimeout") {
            self.idleTimeout = dict["IdleTimeout"] as! Int32
        }
        if dict.keys.contains("ListenerPort") {
            self.listenerPort = dict["ListenerPort"] as! Int32
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
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
        if dict.keys.contains("RequestTimeout") {
            self.requestTimeout = dict["RequestTimeout"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Scheduler") {
            self.scheduler = dict["Scheduler"] as! String
        }
        if dict.keys.contains("StickySession") {
            self.stickySession = dict["StickySession"] as! String
        }
        if dict.keys.contains("StickySessionType") {
            self.stickySessionType = dict["StickySessionType"] as! String
        }
        if dict.keys.contains("UnhealthyThreshold") {
            self.unhealthyThreshold = dict["UnhealthyThreshold"] as! Int32
        }
        if dict.keys.contains("VServerGroup") {
            self.VServerGroup = dict["VServerGroup"] as! String
        }
        if dict.keys.contains("VServerGroupId") {
            self.VServerGroupId = dict["VServerGroupId"] as! String
        }
        if dict.keys.contains("XForwardedFor") {
            self.XForwardedFor = dict["XForwardedFor"] as! String
        }
        if dict.keys.contains("XForwardedFor_ClientSrcPort") {
            self.XForwardedFor_ClientSrcPort = dict["XForwardedFor_ClientSrcPort"] as! String
        }
        if dict.keys.contains("XForwardedFor_SLBID") {
            self.XForwardedFor_SLBID = dict["XForwardedFor_SLBID"] as! String
        }
        if dict.keys.contains("XForwardedFor_SLBIP") {
            self.XForwardedFor_SLBIP = dict["XForwardedFor_SLBIP"] as! String
        }
        if dict.keys.contains("XForwardedFor_SLBPORT") {
            self.XForwardedFor_SLBPORT = dict["XForwardedFor_SLBPORT"] as! String
        }
        if dict.keys.contains("XForwardedFor_proto") {
            self.XForwardedFor_proto = dict["XForwardedFor_proto"] as! String
        }
    }
}

public class SetLoadBalancerHTTPListenerAttributeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class SetLoadBalancerHTTPListenerAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetLoadBalancerHTTPListenerAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetLoadBalancerHTTPListenerAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetLoadBalancerHTTPSListenerAttributeRequest : Tea.TeaModel {
    public var aclId: String?

    public var aclStatus: String?

    public var aclType: String?

    public var bandwidth: Int32?

    public var CACertificateId: String?

    public var cookie: String?

    public var cookieTimeout: Int32?

    public var description_: String?

    public var enableHttp2: String?

    public var gzip: String?

    public var healthCheck: String?

    public var healthCheckConnectPort: Int32?

    public var healthCheckDomain: String?

    public var healthCheckHttpCode: String?

    public var healthCheckInterval: Int32?

    public var healthCheckMethod: String?

    public var healthCheckTimeout: Int32?

    public var healthCheckURI: String?

    public var healthyThreshold: Int32?

    public var idleTimeout: Int32?

    public var listenerPort: Int32?

    public var loadBalancerId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var requestTimeout: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var scheduler: String?

    public var serverCertificateId: String?

    public var stickySession: String?

    public var stickySessionType: String?

    public var TLSCipherPolicy: String?

    public var unhealthyThreshold: Int32?

    public var VServerGroup: String?

    public var VServerGroupId: String?

    public var XForwardedFor: String?

    public var XForwardedFor_ClientSrcPort: String?

    public var XForwardedFor_SLBID: String?

    public var XForwardedFor_SLBIP: String?

    public var XForwardedFor_SLBPORT: String?

    public var XForwardedFor_proto: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclId != nil {
            map["AclId"] = self.aclId!
        }
        if self.aclStatus != nil {
            map["AclStatus"] = self.aclStatus!
        }
        if self.aclType != nil {
            map["AclType"] = self.aclType!
        }
        if self.bandwidth != nil {
            map["Bandwidth"] = self.bandwidth!
        }
        if self.CACertificateId != nil {
            map["CACertificateId"] = self.CACertificateId!
        }
        if self.cookie != nil {
            map["Cookie"] = self.cookie!
        }
        if self.cookieTimeout != nil {
            map["CookieTimeout"] = self.cookieTimeout!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.enableHttp2 != nil {
            map["EnableHttp2"] = self.enableHttp2!
        }
        if self.gzip != nil {
            map["Gzip"] = self.gzip!
        }
        if self.healthCheck != nil {
            map["HealthCheck"] = self.healthCheck!
        }
        if self.healthCheckConnectPort != nil {
            map["HealthCheckConnectPort"] = self.healthCheckConnectPort!
        }
        if self.healthCheckDomain != nil {
            map["HealthCheckDomain"] = self.healthCheckDomain!
        }
        if self.healthCheckHttpCode != nil {
            map["HealthCheckHttpCode"] = self.healthCheckHttpCode!
        }
        if self.healthCheckInterval != nil {
            map["HealthCheckInterval"] = self.healthCheckInterval!
        }
        if self.healthCheckMethod != nil {
            map["HealthCheckMethod"] = self.healthCheckMethod!
        }
        if self.healthCheckTimeout != nil {
            map["HealthCheckTimeout"] = self.healthCheckTimeout!
        }
        if self.healthCheckURI != nil {
            map["HealthCheckURI"] = self.healthCheckURI!
        }
        if self.healthyThreshold != nil {
            map["HealthyThreshold"] = self.healthyThreshold!
        }
        if self.idleTimeout != nil {
            map["IdleTimeout"] = self.idleTimeout!
        }
        if self.listenerPort != nil {
            map["ListenerPort"] = self.listenerPort!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
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
        if self.requestTimeout != nil {
            map["RequestTimeout"] = self.requestTimeout!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.scheduler != nil {
            map["Scheduler"] = self.scheduler!
        }
        if self.serverCertificateId != nil {
            map["ServerCertificateId"] = self.serverCertificateId!
        }
        if self.stickySession != nil {
            map["StickySession"] = self.stickySession!
        }
        if self.stickySessionType != nil {
            map["StickySessionType"] = self.stickySessionType!
        }
        if self.TLSCipherPolicy != nil {
            map["TLSCipherPolicy"] = self.TLSCipherPolicy!
        }
        if self.unhealthyThreshold != nil {
            map["UnhealthyThreshold"] = self.unhealthyThreshold!
        }
        if self.VServerGroup != nil {
            map["VServerGroup"] = self.VServerGroup!
        }
        if self.VServerGroupId != nil {
            map["VServerGroupId"] = self.VServerGroupId!
        }
        if self.XForwardedFor != nil {
            map["XForwardedFor"] = self.XForwardedFor!
        }
        if self.XForwardedFor_ClientSrcPort != nil {
            map["XForwardedFor_ClientSrcPort"] = self.XForwardedFor_ClientSrcPort!
        }
        if self.XForwardedFor_SLBID != nil {
            map["XForwardedFor_SLBID"] = self.XForwardedFor_SLBID!
        }
        if self.XForwardedFor_SLBIP != nil {
            map["XForwardedFor_SLBIP"] = self.XForwardedFor_SLBIP!
        }
        if self.XForwardedFor_SLBPORT != nil {
            map["XForwardedFor_SLBPORT"] = self.XForwardedFor_SLBPORT!
        }
        if self.XForwardedFor_proto != nil {
            map["XForwardedFor_proto"] = self.XForwardedFor_proto!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclId") {
            self.aclId = dict["AclId"] as! String
        }
        if dict.keys.contains("AclStatus") {
            self.aclStatus = dict["AclStatus"] as! String
        }
        if dict.keys.contains("AclType") {
            self.aclType = dict["AclType"] as! String
        }
        if dict.keys.contains("Bandwidth") {
            self.bandwidth = dict["Bandwidth"] as! Int32
        }
        if dict.keys.contains("CACertificateId") {
            self.CACertificateId = dict["CACertificateId"] as! String
        }
        if dict.keys.contains("Cookie") {
            self.cookie = dict["Cookie"] as! String
        }
        if dict.keys.contains("CookieTimeout") {
            self.cookieTimeout = dict["CookieTimeout"] as! Int32
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EnableHttp2") {
            self.enableHttp2 = dict["EnableHttp2"] as! String
        }
        if dict.keys.contains("Gzip") {
            self.gzip = dict["Gzip"] as! String
        }
        if dict.keys.contains("HealthCheck") {
            self.healthCheck = dict["HealthCheck"] as! String
        }
        if dict.keys.contains("HealthCheckConnectPort") {
            self.healthCheckConnectPort = dict["HealthCheckConnectPort"] as! Int32
        }
        if dict.keys.contains("HealthCheckDomain") {
            self.healthCheckDomain = dict["HealthCheckDomain"] as! String
        }
        if dict.keys.contains("HealthCheckHttpCode") {
            self.healthCheckHttpCode = dict["HealthCheckHttpCode"] as! String
        }
        if dict.keys.contains("HealthCheckInterval") {
            self.healthCheckInterval = dict["HealthCheckInterval"] as! Int32
        }
        if dict.keys.contains("HealthCheckMethod") {
            self.healthCheckMethod = dict["HealthCheckMethod"] as! String
        }
        if dict.keys.contains("HealthCheckTimeout") {
            self.healthCheckTimeout = dict["HealthCheckTimeout"] as! Int32
        }
        if dict.keys.contains("HealthCheckURI") {
            self.healthCheckURI = dict["HealthCheckURI"] as! String
        }
        if dict.keys.contains("HealthyThreshold") {
            self.healthyThreshold = dict["HealthyThreshold"] as! Int32
        }
        if dict.keys.contains("IdleTimeout") {
            self.idleTimeout = dict["IdleTimeout"] as! Int32
        }
        if dict.keys.contains("ListenerPort") {
            self.listenerPort = dict["ListenerPort"] as! Int32
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
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
        if dict.keys.contains("RequestTimeout") {
            self.requestTimeout = dict["RequestTimeout"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Scheduler") {
            self.scheduler = dict["Scheduler"] as! String
        }
        if dict.keys.contains("ServerCertificateId") {
            self.serverCertificateId = dict["ServerCertificateId"] as! String
        }
        if dict.keys.contains("StickySession") {
            self.stickySession = dict["StickySession"] as! String
        }
        if dict.keys.contains("StickySessionType") {
            self.stickySessionType = dict["StickySessionType"] as! String
        }
        if dict.keys.contains("TLSCipherPolicy") {
            self.TLSCipherPolicy = dict["TLSCipherPolicy"] as! String
        }
        if dict.keys.contains("UnhealthyThreshold") {
            self.unhealthyThreshold = dict["UnhealthyThreshold"] as! Int32
        }
        if dict.keys.contains("VServerGroup") {
            self.VServerGroup = dict["VServerGroup"] as! String
        }
        if dict.keys.contains("VServerGroupId") {
            self.VServerGroupId = dict["VServerGroupId"] as! String
        }
        if dict.keys.contains("XForwardedFor") {
            self.XForwardedFor = dict["XForwardedFor"] as! String
        }
        if dict.keys.contains("XForwardedFor_ClientSrcPort") {
            self.XForwardedFor_ClientSrcPort = dict["XForwardedFor_ClientSrcPort"] as! String
        }
        if dict.keys.contains("XForwardedFor_SLBID") {
            self.XForwardedFor_SLBID = dict["XForwardedFor_SLBID"] as! String
        }
        if dict.keys.contains("XForwardedFor_SLBIP") {
            self.XForwardedFor_SLBIP = dict["XForwardedFor_SLBIP"] as! String
        }
        if dict.keys.contains("XForwardedFor_SLBPORT") {
            self.XForwardedFor_SLBPORT = dict["XForwardedFor_SLBPORT"] as! String
        }
        if dict.keys.contains("XForwardedFor_proto") {
            self.XForwardedFor_proto = dict["XForwardedFor_proto"] as! String
        }
    }
}

public class SetLoadBalancerHTTPSListenerAttributeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class SetLoadBalancerHTTPSListenerAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetLoadBalancerHTTPSListenerAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetLoadBalancerHTTPSListenerAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetLoadBalancerModificationProtectionRequest : Tea.TeaModel {
    public var loadBalancerId: String?

    public var modificationProtectionReason: String?

    public var modificationProtectionStatus: String?

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
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.modificationProtectionReason != nil {
            map["ModificationProtectionReason"] = self.modificationProtectionReason!
        }
        if self.modificationProtectionStatus != nil {
            map["ModificationProtectionStatus"] = self.modificationProtectionStatus!
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
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("ModificationProtectionReason") {
            self.modificationProtectionReason = dict["ModificationProtectionReason"] as! String
        }
        if dict.keys.contains("ModificationProtectionStatus") {
            self.modificationProtectionStatus = dict["ModificationProtectionStatus"] as! String
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

public class SetLoadBalancerModificationProtectionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class SetLoadBalancerModificationProtectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetLoadBalancerModificationProtectionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetLoadBalancerModificationProtectionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetLoadBalancerNameRequest : Tea.TeaModel {
    public var loadBalancerId: String?

    public var loadBalancerName: String?

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
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.loadBalancerName != nil {
            map["LoadBalancerName"] = self.loadBalancerName!
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
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("LoadBalancerName") {
            self.loadBalancerName = dict["LoadBalancerName"] as! String
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

public class SetLoadBalancerNameResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class SetLoadBalancerNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetLoadBalancerNameResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetLoadBalancerNameResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetLoadBalancerStatusRequest : Tea.TeaModel {
    public var loadBalancerId: String?

    public var loadBalancerStatus: String?

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
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.loadBalancerStatus != nil {
            map["LoadBalancerStatus"] = self.loadBalancerStatus!
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
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("LoadBalancerStatus") {
            self.loadBalancerStatus = dict["LoadBalancerStatus"] as! String
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

public class SetLoadBalancerStatusResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class SetLoadBalancerStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetLoadBalancerStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetLoadBalancerStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetLoadBalancerTCPListenerAttributeRequest : Tea.TeaModel {
    public var aclId: String?

    public var aclStatus: String?

    public var aclType: String?

    public var bandwidth: Int32?

    public var connectionDrain: String?

    public var connectionDrainTimeout: Int32?

    public var description_: String?

    public var establishedTimeout: Int32?

    public var healthCheckConnectPort: Int32?

    public var healthCheckConnectTimeout: Int32?

    public var healthCheckDomain: String?

    public var healthCheckHttpCode: String?

    public var healthCheckInterval: Int32?

    public var healthCheckSwitch: String?

    public var healthCheckType: String?

    public var healthCheckURI: String?

    public var healthyThreshold: Int32?

    public var listenerPort: Int32?

    public var loadBalancerId: String?

    public var masterSlaveServerGroup: String?

    public var masterSlaveServerGroupId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var persistenceTimeout: Int32?

    public var proxyProtocolV2Enabled: Bool?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var scheduler: String?

    public var synProxy: String?

    public var unhealthyThreshold: Int32?

    public var VServerGroup: String?

    public var VServerGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclId != nil {
            map["AclId"] = self.aclId!
        }
        if self.aclStatus != nil {
            map["AclStatus"] = self.aclStatus!
        }
        if self.aclType != nil {
            map["AclType"] = self.aclType!
        }
        if self.bandwidth != nil {
            map["Bandwidth"] = self.bandwidth!
        }
        if self.connectionDrain != nil {
            map["ConnectionDrain"] = self.connectionDrain!
        }
        if self.connectionDrainTimeout != nil {
            map["ConnectionDrainTimeout"] = self.connectionDrainTimeout!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.establishedTimeout != nil {
            map["EstablishedTimeout"] = self.establishedTimeout!
        }
        if self.healthCheckConnectPort != nil {
            map["HealthCheckConnectPort"] = self.healthCheckConnectPort!
        }
        if self.healthCheckConnectTimeout != nil {
            map["HealthCheckConnectTimeout"] = self.healthCheckConnectTimeout!
        }
        if self.healthCheckDomain != nil {
            map["HealthCheckDomain"] = self.healthCheckDomain!
        }
        if self.healthCheckHttpCode != nil {
            map["HealthCheckHttpCode"] = self.healthCheckHttpCode!
        }
        if self.healthCheckInterval != nil {
            map["HealthCheckInterval"] = self.healthCheckInterval!
        }
        if self.healthCheckSwitch != nil {
            map["HealthCheckSwitch"] = self.healthCheckSwitch!
        }
        if self.healthCheckType != nil {
            map["HealthCheckType"] = self.healthCheckType!
        }
        if self.healthCheckURI != nil {
            map["HealthCheckURI"] = self.healthCheckURI!
        }
        if self.healthyThreshold != nil {
            map["HealthyThreshold"] = self.healthyThreshold!
        }
        if self.listenerPort != nil {
            map["ListenerPort"] = self.listenerPort!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.masterSlaveServerGroup != nil {
            map["MasterSlaveServerGroup"] = self.masterSlaveServerGroup!
        }
        if self.masterSlaveServerGroupId != nil {
            map["MasterSlaveServerGroupId"] = self.masterSlaveServerGroupId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.persistenceTimeout != nil {
            map["PersistenceTimeout"] = self.persistenceTimeout!
        }
        if self.proxyProtocolV2Enabled != nil {
            map["ProxyProtocolV2Enabled"] = self.proxyProtocolV2Enabled!
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
        if self.scheduler != nil {
            map["Scheduler"] = self.scheduler!
        }
        if self.synProxy != nil {
            map["SynProxy"] = self.synProxy!
        }
        if self.unhealthyThreshold != nil {
            map["UnhealthyThreshold"] = self.unhealthyThreshold!
        }
        if self.VServerGroup != nil {
            map["VServerGroup"] = self.VServerGroup!
        }
        if self.VServerGroupId != nil {
            map["VServerGroupId"] = self.VServerGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclId") {
            self.aclId = dict["AclId"] as! String
        }
        if dict.keys.contains("AclStatus") {
            self.aclStatus = dict["AclStatus"] as! String
        }
        if dict.keys.contains("AclType") {
            self.aclType = dict["AclType"] as! String
        }
        if dict.keys.contains("Bandwidth") {
            self.bandwidth = dict["Bandwidth"] as! Int32
        }
        if dict.keys.contains("ConnectionDrain") {
            self.connectionDrain = dict["ConnectionDrain"] as! String
        }
        if dict.keys.contains("ConnectionDrainTimeout") {
            self.connectionDrainTimeout = dict["ConnectionDrainTimeout"] as! Int32
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EstablishedTimeout") {
            self.establishedTimeout = dict["EstablishedTimeout"] as! Int32
        }
        if dict.keys.contains("HealthCheckConnectPort") {
            self.healthCheckConnectPort = dict["HealthCheckConnectPort"] as! Int32
        }
        if dict.keys.contains("HealthCheckConnectTimeout") {
            self.healthCheckConnectTimeout = dict["HealthCheckConnectTimeout"] as! Int32
        }
        if dict.keys.contains("HealthCheckDomain") {
            self.healthCheckDomain = dict["HealthCheckDomain"] as! String
        }
        if dict.keys.contains("HealthCheckHttpCode") {
            self.healthCheckHttpCode = dict["HealthCheckHttpCode"] as! String
        }
        if dict.keys.contains("HealthCheckInterval") {
            self.healthCheckInterval = dict["HealthCheckInterval"] as! Int32
        }
        if dict.keys.contains("HealthCheckSwitch") {
            self.healthCheckSwitch = dict["HealthCheckSwitch"] as! String
        }
        if dict.keys.contains("HealthCheckType") {
            self.healthCheckType = dict["HealthCheckType"] as! String
        }
        if dict.keys.contains("HealthCheckURI") {
            self.healthCheckURI = dict["HealthCheckURI"] as! String
        }
        if dict.keys.contains("HealthyThreshold") {
            self.healthyThreshold = dict["HealthyThreshold"] as! Int32
        }
        if dict.keys.contains("ListenerPort") {
            self.listenerPort = dict["ListenerPort"] as! Int32
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("MasterSlaveServerGroup") {
            self.masterSlaveServerGroup = dict["MasterSlaveServerGroup"] as! String
        }
        if dict.keys.contains("MasterSlaveServerGroupId") {
            self.masterSlaveServerGroupId = dict["MasterSlaveServerGroupId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PersistenceTimeout") {
            self.persistenceTimeout = dict["PersistenceTimeout"] as! Int32
        }
        if dict.keys.contains("ProxyProtocolV2Enabled") {
            self.proxyProtocolV2Enabled = dict["ProxyProtocolV2Enabled"] as! Bool
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
        if dict.keys.contains("Scheduler") {
            self.scheduler = dict["Scheduler"] as! String
        }
        if dict.keys.contains("SynProxy") {
            self.synProxy = dict["SynProxy"] as! String
        }
        if dict.keys.contains("UnhealthyThreshold") {
            self.unhealthyThreshold = dict["UnhealthyThreshold"] as! Int32
        }
        if dict.keys.contains("VServerGroup") {
            self.VServerGroup = dict["VServerGroup"] as! String
        }
        if dict.keys.contains("VServerGroupId") {
            self.VServerGroupId = dict["VServerGroupId"] as! String
        }
    }
}

public class SetLoadBalancerTCPListenerAttributeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class SetLoadBalancerTCPListenerAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetLoadBalancerTCPListenerAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetLoadBalancerTCPListenerAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetLoadBalancerUDPListenerAttributeRequest : Tea.TeaModel {
    public var aclId: String?

    public var aclStatus: String?

    public var aclType: String?

    public var bandwidth: Int32?

    public var description_: String?

    public var healthCheckConnectPort: Int32?

    public var healthCheckConnectTimeout: Int32?

    public var healthCheckInterval: Int32?

    public var healthCheckSwitch: String?

    public var healthyThreshold: Int32?

    public var listenerPort: Int32?

    public var loadBalancerId: String?

    public var masterSlaveServerGroup: String?

    public var masterSlaveServerGroupId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var proxyProtocolV2Enabled: Bool?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var scheduler: String?

    public var unhealthyThreshold: Int32?

    public var VServerGroup: String?

    public var VServerGroupId: String?

    public var healthCheckExp: String?

    public var healthCheckReq: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclId != nil {
            map["AclId"] = self.aclId!
        }
        if self.aclStatus != nil {
            map["AclStatus"] = self.aclStatus!
        }
        if self.aclType != nil {
            map["AclType"] = self.aclType!
        }
        if self.bandwidth != nil {
            map["Bandwidth"] = self.bandwidth!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.healthCheckConnectPort != nil {
            map["HealthCheckConnectPort"] = self.healthCheckConnectPort!
        }
        if self.healthCheckConnectTimeout != nil {
            map["HealthCheckConnectTimeout"] = self.healthCheckConnectTimeout!
        }
        if self.healthCheckInterval != nil {
            map["HealthCheckInterval"] = self.healthCheckInterval!
        }
        if self.healthCheckSwitch != nil {
            map["HealthCheckSwitch"] = self.healthCheckSwitch!
        }
        if self.healthyThreshold != nil {
            map["HealthyThreshold"] = self.healthyThreshold!
        }
        if self.listenerPort != nil {
            map["ListenerPort"] = self.listenerPort!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
        }
        if self.masterSlaveServerGroup != nil {
            map["MasterSlaveServerGroup"] = self.masterSlaveServerGroup!
        }
        if self.masterSlaveServerGroupId != nil {
            map["MasterSlaveServerGroupId"] = self.masterSlaveServerGroupId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.proxyProtocolV2Enabled != nil {
            map["ProxyProtocolV2Enabled"] = self.proxyProtocolV2Enabled!
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
        if self.scheduler != nil {
            map["Scheduler"] = self.scheduler!
        }
        if self.unhealthyThreshold != nil {
            map["UnhealthyThreshold"] = self.unhealthyThreshold!
        }
        if self.VServerGroup != nil {
            map["VServerGroup"] = self.VServerGroup!
        }
        if self.VServerGroupId != nil {
            map["VServerGroupId"] = self.VServerGroupId!
        }
        if self.healthCheckExp != nil {
            map["healthCheckExp"] = self.healthCheckExp!
        }
        if self.healthCheckReq != nil {
            map["healthCheckReq"] = self.healthCheckReq!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclId") {
            self.aclId = dict["AclId"] as! String
        }
        if dict.keys.contains("AclStatus") {
            self.aclStatus = dict["AclStatus"] as! String
        }
        if dict.keys.contains("AclType") {
            self.aclType = dict["AclType"] as! String
        }
        if dict.keys.contains("Bandwidth") {
            self.bandwidth = dict["Bandwidth"] as! Int32
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("HealthCheckConnectPort") {
            self.healthCheckConnectPort = dict["HealthCheckConnectPort"] as! Int32
        }
        if dict.keys.contains("HealthCheckConnectTimeout") {
            self.healthCheckConnectTimeout = dict["HealthCheckConnectTimeout"] as! Int32
        }
        if dict.keys.contains("HealthCheckInterval") {
            self.healthCheckInterval = dict["HealthCheckInterval"] as! Int32
        }
        if dict.keys.contains("HealthCheckSwitch") {
            self.healthCheckSwitch = dict["HealthCheckSwitch"] as! String
        }
        if dict.keys.contains("HealthyThreshold") {
            self.healthyThreshold = dict["HealthyThreshold"] as! Int32
        }
        if dict.keys.contains("ListenerPort") {
            self.listenerPort = dict["ListenerPort"] as! Int32
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
        }
        if dict.keys.contains("MasterSlaveServerGroup") {
            self.masterSlaveServerGroup = dict["MasterSlaveServerGroup"] as! String
        }
        if dict.keys.contains("MasterSlaveServerGroupId") {
            self.masterSlaveServerGroupId = dict["MasterSlaveServerGroupId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ProxyProtocolV2Enabled") {
            self.proxyProtocolV2Enabled = dict["ProxyProtocolV2Enabled"] as! Bool
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
        if dict.keys.contains("Scheduler") {
            self.scheduler = dict["Scheduler"] as! String
        }
        if dict.keys.contains("UnhealthyThreshold") {
            self.unhealthyThreshold = dict["UnhealthyThreshold"] as! Int32
        }
        if dict.keys.contains("VServerGroup") {
            self.VServerGroup = dict["VServerGroup"] as! String
        }
        if dict.keys.contains("VServerGroupId") {
            self.VServerGroupId = dict["VServerGroupId"] as! String
        }
        if dict.keys.contains("healthCheckExp") {
            self.healthCheckExp = dict["healthCheckExp"] as! String
        }
        if dict.keys.contains("healthCheckReq") {
            self.healthCheckReq = dict["healthCheckReq"] as! String
        }
    }
}

public class SetLoadBalancerUDPListenerAttributeResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class SetLoadBalancerUDPListenerAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetLoadBalancerUDPListenerAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetLoadBalancerUDPListenerAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetRuleRequest : Tea.TeaModel {
    public var cookie: String?

    public var cookieTimeout: Int32?

    public var healthCheck: String?

    public var healthCheckConnectPort: Int32?

    public var healthCheckDomain: String?

    public var healthCheckHttpCode: String?

    public var healthCheckInterval: Int32?

    public var healthCheckTimeout: Int32?

    public var healthCheckURI: String?

    public var healthyThreshold: Int32?

    public var listenerSync: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var ruleId: String?

    public var ruleName: String?

    public var scheduler: String?

    public var stickySession: String?

    public var stickySessionType: String?

    public var unhealthyThreshold: Int32?

    public var VServerGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cookie != nil {
            map["Cookie"] = self.cookie!
        }
        if self.cookieTimeout != nil {
            map["CookieTimeout"] = self.cookieTimeout!
        }
        if self.healthCheck != nil {
            map["HealthCheck"] = self.healthCheck!
        }
        if self.healthCheckConnectPort != nil {
            map["HealthCheckConnectPort"] = self.healthCheckConnectPort!
        }
        if self.healthCheckDomain != nil {
            map["HealthCheckDomain"] = self.healthCheckDomain!
        }
        if self.healthCheckHttpCode != nil {
            map["HealthCheckHttpCode"] = self.healthCheckHttpCode!
        }
        if self.healthCheckInterval != nil {
            map["HealthCheckInterval"] = self.healthCheckInterval!
        }
        if self.healthCheckTimeout != nil {
            map["HealthCheckTimeout"] = self.healthCheckTimeout!
        }
        if self.healthCheckURI != nil {
            map["HealthCheckURI"] = self.healthCheckURI!
        }
        if self.healthyThreshold != nil {
            map["HealthyThreshold"] = self.healthyThreshold!
        }
        if self.listenerSync != nil {
            map["ListenerSync"] = self.listenerSync!
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
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        if self.ruleName != nil {
            map["RuleName"] = self.ruleName!
        }
        if self.scheduler != nil {
            map["Scheduler"] = self.scheduler!
        }
        if self.stickySession != nil {
            map["StickySession"] = self.stickySession!
        }
        if self.stickySessionType != nil {
            map["StickySessionType"] = self.stickySessionType!
        }
        if self.unhealthyThreshold != nil {
            map["UnhealthyThreshold"] = self.unhealthyThreshold!
        }
        if self.VServerGroupId != nil {
            map["VServerGroupId"] = self.VServerGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Cookie") {
            self.cookie = dict["Cookie"] as! String
        }
        if dict.keys.contains("CookieTimeout") {
            self.cookieTimeout = dict["CookieTimeout"] as! Int32
        }
        if dict.keys.contains("HealthCheck") {
            self.healthCheck = dict["HealthCheck"] as! String
        }
        if dict.keys.contains("HealthCheckConnectPort") {
            self.healthCheckConnectPort = dict["HealthCheckConnectPort"] as! Int32
        }
        if dict.keys.contains("HealthCheckDomain") {
            self.healthCheckDomain = dict["HealthCheckDomain"] as! String
        }
        if dict.keys.contains("HealthCheckHttpCode") {
            self.healthCheckHttpCode = dict["HealthCheckHttpCode"] as! String
        }
        if dict.keys.contains("HealthCheckInterval") {
            self.healthCheckInterval = dict["HealthCheckInterval"] as! Int32
        }
        if dict.keys.contains("HealthCheckTimeout") {
            self.healthCheckTimeout = dict["HealthCheckTimeout"] as! Int32
        }
        if dict.keys.contains("HealthCheckURI") {
            self.healthCheckURI = dict["HealthCheckURI"] as! String
        }
        if dict.keys.contains("HealthyThreshold") {
            self.healthyThreshold = dict["HealthyThreshold"] as! Int32
        }
        if dict.keys.contains("ListenerSync") {
            self.listenerSync = dict["ListenerSync"] as! String
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
        if dict.keys.contains("RuleId") {
            self.ruleId = dict["RuleId"] as! String
        }
        if dict.keys.contains("RuleName") {
            self.ruleName = dict["RuleName"] as! String
        }
        if dict.keys.contains("Scheduler") {
            self.scheduler = dict["Scheduler"] as! String
        }
        if dict.keys.contains("StickySession") {
            self.stickySession = dict["StickySession"] as! String
        }
        if dict.keys.contains("StickySessionType") {
            self.stickySessionType = dict["StickySessionType"] as! String
        }
        if dict.keys.contains("UnhealthyThreshold") {
            self.unhealthyThreshold = dict["UnhealthyThreshold"] as! Int32
        }
        if dict.keys.contains("VServerGroupId") {
            self.VServerGroupId = dict["VServerGroupId"] as! String
        }
    }
}

public class SetRuleResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class SetRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetServerCertificateNameRequest : Tea.TeaModel {
    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var serverCertificateId: String?

    public var serverCertificateName: String?

    public override init() {
        super.init()
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
        if self.serverCertificateId != nil {
            map["ServerCertificateId"] = self.serverCertificateId!
        }
        if self.serverCertificateName != nil {
            map["ServerCertificateName"] = self.serverCertificateName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
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
        if dict.keys.contains("ServerCertificateId") {
            self.serverCertificateId = dict["ServerCertificateId"] as! String
        }
        if dict.keys.contains("ServerCertificateName") {
            self.serverCertificateName = dict["ServerCertificateName"] as! String
        }
    }
}

public class SetServerCertificateNameResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class SetServerCertificateNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetServerCertificateNameResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetServerCertificateNameResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetTLSCipherPolicyAttributeRequest : Tea.TeaModel {
    public var ciphers: [String]?

    public var name: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var TLSCipherPolicyId: String?

    public var TLSVersions: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ciphers != nil {
            map["Ciphers"] = self.ciphers!
        }
        if self.name != nil {
            map["Name"] = self.name!
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
        if self.TLSCipherPolicyId != nil {
            map["TLSCipherPolicyId"] = self.TLSCipherPolicyId!
        }
        if self.TLSVersions != nil {
            map["TLSVersions"] = self.TLSVersions!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ciphers") {
            self.ciphers = dict["Ciphers"] as! [String]
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
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
        if dict.keys.contains("TLSCipherPolicyId") {
            self.TLSCipherPolicyId = dict["TLSCipherPolicyId"] as! String
        }
        if dict.keys.contains("TLSVersions") {
            self.TLSVersions = dict["TLSVersions"] as! [String]
        }
    }
}

public class SetTLSCipherPolicyAttributeResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class SetTLSCipherPolicyAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetTLSCipherPolicyAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetTLSCipherPolicyAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetVServerGroupAttributeRequest : Tea.TeaModel {
    public var backendServers: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var VServerGroupId: String?

    public var VServerGroupName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backendServers != nil {
            map["BackendServers"] = self.backendServers!
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
        if self.VServerGroupId != nil {
            map["VServerGroupId"] = self.VServerGroupId!
        }
        if self.VServerGroupName != nil {
            map["VServerGroupName"] = self.VServerGroupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackendServers") {
            self.backendServers = dict["BackendServers"] as! String
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
        if dict.keys.contains("VServerGroupId") {
            self.VServerGroupId = dict["VServerGroupId"] as! String
        }
        if dict.keys.contains("VServerGroupName") {
            self.VServerGroupName = dict["VServerGroupName"] as! String
        }
    }
}

public class SetVServerGroupAttributeResponseBody : Tea.TeaModel {
    public class BackendServers : Tea.TeaModel {
        public class BackendServer : Tea.TeaModel {
            public var description_: String?

            public var port: Int32?

            public var serverId: String?

            public var type: String?

            public var weight: Int32?

            public override init() {
                super.init()
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
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.serverId != nil {
                    map["ServerId"] = self.serverId!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.weight != nil {
                    map["Weight"] = self.weight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Port") {
                    self.port = dict["Port"] as! Int32
                }
                if dict.keys.contains("ServerId") {
                    self.serverId = dict["ServerId"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Weight") {
                    self.weight = dict["Weight"] as! Int32
                }
            }
        }
        public var backendServer: [SetVServerGroupAttributeResponseBody.BackendServers.BackendServer]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backendServer != nil {
                var tmp : [Any] = []
                for k in self.backendServer! {
                    tmp.append(k.toMap())
                }
                map["BackendServer"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BackendServer") {
                var tmp : [SetVServerGroupAttributeResponseBody.BackendServers.BackendServer] = []
                for v in dict["BackendServer"] as! [Any] {
                    var model = SetVServerGroupAttributeResponseBody.BackendServers.BackendServer()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.backendServer = tmp
            }
        }
    }
    public var backendServers: SetVServerGroupAttributeResponseBody.BackendServers?

    public var requestId: String?

    public var VServerGroupId: String?

    public var VServerGroupName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.backendServers?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backendServers != nil {
            map["BackendServers"] = self.backendServers?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.VServerGroupId != nil {
            map["VServerGroupId"] = self.VServerGroupId!
        }
        if self.VServerGroupName != nil {
            map["VServerGroupName"] = self.VServerGroupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackendServers") {
            var model = SetVServerGroupAttributeResponseBody.BackendServers()
            model.fromMap(dict["BackendServers"] as! [String: Any])
            self.backendServers = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("VServerGroupId") {
            self.VServerGroupId = dict["VServerGroupId"] as! String
        }
        if dict.keys.contains("VServerGroupName") {
            self.VServerGroupName = dict["VServerGroupName"] as! String
        }
    }
}

public class SetVServerGroupAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetVServerGroupAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = SetVServerGroupAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartLoadBalancerListenerRequest : Tea.TeaModel {
    public var listenerPort: Int32?

    public var listenerProtocol: String?

    public var loadBalancerId: String?

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
        if self.listenerPort != nil {
            map["ListenerPort"] = self.listenerPort!
        }
        if self.listenerProtocol != nil {
            map["ListenerProtocol"] = self.listenerProtocol!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
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
        if dict.keys.contains("ListenerPort") {
            self.listenerPort = dict["ListenerPort"] as! Int32
        }
        if dict.keys.contains("ListenerProtocol") {
            self.listenerProtocol = dict["ListenerProtocol"] as! String
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
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

public class StartLoadBalancerListenerResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class StartLoadBalancerListenerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartLoadBalancerListenerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = StartLoadBalancerListenerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopLoadBalancerListenerRequest : Tea.TeaModel {
    public var listenerPort: Int32?

    public var listenerProtocol: String?

    public var loadBalancerId: String?

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
        if self.listenerPort != nil {
            map["ListenerPort"] = self.listenerPort!
        }
        if self.listenerProtocol != nil {
            map["ListenerProtocol"] = self.listenerProtocol!
        }
        if self.loadBalancerId != nil {
            map["LoadBalancerId"] = self.loadBalancerId!
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
        if dict.keys.contains("ListenerPort") {
            self.listenerPort = dict["ListenerPort"] as! Int32
        }
        if dict.keys.contains("ListenerProtocol") {
            self.listenerProtocol = dict["ListenerProtocol"] as! String
        }
        if dict.keys.contains("LoadBalancerId") {
            self.loadBalancerId = dict["LoadBalancerId"] as! String
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

public class StopLoadBalancerListenerResponseBody : Tea.TeaModel {
    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
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

public class StopLoadBalancerListenerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopLoadBalancerListenerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = StopLoadBalancerListenerResponseBody()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("All") {
            self.all = dict["All"] as! Bool
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
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
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

public class UploadCACertificateRequest : Tea.TeaModel {
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
    public var CACertificate: String?

    public var CACertificateName: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tag: [UploadCACertificateRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.CACertificate != nil {
            map["CACertificate"] = self.CACertificate!
        }
        if self.CACertificateName != nil {
            map["CACertificateName"] = self.CACertificateName!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CACertificate") {
            self.CACertificate = dict["CACertificate"] as! String
        }
        if dict.keys.contains("CACertificateName") {
            self.CACertificateName = dict["CACertificateName"] as! String
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
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Tag") {
            var tmp : [UploadCACertificateRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = UploadCACertificateRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class UploadCACertificateResponseBody : Tea.TeaModel {
    public var CACertificateId: String?

    public var CACertificateName: String?

    public var commonName: String?

    public var createTime: String?

    public var createTimeStamp: Int64?

    public var expireTime: String?

    public var expireTimeStamp: Int64?

    public var fingerprint: String?

    public var requestId: String?

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
        if self.CACertificateId != nil {
            map["CACertificateId"] = self.CACertificateId!
        }
        if self.CACertificateName != nil {
            map["CACertificateName"] = self.CACertificateName!
        }
        if self.commonName != nil {
            map["CommonName"] = self.commonName!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.createTimeStamp != nil {
            map["CreateTimeStamp"] = self.createTimeStamp!
        }
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.expireTimeStamp != nil {
            map["ExpireTimeStamp"] = self.expireTimeStamp!
        }
        if self.fingerprint != nil {
            map["Fingerprint"] = self.fingerprint!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CACertificateId") {
            self.CACertificateId = dict["CACertificateId"] as! String
        }
        if dict.keys.contains("CACertificateName") {
            self.CACertificateName = dict["CACertificateName"] as! String
        }
        if dict.keys.contains("CommonName") {
            self.commonName = dict["CommonName"] as! String
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("CreateTimeStamp") {
            self.createTimeStamp = dict["CreateTimeStamp"] as! Int64
        }
        if dict.keys.contains("ExpireTime") {
            self.expireTime = dict["ExpireTime"] as! String
        }
        if dict.keys.contains("ExpireTimeStamp") {
            self.expireTimeStamp = dict["ExpireTimeStamp"] as! Int64
        }
        if dict.keys.contains("Fingerprint") {
            self.fingerprint = dict["Fingerprint"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class UploadCACertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UploadCACertificateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UploadCACertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UploadServerCertificateRequest : Tea.TeaModel {
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
    public var aliCloudCertificateId: String?

    public var aliCloudCertificateName: String?

    public var aliCloudCertificateRegionId: String?

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var privateKey: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var serverCertificate: String?

    public var serverCertificateName: String?

    public var tag: [UploadServerCertificateRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliCloudCertificateId != nil {
            map["AliCloudCertificateId"] = self.aliCloudCertificateId!
        }
        if self.aliCloudCertificateName != nil {
            map["AliCloudCertificateName"] = self.aliCloudCertificateName!
        }
        if self.aliCloudCertificateRegionId != nil {
            map["AliCloudCertificateRegionId"] = self.aliCloudCertificateRegionId!
        }
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.privateKey != nil {
            map["PrivateKey"] = self.privateKey!
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
        if self.serverCertificate != nil {
            map["ServerCertificate"] = self.serverCertificate!
        }
        if self.serverCertificateName != nil {
            map["ServerCertificateName"] = self.serverCertificateName!
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
        if dict.keys.contains("AliCloudCertificateId") {
            self.aliCloudCertificateId = dict["AliCloudCertificateId"] as! String
        }
        if dict.keys.contains("AliCloudCertificateName") {
            self.aliCloudCertificateName = dict["AliCloudCertificateName"] as! String
        }
        if dict.keys.contains("AliCloudCertificateRegionId") {
            self.aliCloudCertificateRegionId = dict["AliCloudCertificateRegionId"] as! String
        }
        if dict.keys.contains("OwnerAccount") {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PrivateKey") {
            self.privateKey = dict["PrivateKey"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ServerCertificate") {
            self.serverCertificate = dict["ServerCertificate"] as! String
        }
        if dict.keys.contains("ServerCertificateName") {
            self.serverCertificateName = dict["ServerCertificateName"] as! String
        }
        if dict.keys.contains("Tag") {
            var tmp : [UploadServerCertificateRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = UploadServerCertificateRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class UploadServerCertificateResponseBody : Tea.TeaModel {
    public class SubjectAlternativeNames : Tea.TeaModel {
        public var subjectAlternativeName: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.subjectAlternativeName != nil {
                map["SubjectAlternativeName"] = self.subjectAlternativeName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SubjectAlternativeName") {
                self.subjectAlternativeName = dict["SubjectAlternativeName"] as! [String]
            }
        }
    }
    public var aliCloudCertificateId: String?

    public var aliCloudCertificateName: String?

    public var commonName: String?

    public var createTime: String?

    public var createTimeStamp: Int64?

    public var expireTime: String?

    public var expireTimeStamp: Int64?

    public var fingerprint: String?

    public var isAliCloudCertificate: Int32?

    public var regionId: String?

    public var requestId: String?

    public var resourceGroupId: String?

    public var serverCertificateId: String?

    public var serverCertificateName: String?

    public var subjectAlternativeNames: UploadServerCertificateResponseBody.SubjectAlternativeNames?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.subjectAlternativeNames?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliCloudCertificateId != nil {
            map["AliCloudCertificateId"] = self.aliCloudCertificateId!
        }
        if self.aliCloudCertificateName != nil {
            map["AliCloudCertificateName"] = self.aliCloudCertificateName!
        }
        if self.commonName != nil {
            map["CommonName"] = self.commonName!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.createTimeStamp != nil {
            map["CreateTimeStamp"] = self.createTimeStamp!
        }
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.expireTimeStamp != nil {
            map["ExpireTimeStamp"] = self.expireTimeStamp!
        }
        if self.fingerprint != nil {
            map["Fingerprint"] = self.fingerprint!
        }
        if self.isAliCloudCertificate != nil {
            map["IsAliCloudCertificate"] = self.isAliCloudCertificate!
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
        if self.serverCertificateId != nil {
            map["ServerCertificateId"] = self.serverCertificateId!
        }
        if self.serverCertificateName != nil {
            map["ServerCertificateName"] = self.serverCertificateName!
        }
        if self.subjectAlternativeNames != nil {
            map["SubjectAlternativeNames"] = self.subjectAlternativeNames?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliCloudCertificateId") {
            self.aliCloudCertificateId = dict["AliCloudCertificateId"] as! String
        }
        if dict.keys.contains("AliCloudCertificateName") {
            self.aliCloudCertificateName = dict["AliCloudCertificateName"] as! String
        }
        if dict.keys.contains("CommonName") {
            self.commonName = dict["CommonName"] as! String
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("CreateTimeStamp") {
            self.createTimeStamp = dict["CreateTimeStamp"] as! Int64
        }
        if dict.keys.contains("ExpireTime") {
            self.expireTime = dict["ExpireTime"] as! String
        }
        if dict.keys.contains("ExpireTimeStamp") {
            self.expireTimeStamp = dict["ExpireTimeStamp"] as! Int64
        }
        if dict.keys.contains("Fingerprint") {
            self.fingerprint = dict["Fingerprint"] as! String
        }
        if dict.keys.contains("IsAliCloudCertificate") {
            self.isAliCloudCertificate = dict["IsAliCloudCertificate"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ServerCertificateId") {
            self.serverCertificateId = dict["ServerCertificateId"] as! String
        }
        if dict.keys.contains("ServerCertificateName") {
            self.serverCertificateName = dict["ServerCertificateName"] as! String
        }
        if dict.keys.contains("SubjectAlternativeNames") {
            var model = UploadServerCertificateResponseBody.SubjectAlternativeNames()
            model.fromMap(dict["SubjectAlternativeNames"] as! [String: Any])
            self.subjectAlternativeNames = model
        }
    }
}

public class UploadServerCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UploadServerCertificateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = UploadServerCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
