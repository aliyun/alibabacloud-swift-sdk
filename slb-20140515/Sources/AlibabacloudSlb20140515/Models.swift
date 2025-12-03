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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclEntrys"] as? String {
            self.aclEntrys = value
        }
        if let value = dict["AclId"] as? String {
            self.aclId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddAccessControlListEntryResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackendServers"] as? String {
            self.backendServers = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["ServerId"] as? String {
                    self.serverId = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["Weight"] as? String {
                    self.weight = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackendServer"] as? [Any?] {
                var tmp : [AddBackendServersResponseBody.BackendServers.BackendServer] = []
                for v in value {
                    if v != nil {
                        var model = AddBackendServersResponseBody.BackendServers.BackendServer()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackendServers"] as? [String: Any?] {
            var model = AddBackendServersResponseBody.BackendServers()
            model.fromMap(value)
            self.backendServers = model
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddBackendServersResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ListenerPort"] as? Int32 {
            self.listenerPort = value
        }
        if let value = dict["ListenerProtocol"] as? String {
            self.listenerProtocol = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
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
        if let value = dict["SourceItems"] as? String {
            self.sourceItems = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddListenerWhiteListItemResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
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
        if let value = dict["Tags"] as? String {
            self.tags = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddTagsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackendServers"] as? String {
            self.backendServers = value
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
        if let value = dict["VServerGroupId"] as? String {
            self.VServerGroupId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["Port"] as? Int32 {
                    self.port = value
                }
                if let value = dict["ServerId"] as? String {
                    self.serverId = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["Weight"] as? Int32 {
                    self.weight = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackendServer"] as? [Any?] {
                var tmp : [AddVServerGroupBackendServersResponseBody.BackendServers.BackendServer] = []
                for v in value {
                    if v != nil {
                        var model = AddVServerGroupBackendServersResponseBody.BackendServers.BackendServer()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackendServers"] as? [String: Any?] {
            var model = AddVServerGroupBackendServersResponseBody.BackendServers()
            model.fromMap(value)
            self.backendServers = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["VServerGroupId"] as? String {
            self.VServerGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AddVServerGroupBackendServersResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclName"] as? String {
            self.aclName = value
        }
        if let value = dict["AddressIPVersion"] as? String {
            self.addressIPVersion = value
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
            var tmp : [CreateAccessControlListRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateAccessControlListRequest.Tag()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclId"] as? String {
            self.aclId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateAccessControlListResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["ListenerPort"] as? Int32 {
            self.listenerPort = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
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
        if let value = dict["ServerCertificateId"] as? String {
            self.serverCertificateId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainExtensionId"] as? String {
            self.domainExtensionId = value
        }
        if let value = dict["ListenerPort"] as? Int32 {
            self.listenerPort = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateDomainExtensionResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Address"] as? String {
            self.address = value
        }
        if let value = dict["AddressIPVersion"] as? String {
            self.addressIPVersion = value
        }
        if let value = dict["AddressType"] as? String {
            self.addressType = value
        }
        if let value = dict["AutoPay"] as? Bool {
            self.autoPay = value
        }
        if let value = dict["Bandwidth"] as? Int32 {
            self.bandwidth = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DeleteProtection"] as? String {
            self.deleteProtection = value
        }
        if let value = dict["Duration"] as? Int32 {
            self.duration = value
        }
        if let value = dict["InstanceChargeType"] as? String {
            self.instanceChargeType = value
        }
        if let value = dict["InternetChargeType"] as? String {
            self.internetChargeType = value
        }
        if let value = dict["LoadBalancerName"] as? String {
            self.loadBalancerName = value
        }
        if let value = dict["LoadBalancerSpec"] as? String {
            self.loadBalancerSpec = value
        }
        if let value = dict["MasterZoneId"] as? String {
            self.masterZoneId = value
        }
        if let value = dict["ModificationProtectionReason"] as? String {
            self.modificationProtectionReason = value
        }
        if let value = dict["ModificationProtectionStatus"] as? String {
            self.modificationProtectionStatus = value
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
        if let value = dict["PricingCycle"] as? String {
            self.pricingCycle = value
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
        if let value = dict["SlaveZoneId"] as? String {
            self.slaveZoneId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateLoadBalancerRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateLoadBalancerRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Address"] as? String {
            self.address = value
        }
        if let value = dict["AddressIPVersion"] as? String {
            self.addressIPVersion = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["LoadBalancerName"] as? String {
            self.loadBalancerName = value
        }
        if let value = dict["NetworkType"] as? String {
            self.networkType = value
        }
        if let value = dict["OrderId"] as? Int64 {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateLoadBalancerResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclId"] as? String {
            self.aclId = value
        }
        if let value = dict["AclStatus"] as? String {
            self.aclStatus = value
        }
        if let value = dict["AclType"] as? String {
            self.aclType = value
        }
        if let value = dict["BackendServerPort"] as? Int32 {
            self.backendServerPort = value
        }
        if let value = dict["Bandwidth"] as? Int32 {
            self.bandwidth = value
        }
        if let value = dict["Cookie"] as? String {
            self.cookie = value
        }
        if let value = dict["CookieTimeout"] as? Int32 {
            self.cookieTimeout = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ForwardPort"] as? Int32 {
            self.forwardPort = value
        }
        if let value = dict["Gzip"] as? String {
            self.gzip = value
        }
        if let value = dict["HealthCheck"] as? String {
            self.healthCheck = value
        }
        if let value = dict["HealthCheckConnectPort"] as? Int32 {
            self.healthCheckConnectPort = value
        }
        if let value = dict["HealthCheckDomain"] as? String {
            self.healthCheckDomain = value
        }
        if let value = dict["HealthCheckHttpCode"] as? String {
            self.healthCheckHttpCode = value
        }
        if let value = dict["HealthCheckInterval"] as? Int32 {
            self.healthCheckInterval = value
        }
        if let value = dict["HealthCheckMethod"] as? String {
            self.healthCheckMethod = value
        }
        if let value = dict["HealthCheckTimeout"] as? Int32 {
            self.healthCheckTimeout = value
        }
        if let value = dict["HealthCheckURI"] as? String {
            self.healthCheckURI = value
        }
        if let value = dict["HealthyThreshold"] as? Int32 {
            self.healthyThreshold = value
        }
        if let value = dict["IdleTimeout"] as? Int32 {
            self.idleTimeout = value
        }
        if let value = dict["ListenerForward"] as? String {
            self.listenerForward = value
        }
        if let value = dict["ListenerPort"] as? Int32 {
            self.listenerPort = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
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
        if let value = dict["RequestTimeout"] as? Int32 {
            self.requestTimeout = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Scheduler"] as? String {
            self.scheduler = value
        }
        if let value = dict["StickySession"] as? String {
            self.stickySession = value
        }
        if let value = dict["StickySessionType"] as? String {
            self.stickySessionType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateLoadBalancerHTTPListenerRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateLoadBalancerHTTPListenerRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["UnhealthyThreshold"] as? Int32 {
            self.unhealthyThreshold = value
        }
        if let value = dict["VServerGroupId"] as? String {
            self.VServerGroupId = value
        }
        if let value = dict["XForwardedFor"] as? String {
            self.XForwardedFor = value
        }
        if let value = dict["XForwardedFor_ClientSrcPort"] as? String {
            self.XForwardedFor_ClientSrcPort = value
        }
        if let value = dict["XForwardedFor_SLBID"] as? String {
            self.XForwardedFor_SLBID = value
        }
        if let value = dict["XForwardedFor_SLBIP"] as? String {
            self.XForwardedFor_SLBIP = value
        }
        if let value = dict["XForwardedFor_SLBPORT"] as? String {
            self.XForwardedFor_SLBPORT = value
        }
        if let value = dict["XForwardedFor_proto"] as? String {
            self.XForwardedFor_proto = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateLoadBalancerHTTPListenerResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclId"] as? String {
            self.aclId = value
        }
        if let value = dict["AclStatus"] as? String {
            self.aclStatus = value
        }
        if let value = dict["AclType"] as? String {
            self.aclType = value
        }
        if let value = dict["BackendServerPort"] as? Int32 {
            self.backendServerPort = value
        }
        if let value = dict["Bandwidth"] as? Int32 {
            self.bandwidth = value
        }
        if let value = dict["CACertificateId"] as? String {
            self.CACertificateId = value
        }
        if let value = dict["Cookie"] as? String {
            self.cookie = value
        }
        if let value = dict["CookieTimeout"] as? Int32 {
            self.cookieTimeout = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["EnableHttp2"] as? String {
            self.enableHttp2 = value
        }
        if let value = dict["Gzip"] as? String {
            self.gzip = value
        }
        if let value = dict["HealthCheck"] as? String {
            self.healthCheck = value
        }
        if let value = dict["HealthCheckConnectPort"] as? Int32 {
            self.healthCheckConnectPort = value
        }
        if let value = dict["HealthCheckDomain"] as? String {
            self.healthCheckDomain = value
        }
        if let value = dict["HealthCheckHttpCode"] as? String {
            self.healthCheckHttpCode = value
        }
        if let value = dict["HealthCheckInterval"] as? Int32 {
            self.healthCheckInterval = value
        }
        if let value = dict["HealthCheckMethod"] as? String {
            self.healthCheckMethod = value
        }
        if let value = dict["HealthCheckTimeout"] as? Int32 {
            self.healthCheckTimeout = value
        }
        if let value = dict["HealthCheckURI"] as? String {
            self.healthCheckURI = value
        }
        if let value = dict["HealthyThreshold"] as? Int32 {
            self.healthyThreshold = value
        }
        if let value = dict["IdleTimeout"] as? Int32 {
            self.idleTimeout = value
        }
        if let value = dict["ListenerPort"] as? Int32 {
            self.listenerPort = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
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
        if let value = dict["RequestTimeout"] as? Int32 {
            self.requestTimeout = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Scheduler"] as? String {
            self.scheduler = value
        }
        if let value = dict["ServerCertificateId"] as? String {
            self.serverCertificateId = value
        }
        if let value = dict["StickySession"] as? String {
            self.stickySession = value
        }
        if let value = dict["StickySessionType"] as? String {
            self.stickySessionType = value
        }
        if let value = dict["TLSCipherPolicy"] as? String {
            self.TLSCipherPolicy = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateLoadBalancerHTTPSListenerRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateLoadBalancerHTTPSListenerRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["UnhealthyThreshold"] as? Int32 {
            self.unhealthyThreshold = value
        }
        if let value = dict["VServerGroupId"] as? String {
            self.VServerGroupId = value
        }
        if let value = dict["XForwardedFor"] as? String {
            self.XForwardedFor = value
        }
        if let value = dict["XForwardedFor_ClientSrcPort"] as? String {
            self.XForwardedFor_ClientSrcPort = value
        }
        if let value = dict["XForwardedFor_SLBID"] as? String {
            self.XForwardedFor_SLBID = value
        }
        if let value = dict["XForwardedFor_SLBIP"] as? String {
            self.XForwardedFor_SLBIP = value
        }
        if let value = dict["XForwardedFor_SLBPORT"] as? String {
            self.XForwardedFor_SLBPORT = value
        }
        if let value = dict["XForwardedFor_proto"] as? String {
            self.XForwardedFor_proto = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateLoadBalancerHTTPSListenerResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclId"] as? String {
            self.aclId = value
        }
        if let value = dict["AclStatus"] as? String {
            self.aclStatus = value
        }
        if let value = dict["AclType"] as? String {
            self.aclType = value
        }
        if let value = dict["BackendServerPort"] as? Int32 {
            self.backendServerPort = value
        }
        if let value = dict["Bandwidth"] as? Int32 {
            self.bandwidth = value
        }
        if let value = dict["ConnectionDrain"] as? String {
            self.connectionDrain = value
        }
        if let value = dict["ConnectionDrainTimeout"] as? Int32 {
            self.connectionDrainTimeout = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["EstablishedTimeout"] as? Int32 {
            self.establishedTimeout = value
        }
        if let value = dict["HealthCheckConnectPort"] as? Int32 {
            self.healthCheckConnectPort = value
        }
        if let value = dict["HealthCheckConnectTimeout"] as? Int32 {
            self.healthCheckConnectTimeout = value
        }
        if let value = dict["HealthCheckDomain"] as? String {
            self.healthCheckDomain = value
        }
        if let value = dict["HealthCheckHttpCode"] as? String {
            self.healthCheckHttpCode = value
        }
        if let value = dict["HealthCheckSwitch"] as? String {
            self.healthCheckSwitch = value
        }
        if let value = dict["HealthCheckType"] as? String {
            self.healthCheckType = value
        }
        if let value = dict["HealthCheckURI"] as? String {
            self.healthCheckURI = value
        }
        if let value = dict["HealthyThreshold"] as? Int32 {
            self.healthyThreshold = value
        }
        if let value = dict["ListenerPort"] as? Int32 {
            self.listenerPort = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["MasterSlaveServerGroupId"] as? String {
            self.masterSlaveServerGroupId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PersistenceTimeout"] as? Int32 {
            self.persistenceTimeout = value
        }
        if let value = dict["ProxyProtocolV2Enabled"] as? Bool {
            self.proxyProtocolV2Enabled = value
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
        if let value = dict["Scheduler"] as? String {
            self.scheduler = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateLoadBalancerTCPListenerRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateLoadBalancerTCPListenerRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["UnhealthyThreshold"] as? Int32 {
            self.unhealthyThreshold = value
        }
        if let value = dict["VServerGroupId"] as? String {
            self.VServerGroupId = value
        }
        if let value = dict["healthCheckInterval"] as? Int32 {
            self.healthCheckInterval = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateLoadBalancerTCPListenerResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclId"] as? String {
            self.aclId = value
        }
        if let value = dict["AclStatus"] as? String {
            self.aclStatus = value
        }
        if let value = dict["AclType"] as? String {
            self.aclType = value
        }
        if let value = dict["BackendServerPort"] as? Int32 {
            self.backendServerPort = value
        }
        if let value = dict["Bandwidth"] as? Int32 {
            self.bandwidth = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["HealthCheckConnectPort"] as? Int32 {
            self.healthCheckConnectPort = value
        }
        if let value = dict["HealthCheckConnectTimeout"] as? Int32 {
            self.healthCheckConnectTimeout = value
        }
        if let value = dict["HealthCheckSwitch"] as? String {
            self.healthCheckSwitch = value
        }
        if let value = dict["HealthyThreshold"] as? Int32 {
            self.healthyThreshold = value
        }
        if let value = dict["ListenerPort"] as? Int32 {
            self.listenerPort = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["MasterSlaveServerGroupId"] as? String {
            self.masterSlaveServerGroupId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ProxyProtocolV2Enabled"] as? Bool {
            self.proxyProtocolV2Enabled = value
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
        if let value = dict["Scheduler"] as? String {
            self.scheduler = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateLoadBalancerUDPListenerRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateLoadBalancerUDPListenerRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["UnhealthyThreshold"] as? Int32 {
            self.unhealthyThreshold = value
        }
        if let value = dict["VServerGroupId"] as? String {
            self.VServerGroupId = value
        }
        if let value = dict["healthCheckExp"] as? String {
            self.healthCheckExp = value
        }
        if let value = dict["healthCheckInterval"] as? Int32 {
            self.healthCheckInterval = value
        }
        if let value = dict["healthCheckReq"] as? String {
            self.healthCheckReq = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateLoadBalancerUDPListenerResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["MasterSlaveBackendServers"] as? String {
            self.masterSlaveBackendServers = value
        }
        if let value = dict["MasterSlaveServerGroupName"] as? String {
            self.masterSlaveServerGroupName = value
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
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateMasterSlaveServerGroupRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateMasterSlaveServerGroupRequest.Tag()
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["Port"] as? Int32 {
                    self.port = value
                }
                if let value = dict["ServerId"] as? String {
                    self.serverId = value
                }
                if let value = dict["ServerType"] as? String {
                    self.serverType = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["Weight"] as? Int32 {
                    self.weight = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MasterSlaveBackendServer"] as? [Any?] {
                var tmp : [CreateMasterSlaveServerGroupResponseBody.MasterSlaveBackendServers.MasterSlaveBackendServer] = []
                for v in value {
                    if v != nil {
                        var model = CreateMasterSlaveServerGroupResponseBody.MasterSlaveBackendServers.MasterSlaveBackendServer()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MasterSlaveBackendServers"] as? [String: Any?] {
            var model = CreateMasterSlaveServerGroupResponseBody.MasterSlaveBackendServers()
            model.fromMap(value)
            self.masterSlaveBackendServers = model
        }
        if let value = dict["MasterSlaveServerGroupId"] as? String {
            self.masterSlaveServerGroupId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateMasterSlaveServerGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ListenerPort"] as? Int32 {
            self.listenerPort = value
        }
        if let value = dict["ListenerProtocol"] as? String {
            self.listenerProtocol = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
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
        if let value = dict["RuleList"] as? String {
            self.ruleList = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RuleId"] as? String {
                    self.ruleId = value
                }
                if let value = dict["RuleName"] as? String {
                    self.ruleName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Rule"] as? [Any?] {
                var tmp : [CreateRulesResponseBody.Rules.Rule] = []
                for v in value {
                    if v != nil {
                        var model = CreateRulesResponseBody.Rules.Rule()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Rules"] as? [String: Any?] {
            var model = CreateRulesResponseBody.Rules()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateRulesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Ciphers"] as? [String] {
            self.ciphers = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
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
        if let value = dict["TLSVersions"] as? [String] {
            self.TLSVersions = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TLSCipherPolicyId"] as? String {
            self.TLSCipherPolicyId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateTLSCipherPolicyResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackendServers"] as? String {
            self.backendServers = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
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
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateVServerGroupRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateVServerGroupRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["VServerGroupName"] as? String {
            self.VServerGroupName = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["Port"] as? Int32 {
                    self.port = value
                }
                if let value = dict["ServerId"] as? String {
                    self.serverId = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["Weight"] as? Int32 {
                    self.weight = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackendServer"] as? [Any?] {
                var tmp : [CreateVServerGroupResponseBody.BackendServers.BackendServer] = []
                for v in value {
                    if v != nil {
                        var model = CreateVServerGroupResponseBody.BackendServers.BackendServer()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackendServers"] as? [String: Any?] {
            var model = CreateVServerGroupResponseBody.BackendServers()
            model.fromMap(value)
            self.backendServers = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["VServerGroupId"] as? String {
            self.VServerGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateVServerGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclId"] as? String {
            self.aclId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteAccessControlListResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["LogsDownloadAttributes"] as? String {
            self.logsDownloadAttributes = value
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
        if let value = dict["Tags"] as? String {
            self.tags = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteAccessLogsDownloadAttributeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CACertificateId"] as? String {
            self.CACertificateId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteCACertificateResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainExtensionId"] as? String {
            self.domainExtensionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteDomainExtensionResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteLoadBalancerResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ListenerPort"] as? Int32 {
            self.listenerPort = value
        }
        if let value = dict["ListenerProtocol"] as? String {
            self.listenerProtocol = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteLoadBalancerListenerResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MasterSlaveServerGroupId"] as? String {
            self.masterSlaveServerGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteMasterSlaveServerGroupResponseBody()
            model.fromMap(value)
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
        if let value = dict["RuleIds"] as? String {
            self.ruleIds = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteRulesResponseBody()
            model.fromMap(value)
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
        if let value = dict["ServerCertificateId"] as? String {
            self.serverCertificateId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteServerCertificateResponseBody()
            model.fromMap(value)
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
        if let value = dict["TLSCipherPolicyId"] as? String {
            self.TLSCipherPolicyId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteTLSCipherPolicyResponseBody()
            model.fromMap(value)
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
        if let value = dict["VServerGroupId"] as? String {
            self.VServerGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteVServerGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclEntryComment"] as? String {
            self.aclEntryComment = value
        }
        if let value = dict["AclId"] as? String {
            self.aclId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
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
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AclEntryComment"] as? String {
                    self.aclEntryComment = value
                }
                if let value = dict["AclEntryIP"] as? String {
                    self.aclEntryIP = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AclEntry"] as? [Any?] {
                var tmp : [DescribeAccessControlListAttributeResponseBody.AclEntrys.AclEntry] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAccessControlListAttributeResponseBody.AclEntrys.AclEntry()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AclType"] as? String {
                    self.aclType = value
                }
                if let value = dict["ListenerPort"] as? Int32 {
                    self.listenerPort = value
                }
                if let value = dict["LoadBalancerId"] as? String {
                    self.loadBalancerId = value
                }
                if let value = dict["Protocol"] as? String {
                    self.protocol_ = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RelatedListener"] as? [Any?] {
                var tmp : [DescribeAccessControlListAttributeResponseBody.RelatedListeners.RelatedListener] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAccessControlListAttributeResponseBody.RelatedListeners.RelatedListener()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Tag"] as? [Any?] {
                var tmp : [DescribeAccessControlListAttributeResponseBody.Tags.Tag] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAccessControlListAttributeResponseBody.Tags.Tag()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclEntrys"] as? [String: Any?] {
            var model = DescribeAccessControlListAttributeResponseBody.AclEntrys()
            model.fromMap(value)
            self.aclEntrys = model
        }
        if let value = dict["AclId"] as? String {
            self.aclId = value
        }
        if let value = dict["AclName"] as? String {
            self.aclName = value
        }
        if let value = dict["AddressIPVersion"] as? String {
            self.addressIPVersion = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["RelatedListeners"] as? [String: Any?] {
            var model = DescribeAccessControlListAttributeResponseBody.RelatedListeners()
            model.fromMap(value)
            self.relatedListeners = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tags"] as? [String: Any?] {
            var model = DescribeAccessControlListAttributeResponseBody.Tags()
            model.fromMap(value)
            self.tags = model
        }
        if let value = dict["TotalAclEntry"] as? Int32 {
            self.totalAclEntry = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeAccessControlListAttributeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclName"] as? String {
            self.aclName = value
        }
        if let value = dict["AddressIPVersion"] as? String {
            self.addressIPVersion = value
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
            var tmp : [DescribeAccessControlListsRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = DescribeAccessControlListsRequest.Tag()
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Tag"] as? [Any?] {
                        var tmp : [DescribeAccessControlListsResponseBody.Acls.Acl.Tags.Tag] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeAccessControlListsResponseBody.Acls.Acl.Tags.Tag()
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AclId"] as? String {
                    self.aclId = value
                }
                if let value = dict["AclName"] as? String {
                    self.aclName = value
                }
                if let value = dict["AddressIPVersion"] as? String {
                    self.addressIPVersion = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["ResourceGroupId"] as? String {
                    self.resourceGroupId = value
                }
                if let value = dict["Tags"] as? [String: Any?] {
                    var model = DescribeAccessControlListsResponseBody.Acls.Acl.Tags()
                    model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Acl"] as? [Any?] {
                var tmp : [DescribeAccessControlListsResponseBody.Acls.Acl] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAccessControlListsResponseBody.Acls.Acl()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Acls"] as? [String: Any?] {
            var model = DescribeAccessControlListsResponseBody.Acls()
            model.fromMap(value)
            self.acls = model
        }
        if let value = dict["Count"] as? Int32 {
            self.count = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeAccessControlListsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["LogType"] as? String {
            self.logType = value
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
        if let value = dict["Tags"] as? String {
            self.tags = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["LoadBalancerId"] as? String {
                    self.loadBalancerId = value
                }
                if let value = dict["LogProject"] as? String {
                    self.logProject = value
                }
                if let value = dict["LogStore"] as? String {
                    self.logStore = value
                }
                if let value = dict["LogType"] as? String {
                    self.logType = value
                }
                if let value = dict["Region"] as? String {
                    self.region = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LogsDownloadAttribute"] as? [Any?] {
                var tmp : [DescribeAccessLogsDownloadAttributeResponseBody.LogsDownloadAttributes.LogsDownloadAttribute] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAccessLogsDownloadAttributeResponseBody.LogsDownloadAttributes.LogsDownloadAttribute()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LogsDownloadAttributes"] as? [String: Any?] {
            var model = DescribeAccessLogsDownloadAttributeResponseBody.LogsDownloadAttributes()
            model.fromMap(value)
            self.logsDownloadAttributes = model
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeAccessLogsDownloadAttributeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddressIPVersion"] as? String {
            self.addressIPVersion = value
        }
        if let value = dict["AddressType"] as? String {
            self.addressType = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["AddressIPVersion"] as? String {
                            self.addressIPVersion = value
                        }
                        if let value = dict["AddressType"] as? String {
                            self.addressType = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["SupportResource"] as? [Any?] {
                        var tmp : [DescribeAvailableResourceResponseBody.AvailableResources.AvailableResource.SupportResources.SupportResource] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeAvailableResourceResponseBody.AvailableResources.AvailableResource.SupportResources.SupportResource()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["MasterZoneId"] as? String {
                    self.masterZoneId = value
                }
                if let value = dict["SlaveZoneId"] as? String {
                    self.slaveZoneId = value
                }
                if let value = dict["SupportResources"] as? [String: Any?] {
                    var model = DescribeAvailableResourceResponseBody.AvailableResources.AvailableResource.SupportResources()
                    model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AvailableResource"] as? [Any?] {
                var tmp : [DescribeAvailableResourceResponseBody.AvailableResources.AvailableResource] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAvailableResourceResponseBody.AvailableResources.AvailableResource()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AvailableResources"] as? [String: Any?] {
            var model = DescribeAvailableResourceResponseBody.AvailableResources()
            model.fromMap(value)
            self.availableResources = model
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CACertificateId"] as? String {
            self.CACertificateId = value
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
            var tmp : [DescribeCACertificatesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = DescribeCACertificatesRequest.Tag()
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Tag"] as? [Any?] {
                        var tmp : [DescribeCACertificatesResponseBody.CACertificates.CACertificate.Tags.Tag] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeCACertificatesResponseBody.CACertificates.CACertificate.Tags.Tag()
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CACertificateId"] as? String {
                    self.CACertificateId = value
                }
                if let value = dict["CACertificateName"] as? String {
                    self.CACertificateName = value
                }
                if let value = dict["CommonName"] as? String {
                    self.commonName = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["CreateTimeStamp"] as? Int64 {
                    self.createTimeStamp = value
                }
                if let value = dict["ExpireTime"] as? String {
                    self.expireTime = value
                }
                if let value = dict["ExpireTimeStamp"] as? Int64 {
                    self.expireTimeStamp = value
                }
                if let value = dict["Fingerprint"] as? String {
                    self.fingerprint = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["ResourceGroupId"] as? String {
                    self.resourceGroupId = value
                }
                if let value = dict["Tags"] as? [String: Any?] {
                    var model = DescribeCACertificatesResponseBody.CACertificates.CACertificate.Tags()
                    model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CACertificate"] as? [Any?] {
                var tmp : [DescribeCACertificatesResponseBody.CACertificates.CACertificate] = []
                for v in value {
                    if v != nil {
                        var model = DescribeCACertificatesResponseBody.CACertificates.CACertificate()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CACertificates"] as? [String: Any?] {
            var model = DescribeCACertificatesResponseBody.CACertificates()
            model.fromMap(value)
            self.CACertificates = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeCACertificatesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainExtensionId"] as? String {
            self.domainExtensionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["DomainExtensionId"] as? String {
            self.domainExtensionId = value
        }
        if let value = dict["ListenerPort"] as? Int32 {
            self.listenerPort = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServerCertificateId"] as? String {
            self.serverCertificateId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDomainExtensionAttributeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainExtensionId"] as? String {
            self.domainExtensionId = value
        }
        if let value = dict["ListenerPort"] as? Int32 {
            self.listenerPort = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Domain"] as? String {
                    self.domain = value
                }
                if let value = dict["DomainExtensionId"] as? String {
                    self.domainExtensionId = value
                }
                if let value = dict["ServerCertificateId"] as? String {
                    self.serverCertificateId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DomainExtension"] as? [Any?] {
                var tmp : [DescribeDomainExtensionsResponseBody.DomainExtensions.DomainExtension] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDomainExtensionsResponseBody.DomainExtensions.DomainExtension()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainExtensions"] as? [String: Any?] {
            var model = DescribeDomainExtensionsResponseBody.DomainExtensions()
            model.fromMap(value)
            self.domainExtensions = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeDomainExtensionsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ListenerPort"] as? Int32 {
            self.listenerPort = value
        }
        if let value = dict["ListenerProtocol"] as? String {
            self.listenerProtocol = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ListenerPort"] as? Int32 {
                    self.listenerPort = value
                }
                if let value = dict["Port"] as? Int32 {
                    self.port = value
                }
                if let value = dict["Protocol"] as? String {
                    self.protocol_ = value
                }
                if let value = dict["ServerHealthStatus"] as? String {
                    self.serverHealthStatus = value
                }
                if let value = dict["ServerId"] as? String {
                    self.serverId = value
                }
                if let value = dict["ServerIp"] as? String {
                    self.serverIp = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackendServer"] as? [Any?] {
                var tmp : [DescribeHealthStatusResponseBody.BackendServers.BackendServer] = []
                for v in value {
                    if v != nil {
                        var model = DescribeHealthStatusResponseBody.BackendServers.BackendServer()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackendServers"] as? [String: Any?] {
            var model = DescribeHealthStatusResponseBody.BackendServers()
            model.fromMap(value)
            self.backendServers = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeHealthStatusResponseBody()
            model.fromMap(value)
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
        if let value = dict["Tags"] as? String {
            self.tags = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LogProject"] as? String {
            self.logProject = value
        }
        if let value = dict["LogStore"] as? String {
            self.logStore = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeHighDefinationMonitorResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ListenerPort"] as? Int32 {
            self.listenerPort = value
        }
        if let value = dict["ListenerProtocol"] as? String {
            self.listenerProtocol = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessControlStatus"] as? String {
            self.accessControlStatus = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SourceItems"] as? String {
            self.sourceItems = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeListenerAccessControlAttributeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["ServerId"] as? String {
                    self.serverId = value
                }
                if let value = dict["ServerIp"] as? String {
                    self.serverIp = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["Weight"] as? Int32 {
                    self.weight = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackendServer"] as? [Any?] {
                var tmp : [DescribeLoadBalancerAttributeResponseBody.BackendServers.BackendServer] = []
                for v in value {
                    if v != nil {
                        var model = DescribeLoadBalancerAttributeResponseBody.BackendServers.BackendServer()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ListenerPort"] as? [Int32] {
                self.listenerPort = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ListenerPort"] as? Int32 {
                    self.listenerPort = value
                }
                if let value = dict["ListenerProtocal"] as? String {
                    self.listenerProtocal = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ListenerPortAndProtocal"] as? [Any?] {
                var tmp : [DescribeLoadBalancerAttributeResponseBody.ListenerPortsAndProtocal.ListenerPortAndProtocal] = []
                for v in value {
                    if v != nil {
                        var model = DescribeLoadBalancerAttributeResponseBody.ListenerPortsAndProtocal.ListenerPortAndProtocal()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["ForwardPort"] as? Int32 {
                    self.forwardPort = value
                }
                if let value = dict["ListenerForward"] as? String {
                    self.listenerForward = value
                }
                if let value = dict["ListenerPort"] as? Int32 {
                    self.listenerPort = value
                }
                if let value = dict["ListenerProtocol"] as? String {
                    self.listenerProtocol = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ListenerPortAndProtocol"] as? [Any?] {
                var tmp : [DescribeLoadBalancerAttributeResponseBody.ListenerPortsAndProtocol.ListenerPortAndProtocol] = []
                for v in value {
                    if v != nil {
                        var model = DescribeLoadBalancerAttributeResponseBody.ListenerPortsAndProtocol.ListenerPortAndProtocol()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Tag"] as? [Any?] {
                var tmp : [DescribeLoadBalancerAttributeResponseBody.Tags.Tag] = []
                for v in value {
                    if v != nil {
                        var model = DescribeLoadBalancerAttributeResponseBody.Tags.Tag()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Address"] as? String {
            self.address = value
        }
        if let value = dict["AddressIPVersion"] as? String {
            self.addressIPVersion = value
        }
        if let value = dict["AddressType"] as? String {
            self.addressType = value
        }
        if let value = dict["AutoReleaseTime"] as? Int64 {
            self.autoReleaseTime = value
        }
        if let value = dict["BackendServers"] as? [String: Any?] {
            var model = DescribeLoadBalancerAttributeResponseBody.BackendServers()
            model.fromMap(value)
            self.backendServers = model
        }
        if let value = dict["Bandwidth"] as? Int32 {
            self.bandwidth = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["CreateTimeStamp"] as? Int64 {
            self.createTimeStamp = value
        }
        if let value = dict["DeleteProtection"] as? String {
            self.deleteProtection = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["EndTimeStamp"] as? Int64 {
            self.endTimeStamp = value
        }
        if let value = dict["InstanceChargeType"] as? String {
            self.instanceChargeType = value
        }
        if let value = dict["InternetChargeType"] as? String {
            self.internetChargeType = value
        }
        if let value = dict["ListenerPorts"] as? [String: Any?] {
            var model = DescribeLoadBalancerAttributeResponseBody.ListenerPorts()
            model.fromMap(value)
            self.listenerPorts = model
        }
        if let value = dict["ListenerPortsAndProtocal"] as? [String: Any?] {
            var model = DescribeLoadBalancerAttributeResponseBody.ListenerPortsAndProtocal()
            model.fromMap(value)
            self.listenerPortsAndProtocal = model
        }
        if let value = dict["ListenerPortsAndProtocol"] as? [String: Any?] {
            var model = DescribeLoadBalancerAttributeResponseBody.ListenerPortsAndProtocol()
            model.fromMap(value)
            self.listenerPortsAndProtocol = model
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["LoadBalancerName"] as? String {
            self.loadBalancerName = value
        }
        if let value = dict["LoadBalancerSpec"] as? String {
            self.loadBalancerSpec = value
        }
        if let value = dict["LoadBalancerStatus"] as? String {
            self.loadBalancerStatus = value
        }
        if let value = dict["MasterZoneId"] as? String {
            self.masterZoneId = value
        }
        if let value = dict["ModificationProtectionReason"] as? String {
            self.modificationProtectionReason = value
        }
        if let value = dict["ModificationProtectionStatus"] as? String {
            self.modificationProtectionStatus = value
        }
        if let value = dict["NetworkType"] as? String {
            self.networkType = value
        }
        if let value = dict["PayType"] as? String {
            self.payType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RegionIdAlias"] as? String {
            self.regionIdAlias = value
        }
        if let value = dict["RenewalCycUnit"] as? String {
            self.renewalCycUnit = value
        }
        if let value = dict["RenewalDuration"] as? Int32 {
            self.renewalDuration = value
        }
        if let value = dict["RenewalStatus"] as? String {
            self.renewalStatus = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["SlaveZoneId"] as? String {
            self.slaveZoneId = value
        }
        if let value = dict["Tags"] as? [String: Any?] {
            var model = DescribeLoadBalancerAttributeResponseBody.Tags()
            model.fromMap(value)
            self.tags = model
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeLoadBalancerAttributeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ListenerPort"] as? Int32 {
            self.listenerPort = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
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

public class DescribeLoadBalancerHTTPListenerAttributeResponseBody : Tea.TeaModel {
    public class AclIds : Tea.TeaModel {
        public var aclId: [String]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AclId"] as? [String] {
                self.aclId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Domain"] as? String {
                    self.domain = value
                }
                if let value = dict["RuleId"] as? String {
                    self.ruleId = value
                }
                if let value = dict["RuleName"] as? String {
                    self.ruleName = value
                }
                if let value = dict["Url"] as? String {
                    self.url = value
                }
                if let value = dict["VServerGroupId"] as? String {
                    self.VServerGroupId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Rule"] as? [Any?] {
                var tmp : [DescribeLoadBalancerHTTPListenerAttributeResponseBody.Rules.Rule] = []
                for v in value {
                    if v != nil {
                        var model = DescribeLoadBalancerHTTPListenerAttributeResponseBody.Rules.Rule()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Tag"] as? [Any?] {
                var tmp : [DescribeLoadBalancerHTTPListenerAttributeResponseBody.Tags.Tag] = []
                for v in value {
                    if v != nil {
                        var model = DescribeLoadBalancerHTTPListenerAttributeResponseBody.Tags.Tag()
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
    public var aclId: String?

    public var aclIds: DescribeLoadBalancerHTTPListenerAttributeResponseBody.AclIds?

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
        try self.aclIds?.validate()
        try self.rules?.validate()
        try self.tags?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclId != nil {
            map["AclId"] = self.aclId!
        }
        if self.aclIds != nil {
            map["AclIds"] = self.aclIds?.toMap()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclId"] as? String {
            self.aclId = value
        }
        if let value = dict["AclIds"] as? [String: Any?] {
            var model = DescribeLoadBalancerHTTPListenerAttributeResponseBody.AclIds()
            model.fromMap(value)
            self.aclIds = model
        }
        if let value = dict["AclStatus"] as? String {
            self.aclStatus = value
        }
        if let value = dict["AclType"] as? String {
            self.aclType = value
        }
        if let value = dict["BackendServerPort"] as? Int32 {
            self.backendServerPort = value
        }
        if let value = dict["Bandwidth"] as? Int32 {
            self.bandwidth = value
        }
        if let value = dict["Cookie"] as? String {
            self.cookie = value
        }
        if let value = dict["CookieTimeout"] as? Int32 {
            self.cookieTimeout = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ForwardPort"] as? Int32 {
            self.forwardPort = value
        }
        if let value = dict["Gzip"] as? String {
            self.gzip = value
        }
        if let value = dict["HealthCheck"] as? String {
            self.healthCheck = value
        }
        if let value = dict["HealthCheckConnectPort"] as? Int32 {
            self.healthCheckConnectPort = value
        }
        if let value = dict["HealthCheckDomain"] as? String {
            self.healthCheckDomain = value
        }
        if let value = dict["HealthCheckHttpCode"] as? String {
            self.healthCheckHttpCode = value
        }
        if let value = dict["HealthCheckInterval"] as? Int32 {
            self.healthCheckInterval = value
        }
        if let value = dict["HealthCheckMethod"] as? String {
            self.healthCheckMethod = value
        }
        if let value = dict["HealthCheckTimeout"] as? Int32 {
            self.healthCheckTimeout = value
        }
        if let value = dict["HealthCheckURI"] as? String {
            self.healthCheckURI = value
        }
        if let value = dict["HealthyThreshold"] as? Int32 {
            self.healthyThreshold = value
        }
        if let value = dict["IdleTimeout"] as? Int32 {
            self.idleTimeout = value
        }
        if let value = dict["ListenerForward"] as? String {
            self.listenerForward = value
        }
        if let value = dict["ListenerPort"] as? Int32 {
            self.listenerPort = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RequestTimeout"] as? Int32 {
            self.requestTimeout = value
        }
        if let value = dict["Rules"] as? [String: Any?] {
            var model = DescribeLoadBalancerHTTPListenerAttributeResponseBody.Rules()
            model.fromMap(value)
            self.rules = model
        }
        if let value = dict["Scheduler"] as? String {
            self.scheduler = value
        }
        if let value = dict["SecurityStatus"] as? String {
            self.securityStatus = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["StickySession"] as? String {
            self.stickySession = value
        }
        if let value = dict["StickySessionType"] as? String {
            self.stickySessionType = value
        }
        if let value = dict["Tags"] as? [String: Any?] {
            var model = DescribeLoadBalancerHTTPListenerAttributeResponseBody.Tags()
            model.fromMap(value)
            self.tags = model
        }
        if let value = dict["UnhealthyThreshold"] as? Int32 {
            self.unhealthyThreshold = value
        }
        if let value = dict["VServerGroupId"] as? String {
            self.VServerGroupId = value
        }
        if let value = dict["XForwardedFor"] as? String {
            self.XForwardedFor = value
        }
        if let value = dict["XForwardedFor_ClientSrcPort"] as? String {
            self.XForwardedFor_ClientSrcPort = value
        }
        if let value = dict["XForwardedFor_SLBID"] as? String {
            self.XForwardedFor_SLBID = value
        }
        if let value = dict["XForwardedFor_SLBIP"] as? String {
            self.XForwardedFor_SLBIP = value
        }
        if let value = dict["XForwardedFor_SLBPORT"] as? String {
            self.XForwardedFor_SLBPORT = value
        }
        if let value = dict["XForwardedFor_proto"] as? String {
            self.XForwardedFor_proto = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeLoadBalancerHTTPListenerAttributeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ListenerPort"] as? Int32 {
            self.listenerPort = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
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

public class DescribeLoadBalancerHTTPSListenerAttributeResponseBody : Tea.TeaModel {
    public class AclIds : Tea.TeaModel {
        public var aclId: [String]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AclId"] as? [String] {
                self.aclId = value
            }
        }
    }
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Domain"] as? String {
                    self.domain = value
                }
                if let value = dict["DomainExtensionId"] as? String {
                    self.domainExtensionId = value
                }
                if let value = dict["ServerCertificateId"] as? String {
                    self.serverCertificateId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DomainExtension"] as? [Any?] {
                var tmp : [DescribeLoadBalancerHTTPSListenerAttributeResponseBody.DomainExtensions.DomainExtension] = []
                for v in value {
                    if v != nil {
                        var model = DescribeLoadBalancerHTTPSListenerAttributeResponseBody.DomainExtensions.DomainExtension()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Domain"] as? String {
                    self.domain = value
                }
                if let value = dict["RuleId"] as? String {
                    self.ruleId = value
                }
                if let value = dict["RuleName"] as? String {
                    self.ruleName = value
                }
                if let value = dict["Url"] as? String {
                    self.url = value
                }
                if let value = dict["VServerGroupId"] as? String {
                    self.VServerGroupId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Rule"] as? [Any?] {
                var tmp : [DescribeLoadBalancerHTTPSListenerAttributeResponseBody.Rules.Rule] = []
                for v in value {
                    if v != nil {
                        var model = DescribeLoadBalancerHTTPSListenerAttributeResponseBody.Rules.Rule()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Tag"] as? [Any?] {
                var tmp : [DescribeLoadBalancerHTTPSListenerAttributeResponseBody.Tags.Tag] = []
                for v in value {
                    if v != nil {
                        var model = DescribeLoadBalancerHTTPSListenerAttributeResponseBody.Tags.Tag()
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
    public var aclId: String?

    public var aclIds: DescribeLoadBalancerHTTPSListenerAttributeResponseBody.AclIds?

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
        try self.aclIds?.validate()
        try self.domainExtensions?.validate()
        try self.rules?.validate()
        try self.tags?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclId != nil {
            map["AclId"] = self.aclId!
        }
        if self.aclIds != nil {
            map["AclIds"] = self.aclIds?.toMap()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclId"] as? String {
            self.aclId = value
        }
        if let value = dict["AclIds"] as? [String: Any?] {
            var model = DescribeLoadBalancerHTTPSListenerAttributeResponseBody.AclIds()
            model.fromMap(value)
            self.aclIds = model
        }
        if let value = dict["AclStatus"] as? String {
            self.aclStatus = value
        }
        if let value = dict["AclType"] as? String {
            self.aclType = value
        }
        if let value = dict["BackendServerPort"] as? Int32 {
            self.backendServerPort = value
        }
        if let value = dict["Bandwidth"] as? Int32 {
            self.bandwidth = value
        }
        if let value = dict["CACertificateId"] as? String {
            self.CACertificateId = value
        }
        if let value = dict["Cookie"] as? String {
            self.cookie = value
        }
        if let value = dict["CookieTimeout"] as? Int32 {
            self.cookieTimeout = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DomainExtensions"] as? [String: Any?] {
            var model = DescribeLoadBalancerHTTPSListenerAttributeResponseBody.DomainExtensions()
            model.fromMap(value)
            self.domainExtensions = model
        }
        if let value = dict["EnableHttp2"] as? String {
            self.enableHttp2 = value
        }
        if let value = dict["Gzip"] as? String {
            self.gzip = value
        }
        if let value = dict["HealthCheck"] as? String {
            self.healthCheck = value
        }
        if let value = dict["HealthCheckConnectPort"] as? Int32 {
            self.healthCheckConnectPort = value
        }
        if let value = dict["HealthCheckDomain"] as? String {
            self.healthCheckDomain = value
        }
        if let value = dict["HealthCheckHttpCode"] as? String {
            self.healthCheckHttpCode = value
        }
        if let value = dict["HealthCheckInterval"] as? Int32 {
            self.healthCheckInterval = value
        }
        if let value = dict["HealthCheckMethod"] as? String {
            self.healthCheckMethod = value
        }
        if let value = dict["HealthCheckTimeout"] as? Int32 {
            self.healthCheckTimeout = value
        }
        if let value = dict["HealthCheckURI"] as? String {
            self.healthCheckURI = value
        }
        if let value = dict["HealthyThreshold"] as? Int32 {
            self.healthyThreshold = value
        }
        if let value = dict["IdleTimeout"] as? Int32 {
            self.idleTimeout = value
        }
        if let value = dict["ListenerPort"] as? Int32 {
            self.listenerPort = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RequestTimeout"] as? Int32 {
            self.requestTimeout = value
        }
        if let value = dict["Rules"] as? [String: Any?] {
            var model = DescribeLoadBalancerHTTPSListenerAttributeResponseBody.Rules()
            model.fromMap(value)
            self.rules = model
        }
        if let value = dict["Scheduler"] as? String {
            self.scheduler = value
        }
        if let value = dict["SecurityStatus"] as? String {
            self.securityStatus = value
        }
        if let value = dict["ServerCertificateId"] as? String {
            self.serverCertificateId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["StickySession"] as? String {
            self.stickySession = value
        }
        if let value = dict["StickySessionType"] as? String {
            self.stickySessionType = value
        }
        if let value = dict["TLSCipherPolicy"] as? String {
            self.TLSCipherPolicy = value
        }
        if let value = dict["Tags"] as? [String: Any?] {
            var model = DescribeLoadBalancerHTTPSListenerAttributeResponseBody.Tags()
            model.fromMap(value)
            self.tags = model
        }
        if let value = dict["UnhealthyThreshold"] as? Int32 {
            self.unhealthyThreshold = value
        }
        if let value = dict["VServerGroupId"] as? String {
            self.VServerGroupId = value
        }
        if let value = dict["XForwardedFor"] as? String {
            self.XForwardedFor = value
        }
        if let value = dict["XForwardedFor_ClientCertClientVerify"] as? String {
            self.XForwardedFor_ClientCertClientVerify = value
        }
        if let value = dict["XForwardedFor_ClientCertFingerprint"] as? String {
            self.XForwardedFor_ClientCertFingerprint = value
        }
        if let value = dict["XForwardedFor_ClientCertIssuerDN"] as? String {
            self.XForwardedFor_ClientCertIssuerDN = value
        }
        if let value = dict["XForwardedFor_ClientCertSubjectDN"] as? String {
            self.XForwardedFor_ClientCertSubjectDN = value
        }
        if let value = dict["XForwardedFor_ClientSrcPort"] as? String {
            self.XForwardedFor_ClientSrcPort = value
        }
        if let value = dict["XForwardedFor_SLBID"] as? String {
            self.XForwardedFor_SLBID = value
        }
        if let value = dict["XForwardedFor_SLBIP"] as? String {
            self.XForwardedFor_SLBIP = value
        }
        if let value = dict["XForwardedFor_SLBPORT"] as? String {
            self.XForwardedFor_SLBPORT = value
        }
        if let value = dict["XForwardedFor_proto"] as? String {
            self.XForwardedFor_proto = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeLoadBalancerHTTPSListenerAttributeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["ListenerPort"] as? Int32 {
            self.listenerPort = value
        }
        if let value = dict["ListenerProtocol"] as? String {
            self.listenerProtocol = value
        }
        if let value = dict["LoadBalancerId"] as? [String] {
            self.loadBalancerId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
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
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [DescribeLoadBalancerListenersRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = DescribeLoadBalancerListenersRequest.Tag()
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Cookie"] as? String {
                    self.cookie = value
                }
                if let value = dict["CookieTimeout"] as? Int32 {
                    self.cookieTimeout = value
                }
                if let value = dict["ForwardPort"] as? Int32 {
                    self.forwardPort = value
                }
                if let value = dict["Gzip"] as? String {
                    self.gzip = value
                }
                if let value = dict["HealthCheck"] as? String {
                    self.healthCheck = value
                }
                if let value = dict["HealthCheckConnectPort"] as? Int32 {
                    self.healthCheckConnectPort = value
                }
                if let value = dict["HealthCheckDomain"] as? String {
                    self.healthCheckDomain = value
                }
                if let value = dict["HealthCheckHttpCode"] as? String {
                    self.healthCheckHttpCode = value
                }
                if let value = dict["HealthCheckHttpVersion"] as? String {
                    self.healthCheckHttpVersion = value
                }
                if let value = dict["HealthCheckInterval"] as? Int32 {
                    self.healthCheckInterval = value
                }
                if let value = dict["HealthCheckMethod"] as? String {
                    self.healthCheckMethod = value
                }
                if let value = dict["HealthCheckTimeout"] as? Int32 {
                    self.healthCheckTimeout = value
                }
                if let value = dict["HealthCheckType"] as? String {
                    self.healthCheckType = value
                }
                if let value = dict["HealthCheckURI"] as? String {
                    self.healthCheckURI = value
                }
                if let value = dict["HealthyThreshold"] as? Int32 {
                    self.healthyThreshold = value
                }
                if let value = dict["IdleTimeout"] as? Int32 {
                    self.idleTimeout = value
                }
                if let value = dict["ListenerForward"] as? String {
                    self.listenerForward = value
                }
                if let value = dict["RequestTimeout"] as? Int32 {
                    self.requestTimeout = value
                }
                if let value = dict["StickySession"] as? String {
                    self.stickySession = value
                }
                if let value = dict["StickySessionType"] as? String {
                    self.stickySessionType = value
                }
                if let value = dict["UnhealthyThreshold"] as? Int32 {
                    self.unhealthyThreshold = value
                }
                if let value = dict["XForwardedFor"] as? String {
                    self.XForwardedFor = value
                }
                if let value = dict["XForwardedFor_ClientSrcPort"] as? String {
                    self.XForwardedFor_ClientSrcPort = value
                }
                if let value = dict["XForwardedFor_SLBID"] as? String {
                    self.XForwardedFor_SLBID = value
                }
                if let value = dict["XForwardedFor_SLBIP"] as? String {
                    self.XForwardedFor_SLBIP = value
                }
                if let value = dict["XForwardedFor_SLBPORT"] as? String {
                    self.XForwardedFor_SLBPORT = value
                }
                if let value = dict["XForwardedFor_proto"] as? String {
                    self.XForwardedFor_proto = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CACertificateId"] as? String {
                    self.CACertificateId = value
                }
                if let value = dict["Cookie"] as? String {
                    self.cookie = value
                }
                if let value = dict["CookieTimeout"] as? Int32 {
                    self.cookieTimeout = value
                }
                if let value = dict["EnableHttp2"] as? String {
                    self.enableHttp2 = value
                }
                if let value = dict["Gzip"] as? String {
                    self.gzip = value
                }
                if let value = dict["HealthCheck"] as? String {
                    self.healthCheck = value
                }
                if let value = dict["HealthCheckConnectPort"] as? Int32 {
                    self.healthCheckConnectPort = value
                }
                if let value = dict["HealthCheckDomain"] as? String {
                    self.healthCheckDomain = value
                }
                if let value = dict["HealthCheckHttpCode"] as? String {
                    self.healthCheckHttpCode = value
                }
                if let value = dict["HealthCheckHttpVersion"] as? String {
                    self.healthCheckHttpVersion = value
                }
                if let value = dict["HealthCheckInterval"] as? Int32 {
                    self.healthCheckInterval = value
                }
                if let value = dict["HealthCheckMethod"] as? String {
                    self.healthCheckMethod = value
                }
                if let value = dict["HealthCheckTimeout"] as? Int32 {
                    self.healthCheckTimeout = value
                }
                if let value = dict["HealthCheckType"] as? String {
                    self.healthCheckType = value
                }
                if let value = dict["HealthCheckURI"] as? String {
                    self.healthCheckURI = value
                }
                if let value = dict["HealthyThreshold"] as? Int32 {
                    self.healthyThreshold = value
                }
                if let value = dict["IdleTimeout"] as? Int32 {
                    self.idleTimeout = value
                }
                if let value = dict["RequestTimeout"] as? Int32 {
                    self.requestTimeout = value
                }
                if let value = dict["ServerCertificateId"] as? String {
                    self.serverCertificateId = value
                }
                if let value = dict["StickySession"] as? String {
                    self.stickySession = value
                }
                if let value = dict["StickySessionType"] as? String {
                    self.stickySessionType = value
                }
                if let value = dict["TLSCipherPolicy"] as? String {
                    self.TLSCipherPolicy = value
                }
                if let value = dict["UnhealthyThreshold"] as? Int32 {
                    self.unhealthyThreshold = value
                }
                if let value = dict["XForwardedFor"] as? String {
                    self.XForwardedFor = value
                }
                if let value = dict["XForwardedFor_ClientCertClientVerify"] as? String {
                    self.XForwardedFor_ClientCertClientVerify = value
                }
                if let value = dict["XForwardedFor_ClientCertFingerprint"] as? String {
                    self.XForwardedFor_ClientCertFingerprint = value
                }
                if let value = dict["XForwardedFor_ClientCertIssuerDN"] as? String {
                    self.XForwardedFor_ClientCertIssuerDN = value
                }
                if let value = dict["XForwardedFor_ClientCertSubjectDN"] as? String {
                    self.XForwardedFor_ClientCertSubjectDN = value
                }
                if let value = dict["XForwardedFor_ClientSrcPort"] as? String {
                    self.XForwardedFor_ClientSrcPort = value
                }
                if let value = dict["XForwardedFor_SLBID"] as? String {
                    self.XForwardedFor_SLBID = value
                }
                if let value = dict["XForwardedFor_SLBIP"] as? String {
                    self.XForwardedFor_SLBIP = value
                }
                if let value = dict["XForwardedFor_SLBPORT"] as? String {
                    self.XForwardedFor_SLBPORT = value
                }
                if let value = dict["XForwardedFor_proto"] as? String {
                    self.XForwardedFor_proto = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ConnectionDrain"] as? String {
                    self.connectionDrain = value
                }
                if let value = dict["ConnectionDrainTimeout"] as? Int32 {
                    self.connectionDrainTimeout = value
                }
                if let value = dict["EstablishedTimeout"] as? Int32 {
                    self.establishedTimeout = value
                }
                if let value = dict["HealthCheck"] as? String {
                    self.healthCheck = value
                }
                if let value = dict["HealthCheckConnectPort"] as? Int32 {
                    self.healthCheckConnectPort = value
                }
                if let value = dict["HealthCheckConnectTimeout"] as? Int32 {
                    self.healthCheckConnectTimeout = value
                }
                if let value = dict["HealthCheckDomain"] as? String {
                    self.healthCheckDomain = value
                }
                if let value = dict["HealthCheckHttpCode"] as? String {
                    self.healthCheckHttpCode = value
                }
                if let value = dict["HealthCheckInterval"] as? Int32 {
                    self.healthCheckInterval = value
                }
                if let value = dict["HealthCheckMethod"] as? String {
                    self.healthCheckMethod = value
                }
                if let value = dict["HealthCheckType"] as? String {
                    self.healthCheckType = value
                }
                if let value = dict["HealthCheckURI"] as? String {
                    self.healthCheckURI = value
                }
                if let value = dict["HealthyThreshold"] as? Int32 {
                    self.healthyThreshold = value
                }
                if let value = dict["MasterSlaveServerGroupId"] as? String {
                    self.masterSlaveServerGroupId = value
                }
                if let value = dict["PersistenceTimeout"] as? Int32 {
                    self.persistenceTimeout = value
                }
                if let value = dict["ProxyProtocolV2Enabled"] as? String {
                    self.proxyProtocolV2Enabled = value
                }
                if let value = dict["UnhealthyThreshold"] as? Int32 {
                    self.unhealthyThreshold = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ConnectionDrain"] as? String {
                    self.connectionDrain = value
                }
                if let value = dict["ConnectionDrainTimeout"] as? Int32 {
                    self.connectionDrainTimeout = value
                }
                if let value = dict["HealthCheck"] as? String {
                    self.healthCheck = value
                }
                if let value = dict["HealthCheckConnectPort"] as? Int32 {
                    self.healthCheckConnectPort = value
                }
                if let value = dict["HealthCheckConnectTimeout"] as? Int32 {
                    self.healthCheckConnectTimeout = value
                }
                if let value = dict["HealthCheckExp"] as? String {
                    self.healthCheckExp = value
                }
                if let value = dict["HealthCheckInterval"] as? Int32 {
                    self.healthCheckInterval = value
                }
                if let value = dict["HealthCheckReq"] as? String {
                    self.healthCheckReq = value
                }
                if let value = dict["HealthyThreshold"] as? Int32 {
                    self.healthyThreshold = value
                }
                if let value = dict["MasterSlaveServerGroupId"] as? String {
                    self.masterSlaveServerGroupId = value
                }
                if let value = dict["ProxyProtocolV2Enabled"] as? String {
                    self.proxyProtocolV2Enabled = value
                }
                if let value = dict["UnhealthyThreshold"] as? Int32 {
                    self.unhealthyThreshold = value
                }
            }
        }
        public var aclId: String?

        public var aclIds: [String]?

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
            if self.aclIds != nil {
                map["AclIds"] = self.aclIds!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AclId"] as? String {
                self.aclId = value
            }
            if let value = dict["AclIds"] as? [String] {
                self.aclIds = value
            }
            if let value = dict["AclStatus"] as? String {
                self.aclStatus = value
            }
            if let value = dict["AclType"] as? String {
                self.aclType = value
            }
            if let value = dict["BackendServerPort"] as? Int32 {
                self.backendServerPort = value
            }
            if let value = dict["Bandwidth"] as? Int32 {
                self.bandwidth = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["HTTPListenerConfig"] as? [String: Any?] {
                var model = DescribeLoadBalancerListenersResponseBody.Listeners.HTTPListenerConfig()
                model.fromMap(value)
                self.HTTPListenerConfig = model
            }
            if let value = dict["HTTPSListenerConfig"] as? [String: Any?] {
                var model = DescribeLoadBalancerListenersResponseBody.Listeners.HTTPSListenerConfig()
                model.fromMap(value)
                self.HTTPSListenerConfig = model
            }
            if let value = dict["ListenerPort"] as? Int32 {
                self.listenerPort = value
            }
            if let value = dict["ListenerProtocol"] as? String {
                self.listenerProtocol = value
            }
            if let value = dict["LoadBalancerId"] as? String {
                self.loadBalancerId = value
            }
            if let value = dict["Scheduler"] as? String {
                self.scheduler = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TCPListenerConfig"] as? [String: Any?] {
                var model = DescribeLoadBalancerListenersResponseBody.Listeners.TCPListenerConfig()
                model.fromMap(value)
                self.TCPListenerConfig = model
            }
            if let value = dict["Tags"] as? [Any?] {
                var tmp : [DescribeLoadBalancerListenersResponseBody.Listeners.Tags] = []
                for v in value {
                    if v != nil {
                        var model = DescribeLoadBalancerListenersResponseBody.Listeners.Tags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tags = tmp
            }
            if let value = dict["UDPListenerConfig"] as? [String: Any?] {
                var model = DescribeLoadBalancerListenersResponseBody.Listeners.UDPListenerConfig()
                model.fromMap(value)
                self.UDPListenerConfig = model
            }
            if let value = dict["VServerGroupId"] as? String {
                self.VServerGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Listeners"] as? [Any?] {
            var tmp : [DescribeLoadBalancerListenersResponseBody.Listeners] = []
            for v in value {
                if v != nil {
                    var model = DescribeLoadBalancerListenersResponseBody.Listeners()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.listeners = tmp
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
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeLoadBalancerListenersResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ListenerPort"] as? Int32 {
            self.listenerPort = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
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

public class DescribeLoadBalancerTCPListenerAttributeResponseBody : Tea.TeaModel {
    public class AclIds : Tea.TeaModel {
        public var aclId: [String]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AclId"] as? [String] {
                self.aclId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Tag"] as? [Any?] {
                var tmp : [DescribeLoadBalancerTCPListenerAttributeResponseBody.Tags.Tag] = []
                for v in value {
                    if v != nil {
                        var model = DescribeLoadBalancerTCPListenerAttributeResponseBody.Tags.Tag()
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
    public var aclId: String?

    public var aclIds: DescribeLoadBalancerTCPListenerAttributeResponseBody.AclIds?

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
        try self.aclIds?.validate()
        try self.tags?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclId != nil {
            map["AclId"] = self.aclId!
        }
        if self.aclIds != nil {
            map["AclIds"] = self.aclIds?.toMap()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclId"] as? String {
            self.aclId = value
        }
        if let value = dict["AclIds"] as? [String: Any?] {
            var model = DescribeLoadBalancerTCPListenerAttributeResponseBody.AclIds()
            model.fromMap(value)
            self.aclIds = model
        }
        if let value = dict["AclStatus"] as? String {
            self.aclStatus = value
        }
        if let value = dict["AclType"] as? String {
            self.aclType = value
        }
        if let value = dict["BackendServerPort"] as? Int32 {
            self.backendServerPort = value
        }
        if let value = dict["Bandwidth"] as? Int32 {
            self.bandwidth = value
        }
        if let value = dict["ConnectionDrain"] as? String {
            self.connectionDrain = value
        }
        if let value = dict["ConnectionDrainTimeout"] as? Int32 {
            self.connectionDrainTimeout = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["EstablishedTimeout"] as? Int32 {
            self.establishedTimeout = value
        }
        if let value = dict["HealthCheck"] as? String {
            self.healthCheck = value
        }
        if let value = dict["HealthCheckConnectPort"] as? Int32 {
            self.healthCheckConnectPort = value
        }
        if let value = dict["HealthCheckConnectTimeout"] as? Int32 {
            self.healthCheckConnectTimeout = value
        }
        if let value = dict["HealthCheckDomain"] as? String {
            self.healthCheckDomain = value
        }
        if let value = dict["HealthCheckHttpCode"] as? String {
            self.healthCheckHttpCode = value
        }
        if let value = dict["HealthCheckInterval"] as? Int32 {
            self.healthCheckInterval = value
        }
        if let value = dict["HealthCheckMethod"] as? String {
            self.healthCheckMethod = value
        }
        if let value = dict["HealthCheckType"] as? String {
            self.healthCheckType = value
        }
        if let value = dict["HealthCheckURI"] as? String {
            self.healthCheckURI = value
        }
        if let value = dict["HealthyThreshold"] as? Int32 {
            self.healthyThreshold = value
        }
        if let value = dict["ListenerPort"] as? Int32 {
            self.listenerPort = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["MasterSlaveServerGroupId"] as? String {
            self.masterSlaveServerGroupId = value
        }
        if let value = dict["PersistenceTimeout"] as? Int32 {
            self.persistenceTimeout = value
        }
        if let value = dict["ProxyProtocolV2Enabled"] as? Bool {
            self.proxyProtocolV2Enabled = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Scheduler"] as? String {
            self.scheduler = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["SynProxy"] as? String {
            self.synProxy = value
        }
        if let value = dict["Tags"] as? [String: Any?] {
            var model = DescribeLoadBalancerTCPListenerAttributeResponseBody.Tags()
            model.fromMap(value)
            self.tags = model
        }
        if let value = dict["UnhealthyThreshold"] as? Int32 {
            self.unhealthyThreshold = value
        }
        if let value = dict["VServerGroupId"] as? String {
            self.VServerGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeLoadBalancerTCPListenerAttributeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ListenerPort"] as? Int32 {
            self.listenerPort = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
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

public class DescribeLoadBalancerUDPListenerAttributeResponseBody : Tea.TeaModel {
    public class AclIds : Tea.TeaModel {
        public var aclId: [String]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AclId"] as? [String] {
                self.aclId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Tag"] as? [Any?] {
                var tmp : [DescribeLoadBalancerUDPListenerAttributeResponseBody.Tags.Tag] = []
                for v in value {
                    if v != nil {
                        var model = DescribeLoadBalancerUDPListenerAttributeResponseBody.Tags.Tag()
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
    public var aclId: String?

    public var aclIds: DescribeLoadBalancerUDPListenerAttributeResponseBody.AclIds?

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
        try self.aclIds?.validate()
        try self.tags?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aclId != nil {
            map["AclId"] = self.aclId!
        }
        if self.aclIds != nil {
            map["AclIds"] = self.aclIds?.toMap()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclId"] as? String {
            self.aclId = value
        }
        if let value = dict["AclIds"] as? [String: Any?] {
            var model = DescribeLoadBalancerUDPListenerAttributeResponseBody.AclIds()
            model.fromMap(value)
            self.aclIds = model
        }
        if let value = dict["AclStatus"] as? String {
            self.aclStatus = value
        }
        if let value = dict["AclType"] as? String {
            self.aclType = value
        }
        if let value = dict["BackendServerPort"] as? Int32 {
            self.backendServerPort = value
        }
        if let value = dict["Bandwidth"] as? Int32 {
            self.bandwidth = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["HealthCheck"] as? String {
            self.healthCheck = value
        }
        if let value = dict["HealthCheckConnectPort"] as? Int32 {
            self.healthCheckConnectPort = value
        }
        if let value = dict["HealthCheckConnectTimeout"] as? Int32 {
            self.healthCheckConnectTimeout = value
        }
        if let value = dict["HealthCheckExp"] as? String {
            self.healthCheckExp = value
        }
        if let value = dict["HealthCheckInterval"] as? Int32 {
            self.healthCheckInterval = value
        }
        if let value = dict["HealthCheckReq"] as? String {
            self.healthCheckReq = value
        }
        if let value = dict["HealthyThreshold"] as? Int32 {
            self.healthyThreshold = value
        }
        if let value = dict["ListenerPort"] as? Int32 {
            self.listenerPort = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["MasterSlaveServerGroupId"] as? String {
            self.masterSlaveServerGroupId = value
        }
        if let value = dict["ProxyProtocolV2Enabled"] as? Bool {
            self.proxyProtocolV2Enabled = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Scheduler"] as? String {
            self.scheduler = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Tags"] as? [String: Any?] {
            var model = DescribeLoadBalancerUDPListenerAttributeResponseBody.Tags()
            model.fromMap(value)
            self.tags = model
        }
        if let value = dict["UnhealthyThreshold"] as? Int32 {
            self.unhealthyThreshold = value
        }
        if let value = dict["VServerGroupId"] as? String {
            self.VServerGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeLoadBalancerUDPListenerAttributeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Address"] as? String {
            self.address = value
        }
        if let value = dict["AddressIPVersion"] as? String {
            self.addressIPVersion = value
        }
        if let value = dict["AddressType"] as? String {
            self.addressType = value
        }
        if let value = dict["InternetChargeType"] as? String {
            self.internetChargeType = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["LoadBalancerName"] as? String {
            self.loadBalancerName = value
        }
        if let value = dict["LoadBalancerStatus"] as? String {
            self.loadBalancerStatus = value
        }
        if let value = dict["MasterZoneId"] as? String {
            self.masterZoneId = value
        }
        if let value = dict["NetworkType"] as? String {
            self.networkType = value
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
        if let value = dict["PayType"] as? String {
            self.payType = value
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
        if let value = dict["ServerId"] as? String {
            self.serverId = value
        }
        if let value = dict["ServerIntranetAddress"] as? String {
            self.serverIntranetAddress = value
        }
        if let value = dict["SlaveZoneId"] as? String {
            self.slaveZoneId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [DescribeLoadBalancersRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = DescribeLoadBalancersRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["Tags"] as? String {
            self.tags = value
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Tag"] as? [Any?] {
                        var tmp : [DescribeLoadBalancersResponseBody.LoadBalancers.LoadBalancer.Tags.Tag] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeLoadBalancersResponseBody.LoadBalancers.LoadBalancer.Tags.Tag()
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Address"] as? String {
                    self.address = value
                }
                if let value = dict["AddressIPVersion"] as? String {
                    self.addressIPVersion = value
                }
                if let value = dict["AddressType"] as? String {
                    self.addressType = value
                }
                if let value = dict["Bandwidth"] as? Int32 {
                    self.bandwidth = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["CreateTimeStamp"] as? Int64 {
                    self.createTimeStamp = value
                }
                if let value = dict["DeleteProtection"] as? String {
                    self.deleteProtection = value
                }
                if let value = dict["InstanceChargeType"] as? String {
                    self.instanceChargeType = value
                }
                if let value = dict["InternetChargeType"] as? String {
                    self.internetChargeType = value
                }
                if let value = dict["InternetChargeTypeAlias"] as? String {
                    self.internetChargeTypeAlias = value
                }
                if let value = dict["LoadBalancerId"] as? String {
                    self.loadBalancerId = value
                }
                if let value = dict["LoadBalancerName"] as? String {
                    self.loadBalancerName = value
                }
                if let value = dict["LoadBalancerSpec"] as? String {
                    self.loadBalancerSpec = value
                }
                if let value = dict["LoadBalancerStatus"] as? String {
                    self.loadBalancerStatus = value
                }
                if let value = dict["MasterZoneId"] as? String {
                    self.masterZoneId = value
                }
                if let value = dict["ModificationProtectionReason"] as? String {
                    self.modificationProtectionReason = value
                }
                if let value = dict["ModificationProtectionStatus"] as? String {
                    self.modificationProtectionStatus = value
                }
                if let value = dict["NetworkType"] as? String {
                    self.networkType = value
                }
                if let value = dict["PayType"] as? String {
                    self.payType = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["RegionIdAlias"] as? String {
                    self.regionIdAlias = value
                }
                if let value = dict["ResourceGroupId"] as? String {
                    self.resourceGroupId = value
                }
                if let value = dict["SlaveZoneId"] as? String {
                    self.slaveZoneId = value
                }
                if let value = dict["Tags"] as? [String: Any?] {
                    var model = DescribeLoadBalancersResponseBody.LoadBalancers.LoadBalancer.Tags()
                    model.fromMap(value)
                    self.tags = model
                }
                if let value = dict["VSwitchId"] as? String {
                    self.vSwitchId = value
                }
                if let value = dict["VpcId"] as? String {
                    self.vpcId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LoadBalancer"] as? [Any?] {
                var tmp : [DescribeLoadBalancersResponseBody.LoadBalancers.LoadBalancer] = []
                for v in value {
                    if v != nil {
                        var model = DescribeLoadBalancersResponseBody.LoadBalancers.LoadBalancer()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LoadBalancers"] as? [String: Any?] {
            var model = DescribeLoadBalancersResponseBody.LoadBalancers()
            model.fromMap(value)
            self.loadBalancers = model
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeLoadBalancersResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MasterSlaveServerGroupId"] as? String {
            self.masterSlaveServerGroupId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["Port"] as? Int32 {
                    self.port = value
                }
                if let value = dict["ServerId"] as? String {
                    self.serverId = value
                }
                if let value = dict["ServerType"] as? String {
                    self.serverType = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["Weight"] as? Int32 {
                    self.weight = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MasterSlaveBackendServer"] as? [Any?] {
                var tmp : [DescribeMasterSlaveServerGroupAttributeResponseBody.MasterSlaveBackendServers.MasterSlaveBackendServer] = []
                for v in value {
                    if v != nil {
                        var model = DescribeMasterSlaveServerGroupAttributeResponseBody.MasterSlaveBackendServers.MasterSlaveBackendServer()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Tag"] as? [Any?] {
                var tmp : [DescribeMasterSlaveServerGroupAttributeResponseBody.Tags.Tag] = []
                for v in value {
                    if v != nil {
                        var model = DescribeMasterSlaveServerGroupAttributeResponseBody.Tags.Tag()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["MasterSlaveBackendServers"] as? [String: Any?] {
            var model = DescribeMasterSlaveServerGroupAttributeResponseBody.MasterSlaveBackendServers()
            model.fromMap(value)
            self.masterSlaveBackendServers = model
        }
        if let value = dict["MasterSlaveServerGroupId"] as? String {
            self.masterSlaveServerGroupId = value
        }
        if let value = dict["MasterSlaveServerGroupName"] as? String {
            self.masterSlaveServerGroupName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Tags"] as? [String: Any?] {
            var model = DescribeMasterSlaveServerGroupAttributeResponseBody.Tags()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeMasterSlaveServerGroupAttributeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["IncludeListener"] as? Bool {
            self.includeListener = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
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
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [DescribeMasterSlaveServerGroupsRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = DescribeMasterSlaveServerGroupsRequest.Tag()
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

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Port"] as? Int32 {
                                self.port = value
                            }
                            if let value = dict["Protocol"] as? String {
                                self.protocol_ = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Listener"] as? [Any?] {
                            var tmp : [DescribeMasterSlaveServerGroupsResponseBody.MasterSlaveServerGroups.MasterSlaveServerGroup.AssociatedObjects.Listeners.Listener] = []
                            for v in value {
                                if v != nil {
                                    var model = DescribeMasterSlaveServerGroupsResponseBody.MasterSlaveServerGroups.MasterSlaveServerGroup.AssociatedObjects.Listeners.Listener()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Listeners"] as? [String: Any?] {
                        var model = DescribeMasterSlaveServerGroupsResponseBody.MasterSlaveServerGroups.MasterSlaveServerGroup.AssociatedObjects.Listeners()
                        model.fromMap(value)
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Tag"] as? [Any?] {
                        var tmp : [DescribeMasterSlaveServerGroupsResponseBody.MasterSlaveServerGroups.MasterSlaveServerGroup.Tags.Tag] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeMasterSlaveServerGroupsResponseBody.MasterSlaveServerGroups.MasterSlaveServerGroup.Tags.Tag()
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AssociatedObjects"] as? [String: Any?] {
                    var model = DescribeMasterSlaveServerGroupsResponseBody.MasterSlaveServerGroups.MasterSlaveServerGroup.AssociatedObjects()
                    model.fromMap(value)
                    self.associatedObjects = model
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["MasterSlaveServerGroupId"] as? String {
                    self.masterSlaveServerGroupId = value
                }
                if let value = dict["MasterSlaveServerGroupName"] as? String {
                    self.masterSlaveServerGroupName = value
                }
                if let value = dict["Tags"] as? [String: Any?] {
                    var model = DescribeMasterSlaveServerGroupsResponseBody.MasterSlaveServerGroups.MasterSlaveServerGroup.Tags()
                    model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MasterSlaveServerGroup"] as? [Any?] {
                var tmp : [DescribeMasterSlaveServerGroupsResponseBody.MasterSlaveServerGroups.MasterSlaveServerGroup] = []
                for v in value {
                    if v != nil {
                        var model = DescribeMasterSlaveServerGroupsResponseBody.MasterSlaveServerGroups.MasterSlaveServerGroup()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MasterSlaveServerGroups"] as? [String: Any?] {
            var model = DescribeMasterSlaveServerGroupsResponseBody.MasterSlaveServerGroups()
            model.fromMap(value)
            self.masterSlaveServerGroups = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeMasterSlaveServerGroupsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
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
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Cookie"] as? String {
            self.cookie = value
        }
        if let value = dict["CookieTimeout"] as? Int32 {
            self.cookieTimeout = value
        }
        if let value = dict["Domain"] as? String {
            self.domain = value
        }
        if let value = dict["HealthCheck"] as? String {
            self.healthCheck = value
        }
        if let value = dict["HealthCheckConnectPort"] as? Int32 {
            self.healthCheckConnectPort = value
        }
        if let value = dict["HealthCheckDomain"] as? String {
            self.healthCheckDomain = value
        }
        if let value = dict["HealthCheckHttpCode"] as? String {
            self.healthCheckHttpCode = value
        }
        if let value = dict["HealthCheckInterval"] as? Int32 {
            self.healthCheckInterval = value
        }
        if let value = dict["HealthCheckTimeout"] as? Int32 {
            self.healthCheckTimeout = value
        }
        if let value = dict["HealthCheckURI"] as? String {
            self.healthCheckURI = value
        }
        if let value = dict["HealthyThreshold"] as? Int32 {
            self.healthyThreshold = value
        }
        if let value = dict["ListenerPort"] as? String {
            self.listenerPort = value
        }
        if let value = dict["ListenerSync"] as? String {
            self.listenerSync = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
        }
        if let value = dict["RuleName"] as? String {
            self.ruleName = value
        }
        if let value = dict["Scheduler"] as? String {
            self.scheduler = value
        }
        if let value = dict["StickySession"] as? String {
            self.stickySession = value
        }
        if let value = dict["StickySessionType"] as? String {
            self.stickySessionType = value
        }
        if let value = dict["UnhealthyThreshold"] as? Int32 {
            self.unhealthyThreshold = value
        }
        if let value = dict["Url"] as? String {
            self.url = value
        }
        if let value = dict["VServerGroupId"] as? String {
            self.VServerGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeRuleAttributeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ListenerPort"] as? Int32 {
            self.listenerPort = value
        }
        if let value = dict["ListenerProtocol"] as? String {
            self.listenerProtocol = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Cookie"] as? String {
                    self.cookie = value
                }
                if let value = dict["CookieTimeout"] as? Int32 {
                    self.cookieTimeout = value
                }
                if let value = dict["Domain"] as? String {
                    self.domain = value
                }
                if let value = dict["HealthCheck"] as? String {
                    self.healthCheck = value
                }
                if let value = dict["HealthCheckConnectPort"] as? Int32 {
                    self.healthCheckConnectPort = value
                }
                if let value = dict["HealthCheckDomain"] as? String {
                    self.healthCheckDomain = value
                }
                if let value = dict["HealthCheckHttpCode"] as? String {
                    self.healthCheckHttpCode = value
                }
                if let value = dict["HealthCheckInterval"] as? Int32 {
                    self.healthCheckInterval = value
                }
                if let value = dict["HealthCheckTimeout"] as? Int32 {
                    self.healthCheckTimeout = value
                }
                if let value = dict["HealthCheckURI"] as? String {
                    self.healthCheckURI = value
                }
                if let value = dict["HealthyThreshold"] as? Int32 {
                    self.healthyThreshold = value
                }
                if let value = dict["ListenerSync"] as? String {
                    self.listenerSync = value
                }
                if let value = dict["RuleId"] as? String {
                    self.ruleId = value
                }
                if let value = dict["RuleName"] as? String {
                    self.ruleName = value
                }
                if let value = dict["Scheduler"] as? String {
                    self.scheduler = value
                }
                if let value = dict["StickySession"] as? String {
                    self.stickySession = value
                }
                if let value = dict["StickySessionType"] as? String {
                    self.stickySessionType = value
                }
                if let value = dict["UnhealthyThreshold"] as? Int32 {
                    self.unhealthyThreshold = value
                }
                if let value = dict["Url"] as? String {
                    self.url = value
                }
                if let value = dict["VServerGroupId"] as? String {
                    self.VServerGroupId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Rule"] as? [Any?] {
                var tmp : [DescribeRulesResponseBody.Rules.Rule] = []
                for v in value {
                    if v != nil {
                        var model = DescribeRulesResponseBody.Rules.Rule()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Rules"] as? [String: Any?] {
            var model = DescribeRulesResponseBody.Rules()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeRulesResponseBody()
            model.fromMap(value)
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
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["ServerCertificateId"] as? String {
            self.serverCertificateId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [DescribeServerCertificatesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = DescribeServerCertificatesRequest.Tag()
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["SubjectAlternativeName"] as? [String] {
                        self.subjectAlternativeName = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Tag"] as? [Any?] {
                        var tmp : [DescribeServerCertificatesResponseBody.ServerCertificates.ServerCertificate.Tags.Tag] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeServerCertificatesResponseBody.ServerCertificates.ServerCertificate.Tags.Tag()
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AliCloudCertificateId"] as? String {
                    self.aliCloudCertificateId = value
                }
                if let value = dict["AliCloudCertificateName"] as? String {
                    self.aliCloudCertificateName = value
                }
                if let value = dict["CommonName"] as? String {
                    self.commonName = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["CreateTimeStamp"] as? Int64 {
                    self.createTimeStamp = value
                }
                if let value = dict["ExpireTime"] as? String {
                    self.expireTime = value
                }
                if let value = dict["ExpireTimeStamp"] as? Int64 {
                    self.expireTimeStamp = value
                }
                if let value = dict["Fingerprint"] as? String {
                    self.fingerprint = value
                }
                if let value = dict["IsAliCloudCertificate"] as? Int32 {
                    self.isAliCloudCertificate = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["ResourceGroupId"] as? String {
                    self.resourceGroupId = value
                }
                if let value = dict["ServerCertificateId"] as? String {
                    self.serverCertificateId = value
                }
                if let value = dict["ServerCertificateName"] as? String {
                    self.serverCertificateName = value
                }
                if let value = dict["SubjectAlternativeNames"] as? [String: Any?] {
                    var model = DescribeServerCertificatesResponseBody.ServerCertificates.ServerCertificate.SubjectAlternativeNames()
                    model.fromMap(value)
                    self.subjectAlternativeNames = model
                }
                if let value = dict["Tags"] as? [String: Any?] {
                    var model = DescribeServerCertificatesResponseBody.ServerCertificates.ServerCertificate.Tags()
                    model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ServerCertificate"] as? [Any?] {
                var tmp : [DescribeServerCertificatesResponseBody.ServerCertificates.ServerCertificate] = []
                for v in value {
                    if v != nil {
                        var model = DescribeServerCertificatesResponseBody.ServerCertificates.ServerCertificate()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServerCertificates"] as? [String: Any?] {
            var model = DescribeServerCertificatesResponseBody.ServerCertificates()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeServerCertificatesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DistinctKey"] as? Bool {
            self.distinctKey = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
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
        if let value = dict["Tags"] as? String {
            self.tags = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["InstanceCount"] as? Int32 {
                    self.instanceCount = value
                }
                if let value = dict["TagKey"] as? String {
                    self.tagKey = value
                }
                if let value = dict["TagValue"] as? String {
                    self.tagValue = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TagSet"] as? [Any?] {
                var tmp : [DescribeTagsResponseBody.TagSets.TagSet] = []
                for v in value {
                    if v != nil {
                        var model = DescribeTagsResponseBody.TagSets.TagSet()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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
        if let value = dict["TagSets"] as? [String: Any?] {
            var model = DescribeTagsResponseBody.TagSets()
            model.fromMap(value)
            self.tagSets = model
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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
        if let value = dict["VServerGroupId"] as? String {
            self.VServerGroupId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["Port"] as? Int32 {
                    self.port = value
                }
                if let value = dict["ServerId"] as? String {
                    self.serverId = value
                }
                if let value = dict["ServerIp"] as? String {
                    self.serverIp = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["Weight"] as? Int32 {
                    self.weight = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackendServer"] as? [Any?] {
                var tmp : [DescribeVServerGroupAttributeResponseBody.BackendServers.BackendServer] = []
                for v in value {
                    if v != nil {
                        var model = DescribeVServerGroupAttributeResponseBody.BackendServers.BackendServer()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Tag"] as? [Any?] {
                var tmp : [DescribeVServerGroupAttributeResponseBody.Tags.Tag] = []
                for v in value {
                    if v != nil {
                        var model = DescribeVServerGroupAttributeResponseBody.Tags.Tag()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackendServers"] as? [String: Any?] {
            var model = DescribeVServerGroupAttributeResponseBody.BackendServers()
            model.fromMap(value)
            self.backendServers = model
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Tags"] as? [String: Any?] {
            var model = DescribeVServerGroupAttributeResponseBody.Tags()
            model.fromMap(value)
            self.tags = model
        }
        if let value = dict["VServerGroupId"] as? String {
            self.VServerGroupId = value
        }
        if let value = dict["VServerGroupName"] as? String {
            self.VServerGroupName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeVServerGroupAttributeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["IncludeListener"] as? Bool {
            self.includeListener = value
        }
        if let value = dict["IncludeRule"] as? Bool {
            self.includeRule = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
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
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [DescribeVServerGroupsRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = DescribeVServerGroupsRequest.Tag()
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

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Port"] as? Int32 {
                                self.port = value
                            }
                            if let value = dict["Protocol"] as? String {
                                self.protocol_ = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Listener"] as? [Any?] {
                            var tmp : [DescribeVServerGroupsResponseBody.VServerGroups.VServerGroup.AssociatedObjects.Listeners.Listener] = []
                            for v in value {
                                if v != nil {
                                    var model = DescribeVServerGroupsResponseBody.VServerGroups.VServerGroup.AssociatedObjects.Listeners.Listener()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
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

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Domain"] as? String {
                                self.domain = value
                            }
                            if let value = dict["RuleId"] as? String {
                                self.ruleId = value
                            }
                            if let value = dict["RuleName"] as? String {
                                self.ruleName = value
                            }
                            if let value = dict["Url"] as? String {
                                self.url = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Rule"] as? [Any?] {
                            var tmp : [DescribeVServerGroupsResponseBody.VServerGroups.VServerGroup.AssociatedObjects.Rules.Rule] = []
                            for v in value {
                                if v != nil {
                                    var model = DescribeVServerGroupsResponseBody.VServerGroups.VServerGroup.AssociatedObjects.Rules.Rule()
                                    if v != nil {
                                        model.fromMap(v as? [String: Any?])
                                    }
                                    tmp.append(model)
                                }
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Listeners"] as? [String: Any?] {
                        var model = DescribeVServerGroupsResponseBody.VServerGroups.VServerGroup.AssociatedObjects.Listeners()
                        model.fromMap(value)
                        self.listeners = model
                    }
                    if let value = dict["Rules"] as? [String: Any?] {
                        var model = DescribeVServerGroupsResponseBody.VServerGroups.VServerGroup.AssociatedObjects.Rules()
                        model.fromMap(value)
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Tag"] as? [Any?] {
                        var tmp : [DescribeVServerGroupsResponseBody.VServerGroups.VServerGroup.Tags.Tag] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeVServerGroupsResponseBody.VServerGroups.VServerGroup.Tags.Tag()
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AssociatedObjects"] as? [String: Any?] {
                    var model = DescribeVServerGroupsResponseBody.VServerGroups.VServerGroup.AssociatedObjects()
                    model.fromMap(value)
                    self.associatedObjects = model
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["ServerCount"] as? Int64 {
                    self.serverCount = value
                }
                if let value = dict["Tags"] as? [String: Any?] {
                    var model = DescribeVServerGroupsResponseBody.VServerGroups.VServerGroup.Tags()
                    model.fromMap(value)
                    self.tags = model
                }
                if let value = dict["VServerGroupId"] as? String {
                    self.VServerGroupId = value
                }
                if let value = dict["VServerGroupName"] as? String {
                    self.VServerGroupName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["VServerGroup"] as? [Any?] {
                var tmp : [DescribeVServerGroupsResponseBody.VServerGroups.VServerGroup] = []
                for v in value {
                    if v != nil {
                        var model = DescribeVServerGroupsResponseBody.VServerGroups.VServerGroup()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["VServerGroups"] as? [String: Any?] {
            var model = DescribeVServerGroupsResponseBody.VServerGroups()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeVServerGroupsResponseBody()
            model.fromMap(value)
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["LocalName"] as? String {
                            self.localName = value
                        }
                        if let value = dict["ZoneId"] as? String {
                            self.zoneId = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["SlaveZone"] as? [Any?] {
                        var tmp : [DescribeZonesResponseBody.Zones.Zone.SlaveZones.SlaveZone] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeZonesResponseBody.Zones.Zone.SlaveZones.SlaveZone()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["LocalName"] as? String {
                    self.localName = value
                }
                if let value = dict["SlaveZones"] as? [String: Any?] {
                    var model = DescribeZonesResponseBody.Zones.Zone.SlaveZones()
                    model.fromMap(value)
                    self.slaveZones = model
                }
                if let value = dict["ZoneId"] as? String {
                    self.zoneId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Zone"] as? [Any?] {
                var tmp : [DescribeZonesResponseBody.Zones.Zone] = []
                for v in value {
                    if v != nil {
                        var model = DescribeZonesResponseBody.Zones.Zone()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Zones"] as? [String: Any?] {
            var model = DescribeZonesResponseBody.Zones()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeZonesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LogProject"] as? String {
            self.logProject = value
        }
        if let value = dict["LogStore"] as? String {
            self.logStore = value
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
        if let value = dict["Tags"] as? String {
            self.tags = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = EnableHighDefinationMonitorResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IncludeListener"] as? Bool {
            self.includeListener = value
        }
        if let value = dict["MaxItems"] as? Int32 {
            self.maxItems = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
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
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["TLSCipherPolicyId"] as? String {
            self.TLSCipherPolicyId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["LoadBalancerId"] as? String {
                    self.loadBalancerId = value
                }
                if let value = dict["Port"] as? Int32 {
                    self.port = value
                }
                if let value = dict["Protocol"] as? String {
                    self.protocol_ = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Ciphers"] as? [String] {
                self.ciphers = value
            }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["RelateListeners"] as? [Any?] {
                var tmp : [ListTLSCipherPoliciesResponseBody.TLSCipherPolicies.RelateListeners] = []
                for v in value {
                    if v != nil {
                        var model = ListTLSCipherPoliciesResponseBody.TLSCipherPolicies.RelateListeners()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.relateListeners = tmp
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TLSVersions"] as? [String] {
                self.TLSVersions = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsTruncated"] as? Bool {
            self.isTruncated = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TLSCipherPolicies"] as? [Any?] {
            var tmp : [ListTLSCipherPoliciesResponseBody.TLSCipherPolicies] = []
            for v in value {
                if v != nil {
                    var model = ListTLSCipherPoliciesResponseBody.TLSCipherPolicies()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.TLSCipherPolicies = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListTLSCipherPoliciesResponseBody()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LogProject"] as? String {
            self.logProject = value
        }
        if let value = dict["LogStore"] as? String {
            self.logStore = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyHighDefinationMonitorResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Bandwidth"] as? Int32 {
            self.bandwidth = value
        }
        if let value = dict["InstanceChargeType"] as? String {
            self.instanceChargeType = value
        }
        if let value = dict["InternetChargeType"] as? String {
            self.internetChargeType = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["LoadBalancerSpec"] as? String {
            self.loadBalancerSpec = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyLoadBalancerInstanceChargeTypeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoPay"] as? Bool {
            self.autoPay = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["LoadBalancerSpec"] as? String {
            self.loadBalancerSpec = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyLoadBalancerInstanceSpecResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoPay"] as? Bool {
            self.autoPay = value
        }
        if let value = dict["Bandwidth"] as? Int32 {
            self.bandwidth = value
        }
        if let value = dict["InternetChargeType"] as? String {
            self.internetChargeType = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyLoadBalancerInternetSpecResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoPay"] as? Bool {
            self.autoPay = value
        }
        if let value = dict["Duration"] as? Int32 {
            self.duration = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
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
        if let value = dict["PricingCycle"] as? String {
            self.pricingCycle = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyLoadBalancerPayTypeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NewBackendServers"] as? String {
            self.newBackendServers = value
        }
        if let value = dict["OldBackendServers"] as? String {
            self.oldBackendServers = value
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
        if let value = dict["VServerGroupId"] as? String {
            self.VServerGroupId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["Port"] as? Int32 {
                    self.port = value
                }
                if let value = dict["ServerId"] as? String {
                    self.serverId = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["Weight"] as? Int32 {
                    self.weight = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackendServer"] as? [Any?] {
                var tmp : [ModifyVServerGroupBackendServersResponseBody.BackendServers.BackendServer] = []
                for v in value {
                    if v != nil {
                        var model = ModifyVServerGroupBackendServersResponseBody.BackendServers.BackendServer()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackendServers"] as? [String: Any?] {
            var model = ModifyVServerGroupBackendServersResponseBody.BackendServers()
            model.fromMap(value)
            self.backendServers = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["VServerGroupId"] as? String {
            self.VServerGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyVServerGroupBackendServersResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NewResourceGroupId"] as? String {
            self.newResourceGroupId = value
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
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceId"] as? String {
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
        if let value = dict["access_key_id"] as? String {
            self.accessKeyId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclEntrys"] as? String {
            self.aclEntrys = value
        }
        if let value = dict["AclId"] as? String {
            self.aclId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RemoveAccessControlListEntryResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackendServers"] as? String {
            self.backendServers = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["ServerId"] as? String {
                    self.serverId = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["Weight"] as? Int32 {
                    self.weight = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackendServer"] as? [Any?] {
                var tmp : [RemoveBackendServersResponseBody.BackendServers.BackendServer] = []
                for v in value {
                    if v != nil {
                        var model = RemoveBackendServersResponseBody.BackendServers.BackendServer()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackendServers"] as? [String: Any?] {
            var model = RemoveBackendServersResponseBody.BackendServers()
            model.fromMap(value)
            self.backendServers = model
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RemoveBackendServersResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ListenerPort"] as? Int32 {
            self.listenerPort = value
        }
        if let value = dict["ListenerProtocol"] as? String {
            self.listenerProtocol = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
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
        if let value = dict["SourceItems"] as? String {
            self.sourceItems = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RemoveListenerWhiteListItemResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
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
        if let value = dict["Tags"] as? String {
            self.tags = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RemoveTagsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackendServers"] as? String {
            self.backendServers = value
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
        if let value = dict["VServerGroupId"] as? String {
            self.VServerGroupId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Port"] as? Int32 {
                    self.port = value
                }
                if let value = dict["ServerId"] as? String {
                    self.serverId = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["Weight"] as? Int32 {
                    self.weight = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackendServer"] as? [Any?] {
                var tmp : [RemoveVServerGroupBackendServersResponseBody.BackendServers.BackendServer] = []
                for v in value {
                    if v != nil {
                        var model = RemoveVServerGroupBackendServersResponseBody.BackendServers.BackendServer()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackendServers"] as? [String: Any?] {
            var model = RemoveVServerGroupBackendServersResponseBody.BackendServers()
            model.fromMap(value)
            self.backendServers = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["VServerGroupId"] as? String {
            self.VServerGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RemoveVServerGroupBackendServersResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclId"] as? String {
            self.aclId = value
        }
        if let value = dict["AclName"] as? String {
            self.aclName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetAccessControlListAttributeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["LogsDownloadAttributes"] as? String {
            self.logsDownloadAttributes = value
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
        if let value = dict["Tags"] as? String {
            self.tags = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetAccessLogsDownloadAttributeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackendServers"] as? String {
            self.backendServers = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["ServerId"] as? String {
                    self.serverId = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["Weight"] as? String {
                    self.weight = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackendServer"] as? [Any?] {
                var tmp : [SetBackendServersResponseBody.BackendServers.BackendServer] = []
                for v in value {
                    if v != nil {
                        var model = SetBackendServersResponseBody.BackendServers.BackendServer()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackendServers"] as? [String: Any?] {
            var model = SetBackendServersResponseBody.BackendServers()
            model.fromMap(value)
            self.backendServers = model
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetBackendServersResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CACertificateId"] as? String {
            self.CACertificateId = value
        }
        if let value = dict["CACertificateName"] as? String {
            self.CACertificateName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetCACertificateNameResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DomainExtensionId"] as? String {
            self.domainExtensionId = value
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
        if let value = dict["ServerCertificateId"] as? String {
            self.serverCertificateId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetDomainExtensionAttributeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessControlStatus"] as? String {
            self.accessControlStatus = value
        }
        if let value = dict["ListenerPort"] as? Int32 {
            self.listenerPort = value
        }
        if let value = dict["ListenerProtocol"] as? String {
            self.listenerProtocol = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetListenerAccessControlStatusResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DeleteProtection"] as? String {
            self.deleteProtection = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetLoadBalancerDeleteProtectionResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclId"] as? String {
            self.aclId = value
        }
        if let value = dict["AclStatus"] as? String {
            self.aclStatus = value
        }
        if let value = dict["AclType"] as? String {
            self.aclType = value
        }
        if let value = dict["Bandwidth"] as? Int32 {
            self.bandwidth = value
        }
        if let value = dict["Cookie"] as? String {
            self.cookie = value
        }
        if let value = dict["CookieTimeout"] as? Int32 {
            self.cookieTimeout = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Gzip"] as? String {
            self.gzip = value
        }
        if let value = dict["HealthCheck"] as? String {
            self.healthCheck = value
        }
        if let value = dict["HealthCheckConnectPort"] as? Int32 {
            self.healthCheckConnectPort = value
        }
        if let value = dict["HealthCheckDomain"] as? String {
            self.healthCheckDomain = value
        }
        if let value = dict["HealthCheckHttpCode"] as? String {
            self.healthCheckHttpCode = value
        }
        if let value = dict["HealthCheckInterval"] as? Int32 {
            self.healthCheckInterval = value
        }
        if let value = dict["HealthCheckMethod"] as? String {
            self.healthCheckMethod = value
        }
        if let value = dict["HealthCheckTimeout"] as? Int32 {
            self.healthCheckTimeout = value
        }
        if let value = dict["HealthCheckURI"] as? String {
            self.healthCheckURI = value
        }
        if let value = dict["HealthyThreshold"] as? Int32 {
            self.healthyThreshold = value
        }
        if let value = dict["IdleTimeout"] as? Int32 {
            self.idleTimeout = value
        }
        if let value = dict["ListenerPort"] as? Int32 {
            self.listenerPort = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
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
        if let value = dict["RequestTimeout"] as? Int32 {
            self.requestTimeout = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Scheduler"] as? String {
            self.scheduler = value
        }
        if let value = dict["StickySession"] as? String {
            self.stickySession = value
        }
        if let value = dict["StickySessionType"] as? String {
            self.stickySessionType = value
        }
        if let value = dict["UnhealthyThreshold"] as? Int32 {
            self.unhealthyThreshold = value
        }
        if let value = dict["VServerGroup"] as? String {
            self.VServerGroup = value
        }
        if let value = dict["VServerGroupId"] as? String {
            self.VServerGroupId = value
        }
        if let value = dict["XForwardedFor"] as? String {
            self.XForwardedFor = value
        }
        if let value = dict["XForwardedFor_ClientSrcPort"] as? String {
            self.XForwardedFor_ClientSrcPort = value
        }
        if let value = dict["XForwardedFor_SLBID"] as? String {
            self.XForwardedFor_SLBID = value
        }
        if let value = dict["XForwardedFor_SLBIP"] as? String {
            self.XForwardedFor_SLBIP = value
        }
        if let value = dict["XForwardedFor_SLBPORT"] as? String {
            self.XForwardedFor_SLBPORT = value
        }
        if let value = dict["XForwardedFor_proto"] as? String {
            self.XForwardedFor_proto = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetLoadBalancerHTTPListenerAttributeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclId"] as? String {
            self.aclId = value
        }
        if let value = dict["AclStatus"] as? String {
            self.aclStatus = value
        }
        if let value = dict["AclType"] as? String {
            self.aclType = value
        }
        if let value = dict["Bandwidth"] as? Int32 {
            self.bandwidth = value
        }
        if let value = dict["CACertificateId"] as? String {
            self.CACertificateId = value
        }
        if let value = dict["Cookie"] as? String {
            self.cookie = value
        }
        if let value = dict["CookieTimeout"] as? Int32 {
            self.cookieTimeout = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["EnableHttp2"] as? String {
            self.enableHttp2 = value
        }
        if let value = dict["Gzip"] as? String {
            self.gzip = value
        }
        if let value = dict["HealthCheck"] as? String {
            self.healthCheck = value
        }
        if let value = dict["HealthCheckConnectPort"] as? Int32 {
            self.healthCheckConnectPort = value
        }
        if let value = dict["HealthCheckDomain"] as? String {
            self.healthCheckDomain = value
        }
        if let value = dict["HealthCheckHttpCode"] as? String {
            self.healthCheckHttpCode = value
        }
        if let value = dict["HealthCheckInterval"] as? Int32 {
            self.healthCheckInterval = value
        }
        if let value = dict["HealthCheckMethod"] as? String {
            self.healthCheckMethod = value
        }
        if let value = dict["HealthCheckTimeout"] as? Int32 {
            self.healthCheckTimeout = value
        }
        if let value = dict["HealthCheckURI"] as? String {
            self.healthCheckURI = value
        }
        if let value = dict["HealthyThreshold"] as? Int32 {
            self.healthyThreshold = value
        }
        if let value = dict["IdleTimeout"] as? Int32 {
            self.idleTimeout = value
        }
        if let value = dict["ListenerPort"] as? Int32 {
            self.listenerPort = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
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
        if let value = dict["RequestTimeout"] as? Int32 {
            self.requestTimeout = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Scheduler"] as? String {
            self.scheduler = value
        }
        if let value = dict["ServerCertificateId"] as? String {
            self.serverCertificateId = value
        }
        if let value = dict["StickySession"] as? String {
            self.stickySession = value
        }
        if let value = dict["StickySessionType"] as? String {
            self.stickySessionType = value
        }
        if let value = dict["TLSCipherPolicy"] as? String {
            self.TLSCipherPolicy = value
        }
        if let value = dict["UnhealthyThreshold"] as? Int32 {
            self.unhealthyThreshold = value
        }
        if let value = dict["VServerGroup"] as? String {
            self.VServerGroup = value
        }
        if let value = dict["VServerGroupId"] as? String {
            self.VServerGroupId = value
        }
        if let value = dict["XForwardedFor"] as? String {
            self.XForwardedFor = value
        }
        if let value = dict["XForwardedFor_ClientSrcPort"] as? String {
            self.XForwardedFor_ClientSrcPort = value
        }
        if let value = dict["XForwardedFor_SLBID"] as? String {
            self.XForwardedFor_SLBID = value
        }
        if let value = dict["XForwardedFor_SLBIP"] as? String {
            self.XForwardedFor_SLBIP = value
        }
        if let value = dict["XForwardedFor_SLBPORT"] as? String {
            self.XForwardedFor_SLBPORT = value
        }
        if let value = dict["XForwardedFor_proto"] as? String {
            self.XForwardedFor_proto = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetLoadBalancerHTTPSListenerAttributeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["ModificationProtectionReason"] as? String {
            self.modificationProtectionReason = value
        }
        if let value = dict["ModificationProtectionStatus"] as? String {
            self.modificationProtectionStatus = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetLoadBalancerModificationProtectionResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["LoadBalancerName"] as? String {
            self.loadBalancerName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetLoadBalancerNameResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["LoadBalancerStatus"] as? String {
            self.loadBalancerStatus = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetLoadBalancerStatusResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclId"] as? String {
            self.aclId = value
        }
        if let value = dict["AclStatus"] as? String {
            self.aclStatus = value
        }
        if let value = dict["AclType"] as? String {
            self.aclType = value
        }
        if let value = dict["Bandwidth"] as? Int32 {
            self.bandwidth = value
        }
        if let value = dict["ConnectionDrain"] as? String {
            self.connectionDrain = value
        }
        if let value = dict["ConnectionDrainTimeout"] as? Int32 {
            self.connectionDrainTimeout = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["EstablishedTimeout"] as? Int32 {
            self.establishedTimeout = value
        }
        if let value = dict["HealthCheckConnectPort"] as? Int32 {
            self.healthCheckConnectPort = value
        }
        if let value = dict["HealthCheckConnectTimeout"] as? Int32 {
            self.healthCheckConnectTimeout = value
        }
        if let value = dict["HealthCheckDomain"] as? String {
            self.healthCheckDomain = value
        }
        if let value = dict["HealthCheckHttpCode"] as? String {
            self.healthCheckHttpCode = value
        }
        if let value = dict["HealthCheckInterval"] as? Int32 {
            self.healthCheckInterval = value
        }
        if let value = dict["HealthCheckSwitch"] as? String {
            self.healthCheckSwitch = value
        }
        if let value = dict["HealthCheckType"] as? String {
            self.healthCheckType = value
        }
        if let value = dict["HealthCheckURI"] as? String {
            self.healthCheckURI = value
        }
        if let value = dict["HealthyThreshold"] as? Int32 {
            self.healthyThreshold = value
        }
        if let value = dict["ListenerPort"] as? Int32 {
            self.listenerPort = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["MasterSlaveServerGroup"] as? String {
            self.masterSlaveServerGroup = value
        }
        if let value = dict["MasterSlaveServerGroupId"] as? String {
            self.masterSlaveServerGroupId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PersistenceTimeout"] as? Int32 {
            self.persistenceTimeout = value
        }
        if let value = dict["ProxyProtocolV2Enabled"] as? Bool {
            self.proxyProtocolV2Enabled = value
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
        if let value = dict["Scheduler"] as? String {
            self.scheduler = value
        }
        if let value = dict["SynProxy"] as? String {
            self.synProxy = value
        }
        if let value = dict["UnhealthyThreshold"] as? Int32 {
            self.unhealthyThreshold = value
        }
        if let value = dict["VServerGroup"] as? String {
            self.VServerGroup = value
        }
        if let value = dict["VServerGroupId"] as? String {
            self.VServerGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetLoadBalancerTCPListenerAttributeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclId"] as? String {
            self.aclId = value
        }
        if let value = dict["AclStatus"] as? String {
            self.aclStatus = value
        }
        if let value = dict["AclType"] as? String {
            self.aclType = value
        }
        if let value = dict["Bandwidth"] as? Int32 {
            self.bandwidth = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["HealthCheckConnectPort"] as? Int32 {
            self.healthCheckConnectPort = value
        }
        if let value = dict["HealthCheckConnectTimeout"] as? Int32 {
            self.healthCheckConnectTimeout = value
        }
        if let value = dict["HealthCheckInterval"] as? Int32 {
            self.healthCheckInterval = value
        }
        if let value = dict["HealthCheckSwitch"] as? String {
            self.healthCheckSwitch = value
        }
        if let value = dict["HealthyThreshold"] as? Int32 {
            self.healthyThreshold = value
        }
        if let value = dict["ListenerPort"] as? Int32 {
            self.listenerPort = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
        }
        if let value = dict["MasterSlaveServerGroup"] as? String {
            self.masterSlaveServerGroup = value
        }
        if let value = dict["MasterSlaveServerGroupId"] as? String {
            self.masterSlaveServerGroupId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ProxyProtocolV2Enabled"] as? Bool {
            self.proxyProtocolV2Enabled = value
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
        if let value = dict["Scheduler"] as? String {
            self.scheduler = value
        }
        if let value = dict["UnhealthyThreshold"] as? Int32 {
            self.unhealthyThreshold = value
        }
        if let value = dict["VServerGroup"] as? String {
            self.VServerGroup = value
        }
        if let value = dict["VServerGroupId"] as? String {
            self.VServerGroupId = value
        }
        if let value = dict["healthCheckExp"] as? String {
            self.healthCheckExp = value
        }
        if let value = dict["healthCheckReq"] as? String {
            self.healthCheckReq = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetLoadBalancerUDPListenerAttributeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Cookie"] as? String {
            self.cookie = value
        }
        if let value = dict["CookieTimeout"] as? Int32 {
            self.cookieTimeout = value
        }
        if let value = dict["HealthCheck"] as? String {
            self.healthCheck = value
        }
        if let value = dict["HealthCheckConnectPort"] as? Int32 {
            self.healthCheckConnectPort = value
        }
        if let value = dict["HealthCheckDomain"] as? String {
            self.healthCheckDomain = value
        }
        if let value = dict["HealthCheckHttpCode"] as? String {
            self.healthCheckHttpCode = value
        }
        if let value = dict["HealthCheckInterval"] as? Int32 {
            self.healthCheckInterval = value
        }
        if let value = dict["HealthCheckTimeout"] as? Int32 {
            self.healthCheckTimeout = value
        }
        if let value = dict["HealthCheckURI"] as? String {
            self.healthCheckURI = value
        }
        if let value = dict["HealthyThreshold"] as? Int32 {
            self.healthyThreshold = value
        }
        if let value = dict["ListenerSync"] as? String {
            self.listenerSync = value
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
        if let value = dict["RuleId"] as? String {
            self.ruleId = value
        }
        if let value = dict["RuleName"] as? String {
            self.ruleName = value
        }
        if let value = dict["Scheduler"] as? String {
            self.scheduler = value
        }
        if let value = dict["StickySession"] as? String {
            self.stickySession = value
        }
        if let value = dict["StickySessionType"] as? String {
            self.stickySessionType = value
        }
        if let value = dict["UnhealthyThreshold"] as? Int32 {
            self.unhealthyThreshold = value
        }
        if let value = dict["VServerGroupId"] as? String {
            self.VServerGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetRuleResponseBody()
            model.fromMap(value)
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
        if let value = dict["ServerCertificateId"] as? String {
            self.serverCertificateId = value
        }
        if let value = dict["ServerCertificateName"] as? String {
            self.serverCertificateName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetServerCertificateNameResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Ciphers"] as? [String] {
            self.ciphers = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
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
        if let value = dict["TLSCipherPolicyId"] as? String {
            self.TLSCipherPolicyId = value
        }
        if let value = dict["TLSVersions"] as? [String] {
            self.TLSVersions = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetTLSCipherPolicyAttributeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackendServers"] as? String {
            self.backendServers = value
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
        if let value = dict["VServerGroupId"] as? String {
            self.VServerGroupId = value
        }
        if let value = dict["VServerGroupName"] as? String {
            self.VServerGroupName = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["Port"] as? Int32 {
                    self.port = value
                }
                if let value = dict["ServerId"] as? String {
                    self.serverId = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["Weight"] as? Int32 {
                    self.weight = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackendServer"] as? [Any?] {
                var tmp : [SetVServerGroupAttributeResponseBody.BackendServers.BackendServer] = []
                for v in value {
                    if v != nil {
                        var model = SetVServerGroupAttributeResponseBody.BackendServers.BackendServer()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackendServers"] as? [String: Any?] {
            var model = SetVServerGroupAttributeResponseBody.BackendServers()
            model.fromMap(value)
            self.backendServers = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["VServerGroupId"] as? String {
            self.VServerGroupId = value
        }
        if let value = dict["VServerGroupName"] as? String {
            self.VServerGroupName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SetVServerGroupAttributeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ListenerPort"] as? Int32 {
            self.listenerPort = value
        }
        if let value = dict["ListenerProtocol"] as? String {
            self.listenerProtocol = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StartLoadBalancerListenerResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ListenerPort"] as? Int32 {
            self.listenerPort = value
        }
        if let value = dict["ListenerProtocol"] as? String {
            self.listenerProtocol = value
        }
        if let value = dict["LoadBalancerId"] as? String {
            self.loadBalancerId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StopLoadBalancerListenerResponseBody()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CACertificate"] as? String {
            self.CACertificate = value
        }
        if let value = dict["CACertificateName"] as? String {
            self.CACertificateName = value
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
            var tmp : [UploadCACertificateRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = UploadCACertificateRequest.Tag()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CACertificateId"] as? String {
            self.CACertificateId = value
        }
        if let value = dict["CACertificateName"] as? String {
            self.CACertificateName = value
        }
        if let value = dict["CommonName"] as? String {
            self.commonName = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["CreateTimeStamp"] as? Int64 {
            self.createTimeStamp = value
        }
        if let value = dict["ExpireTime"] as? String {
            self.expireTime = value
        }
        if let value = dict["ExpireTimeStamp"] as? Int64 {
            self.expireTimeStamp = value
        }
        if let value = dict["Fingerprint"] as? String {
            self.fingerprint = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UploadCACertificateResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliCloudCertificateId"] as? String {
            self.aliCloudCertificateId = value
        }
        if let value = dict["AliCloudCertificateName"] as? String {
            self.aliCloudCertificateName = value
        }
        if let value = dict["AliCloudCertificateRegionId"] as? String {
            self.aliCloudCertificateRegionId = value
        }
        if let value = dict["OwnerAccount"] as? String {
            self.ownerAccount = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PrivateKey"] as? String {
            self.privateKey = value
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
        if let value = dict["ServerCertificate"] as? String {
            self.serverCertificate = value
        }
        if let value = dict["ServerCertificateName"] as? String {
            self.serverCertificateName = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [UploadServerCertificateRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = UploadServerCertificateRequest.Tag()
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SubjectAlternativeName"] as? [String] {
                self.subjectAlternativeName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliCloudCertificateId"] as? String {
            self.aliCloudCertificateId = value
        }
        if let value = dict["AliCloudCertificateName"] as? String {
            self.aliCloudCertificateName = value
        }
        if let value = dict["CommonName"] as? String {
            self.commonName = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["CreateTimeStamp"] as? Int64 {
            self.createTimeStamp = value
        }
        if let value = dict["ExpireTime"] as? String {
            self.expireTime = value
        }
        if let value = dict["ExpireTimeStamp"] as? Int64 {
            self.expireTimeStamp = value
        }
        if let value = dict["Fingerprint"] as? String {
            self.fingerprint = value
        }
        if let value = dict["IsAliCloudCertificate"] as? Int32 {
            self.isAliCloudCertificate = value
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
        if let value = dict["ServerCertificateId"] as? String {
            self.serverCertificateId = value
        }
        if let value = dict["ServerCertificateName"] as? String {
            self.serverCertificateName = value
        }
        if let value = dict["SubjectAlternativeNames"] as? [String: Any?] {
            var model = UploadServerCertificateResponseBody.SubjectAlternativeNames()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UploadServerCertificateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
